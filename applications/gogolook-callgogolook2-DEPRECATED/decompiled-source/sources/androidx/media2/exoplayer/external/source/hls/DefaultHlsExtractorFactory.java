package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor;
import androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor;
import androidx.media2.exoplayer.external.extractor.p007ts.Ac3Extractor;
import androidx.media2.exoplayer.external.extractor.p007ts.Ac4Extractor;
import androidx.media2.exoplayer.external.extractor.p007ts.AdtsExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.DefaultTsPayloadReaderFactory;
import androidx.media2.exoplayer.external.extractor.p007ts.TsExtractor;
import androidx.media2.exoplayer.external.source.hls.HlsExtractorFactory;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import java.io.EOFException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory.class */
public final class DefaultHlsExtractorFactory implements HlsExtractorFactory {
    public static final String AAC_FILE_EXTENSION = ".aac";
    public static final String AC3_FILE_EXTENSION = ".ac3";
    public static final String AC4_FILE_EXTENSION = ".ac4";
    public static final String CMF_FILE_EXTENSION_PREFIX = ".cmf";
    public static final String EC3_FILE_EXTENSION = ".ec3";
    public static final String M4_FILE_EXTENSION_PREFIX = ".m4";
    public static final String MP3_FILE_EXTENSION = ".mp3";
    public static final String MP4_FILE_EXTENSION = ".mp4";
    public static final String MP4_FILE_EXTENSION_PREFIX = ".mp4";
    public static final String VTT_FILE_EXTENSION = ".vtt";
    public static final String WEBVTT_FILE_EXTENSION = ".webvtt";
    public final boolean exposeCea608WhenMissingDeclarations;
    public final int payloadReaderFactoryFlags;

    public DefaultHlsExtractorFactory() {
        this(0, true);
    }

    public DefaultHlsExtractorFactory(int i, boolean z) {
        this.payloadReaderFactoryFlags = i;
        this.exposeCea608WhenMissingDeclarations = z;
    }

    public static HlsExtractorFactory.Result buildResult(Extractor extractor) {
        return new HlsExtractorFactory.Result(extractor, (extractor instanceof AdtsExtractor) || (extractor instanceof Ac3Extractor) || (extractor instanceof Ac4Extractor) || (extractor instanceof Mp3Extractor), isReusable(extractor));
    }

    public static HlsExtractorFactory.Result buildResultForSameExtractorType(Extractor extractor, Format format, TimestampAdjuster timestampAdjuster) {
        if (extractor instanceof WebvttExtractor) {
            return buildResult(new WebvttExtractor(format.language, timestampAdjuster));
        }
        if (extractor instanceof AdtsExtractor) {
            return buildResult(new AdtsExtractor());
        }
        if (extractor instanceof Ac3Extractor) {
            return buildResult(new Ac3Extractor());
        }
        if (extractor instanceof Ac4Extractor) {
            return buildResult(new Ac4Extractor());
        }
        if (extractor instanceof Mp3Extractor) {
            return buildResult(new Mp3Extractor());
        }
        return null;
    }

    private Extractor createExtractorByFileExtension(Uri uri, Format format, List<Format> list, DrmInitData drmInitData, TimestampAdjuster timestampAdjuster) {
        String lastPathSegment = uri.getLastPathSegment();
        String str = lastPathSegment;
        if (lastPathSegment == null) {
            str = "";
        }
        return ("text/vtt".equals(format.sampleMimeType) || str.endsWith(WEBVTT_FILE_EXTENSION) || str.endsWith(VTT_FILE_EXTENSION)) ? new WebvttExtractor(format.language, timestampAdjuster) : str.endsWith(AAC_FILE_EXTENSION) ? new AdtsExtractor() : (str.endsWith(AC3_FILE_EXTENSION) || str.endsWith(EC3_FILE_EXTENSION)) ? new Ac3Extractor() : str.endsWith(AC4_FILE_EXTENSION) ? new Ac4Extractor() : str.endsWith(MP3_FILE_EXTENSION) ? new Mp3Extractor(0, 0L) : (str.endsWith(".mp4") || str.startsWith(M4_FILE_EXTENSION_PREFIX, str.length() - 4) || str.startsWith(".mp4", str.length() - 5) || str.startsWith(CMF_FILE_EXTENSION_PREFIX, str.length() - 5)) ? createFragmentedMp4Extractor(timestampAdjuster, drmInitData, list) : createTsExtractor(this.payloadReaderFactoryFlags, this.exposeCea608WhenMissingDeclarations, format, list, timestampAdjuster);
    }

    public static FragmentedMp4Extractor createFragmentedMp4Extractor(TimestampAdjuster timestampAdjuster, DrmInitData drmInitData, @Nullable List<Format> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        return new FragmentedMp4Extractor(0, timestampAdjuster, null, drmInitData, list);
    }

