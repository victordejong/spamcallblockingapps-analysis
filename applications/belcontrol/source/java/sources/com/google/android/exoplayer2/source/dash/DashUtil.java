package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer2.source.chunk.InitializationChunk;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DashUtil.class */
public final class DashUtil {
    private DashUtil() {
    }

    private static Representation getFirstRepresentation(Period period, int i) {
        int adaptationSetIndex = period.getAdaptationSetIndex(i);
        if (adaptationSetIndex == -1) {
            return null;
        }
        List<Representation> list = period.adaptationSets.get(adaptationSetIndex).representations;
        return list.isEmpty() ? null : list.get(0);
    }

    public static ChunkIndex loadChunkIndex(DataSource dataSource, int i, Representation representation) {
        ChunkExtractorWrapper loadInitializationData = loadInitializationData(dataSource, i, representation, true);
        return loadInitializationData == null ? null : (ChunkIndex) loadInitializationData.getSeekMap();
    }

    public static DrmInitData loadDrmInitData(DataSource dataSource, Period period) {
        int i = 2;
        Representation firstRepresentation = getFirstRepresentation(period, 2);
        Representation representation = firstRepresentation;
        if (firstRepresentation == null) {
            i = 1;
            Representation firstRepresentation2 = getFirstRepresentation(period, 1);
            representation = firstRepresentation2;
            if (firstRepresentation2 == null) {
                return null;
            }
        }
        Format format = representation.format;
        Format loadSampleFormat = loadSampleFormat(dataSource, i, representation);
        return loadSampleFormat == null ? format.drmInitData : loadSampleFormat.copyWithManifestFormatInfo(format).drmInitData;
    }

    private static ChunkExtractorWrapper loadInitializationData(DataSource dataSource, int i, Representation representation, boolean z) {
        RangedUri initializationUri = representation.getInitializationUri();
        if (initializationUri == null) {
            return null;
        }
        ChunkExtractorWrapper newWrappedExtractor = newWrappedExtractor(i, representation.format);
        RangedUri rangedUri = initializationUri;
        if (z) {
            RangedUri indexUri = representation.getIndexUri();
            if (indexUri == null) {
                return null;
            }
            rangedUri = initializationUri.attemptMerge(indexUri, representation.baseUrl);
            if (rangedUri == null) {
                loadInitializationData(dataSource, representation, newWrappedExtractor, initializationUri);
                rangedUri = indexUri;
            }
        }
        loadInitializationData(dataSource, representation, newWrappedExtractor, rangedUri);
        return newWrappedExtractor;
    }

    private static void loadInitializationData(DataSource dataSource, Representation representation, ChunkExtractorWrapper chunkExtractorWrapper, RangedUri rangedUri) {
        new InitializationChunk(dataSource, new DataSpec(rangedUri.resolveUri(representation.baseUrl), rangedUri.start, rangedUri.length, representation.getCacheKey()), representation.format, 0, (Object) null, chunkExtractorWrapper).load();
    }

    public static DashManifest loadManifest(DataSource dataSource, Uri uri) {
        return (DashManifest) ParsingLoadable.load(dataSource, new DashManifestParser(), uri);
    }

    public static Format loadSampleFormat(DataSource dataSource, int i, Representation representation) {
        ChunkExtractorWrapper loadInitializationData = loadInitializationData(dataSource, i, representation, false);
        return loadInitializationData == null ? null : loadInitializationData.getSampleFormats()[0];
    }

    private static ChunkExtractorWrapper newWrappedExtractor(int i, Format format) {
        String str = format.containerMimeType;
        return new ChunkExtractorWrapper(str != null && (str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM)) ? new MatroskaExtractor() : new FragmentedMp4Extractor(), i, format);
    }
}