    public static TsExtractor createTsExtractor(int i, boolean z, Format format, List<Format> list, TimestampAdjuster timestampAdjuster) {
        int i2 = i | 16;
        if (list != null) {
            i2 |= 32;
        } else {
            list = z ? Collections.singletonList(Format.createTextSampleFormat(null, MimeTypes.APPLICATION_CEA608, 0, null)) : Collections.emptyList();
        }
        String str = format.codecs;
        int i3 = i2;
        if (!TextUtils.isEmpty(str)) {
            int i4 = i2;
            if (!MimeTypes.AUDIO_AAC.equals(MimeTypes.getAudioMediaMimeType(str))) {
                i4 = i2 | 2;
            }
            i3 = i4;
            if (!MimeTypes.VIDEO_H264.equals(MimeTypes.getVideoMediaMimeType(str))) {
                i3 = i4 | 4;
            }
        }
        return new TsExtractor(2, timestampAdjuster, new DefaultTsPayloadReaderFactory(i3, list));
    }

    public static boolean isReusable(Extractor extractor) {
        return (extractor instanceof TsExtractor) || (extractor instanceof FragmentedMp4Extractor);
    }

    /* JADX WARN: Finally extract failed */
    public static boolean sniffQuietly(Extractor extractor, ExtractorInput extractorInput) throws InterruptedException, IOException {
        boolean z;
        try {
            z = extractor.sniff(extractorInput);
            extractorInput.resetPeekPosition();
        } catch (EOFException e) {
            extractorInput.resetPeekPosition();
            z = false;
        } catch (Throwable th) {
            extractorInput.resetPeekPosition();
            throw th;
        }
        return z;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.HlsExtractorFactory
    public HlsExtractorFactory.Result createExtractor(Extractor extractor, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, ExtractorInput extractorInput) throws InterruptedException, IOException {
        if (extractor != null) {
            if (isReusable(extractor)) {
                return buildResult(extractor);
            }
            if (buildResultForSameExtractorType(extractor, format, timestampAdjuster) == null) {
                String valueOf = String.valueOf(extractor.getClass().getSimpleName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unexpected previousExtractor type: ".concat(valueOf) : new String("Unexpected previousExtractor type: "));
            }
        }
        Extractor createExtractorByFileExtension = createExtractorByFileExtension(uri, format, list, drmInitData, timestampAdjuster);
        extractorInput.resetPeekPosition();
        if (sniffQuietly(createExtractorByFileExtension, extractorInput)) {
            return buildResult(createExtractorByFileExtension);
        }
        if (!(createExtractorByFileExtension instanceof WebvttExtractor)) {
            WebvttExtractor webvttExtractor = new WebvttExtractor(format.language, timestampAdjuster);
            if (sniffQuietly(webvttExtractor, extractorInput)) {
                return buildResult(webvttExtractor);
            }
        }
        if (!(createExtractorByFileExtension instanceof AdtsExtractor)) {
            AdtsExtractor adtsExtractor = new AdtsExtractor();
            if (sniffQuietly(adtsExtractor, extractorInput)) {
                return buildResult(adtsExtractor);
            }
        }
        if (!(createExtractorByFileExtension instanceof Ac3Extractor)) {
            Ac3Extractor ac3Extractor = new Ac3Extractor();
            if (sniffQuietly(ac3Extractor, extractorInput)) {
                return buildResult(ac3Extractor);
            }
        }
        if (!(createExtractorByFileExtension instanceof Ac4Extractor)) {
            Ac4Extractor ac4Extractor = new Ac4Extractor();
            if (sniffQuietly(ac4Extractor, extractorInput)) {
                return buildResult(ac4Extractor);
            }
        }
        if (!(createExtractorByFileExtension instanceof Mp3Extractor)) {
            Mp3Extractor mp3Extractor = new Mp3Extractor(0, 0L);
            if (sniffQuietly(mp3Extractor, extractorInput)) {
                return buildResult(mp3Extractor);
            }
        }
        if (!(createExtractorByFileExtension instanceof FragmentedMp4Extractor)) {
            FragmentedMp4Extractor createFragmentedMp4Extractor = createFragmentedMp4Extractor(timestampAdjuster, drmInitData, list);
            if (sniffQuietly(createFragmentedMp4Extractor, extractorInput)) {
                return buildResult(createFragmentedMp4Extractor);
            }
        }
        if (!(createExtractorByFileExtension instanceof TsExtractor)) {
            TsExtractor createTsExtractor = createTsExtractor(this.payloadReaderFactoryFlags, this.exposeCea608WhenMissingDeclarations, format, list, timestampAdjuster);
            if (sniffQuietly(createTsExtractor, extractorInput)) {
                return buildResult(createTsExtractor);
            }
        }
        return buildResult(createExtractorByFileExtension);
    }
}
