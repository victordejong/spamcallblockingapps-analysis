package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.android.exoplayer2.extractor.rawcc.RawCcExtractor;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder.class */
public final class DefaultDashChunkSource$RepresentationHolder {
    public final ChunkExtractorWrapper extractorWrapper;
    private long periodDurationUs;
    public Representation representation;
    public DashSegmentIndex segmentIndex;
    private long segmentNumShift;

    public DefaultDashChunkSource$RepresentationHolder(long j, int i, Representation representation, boolean z, boolean z2, TrackOutput trackOutput) {
        Extractor extractor;
        this.periodDurationUs = j;
        this.representation = representation;
        String str = representation.format.containerMimeType;
        if (mimeTypeIsRawText(str)) {
            this.extractorWrapper = null;
        } else {
            if (MimeTypes.APPLICATION_RAWCC.equals(str)) {
                extractor = new RawCcExtractor(representation.format);
            } else if (mimeTypeIsWebm(str)) {
                extractor = new MatroskaExtractor(1);
            } else {
                extractor = new FragmentedMp4Extractor(z ? 4 : 0, (TimestampAdjuster) null, (Track) null, (DrmInitData) null, z2 ? Collections.singletonList(Format.createTextSampleFormat(null, MimeTypes.APPLICATION_CEA608, 0, null)) : Collections.emptyList(), trackOutput);
            }
            this.extractorWrapper = new ChunkExtractorWrapper(extractor, i, representation.format);
        }
        this.segmentIndex = representation.getIndex();
    }

    private static boolean mimeTypeIsRawText(String str) {
        return MimeTypes.isText(str) || MimeTypes.APPLICATION_TTML.equals(str);
    }

    private static boolean mimeTypeIsWebm(String str) {
        return str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM) || str.startsWith(MimeTypes.APPLICATION_WEBM);
    }

    public long getFirstSegmentNum() {
        return this.segmentIndex.getFirstSegmentNum() + this.segmentNumShift;
    }

    public int getSegmentCount() {
        return this.segmentIndex.getSegmentCount(this.periodDurationUs);
    }

    public long getSegmentEndTimeUs(long j) {
        return getSegmentStartTimeUs(j) + this.segmentIndex.getDurationUs(j - this.segmentNumShift, this.periodDurationUs);
    }

    public long getSegmentNum(long j) {
        return this.segmentIndex.getSegmentNum(j, this.periodDurationUs) + this.segmentNumShift;
    }

    public long getSegmentStartTimeUs(long j) {
        return this.segmentIndex.getTimeUs(j - this.segmentNumShift);
    }

    public RangedUri getSegmentUrl(long j) {
        return this.segmentIndex.getSegmentUrl(j - this.segmentNumShift);
    }

    public void updateRepresentation(long j, Representation representation) {
        int segmentCount;
        DashSegmentIndex index = this.representation.getIndex();
        DashSegmentIndex index2 = representation.getIndex();
        this.periodDurationUs = j;
        this.representation = representation;
        if (index == null) {
            return;
        }
        this.segmentIndex = index2;
        if (!index.isExplicit() || (segmentCount = index.getSegmentCount(this.periodDurationUs)) == 0) {
            return;
        }
        long firstSegmentNum = (index.getFirstSegmentNum() + segmentCount) - 1;
        long timeUs = index.getTimeUs(firstSegmentNum);
        long durationUs = index.getDurationUs(firstSegmentNum, this.periodDurationUs);
        long firstSegmentNum2 = index2.getFirstSegmentNum();
        long timeUs2 = index2.getTimeUs(firstSegmentNum2);
        int i = ((timeUs + durationUs) > timeUs2 ? 1 : ((timeUs + durationUs) == timeUs2 ? 0 : -1));
        if (i == 0) {
            this.segmentNumShift += (firstSegmentNum + 1) - firstSegmentNum2;
        } else if (i < 0) {
            throw new BehindLiveWindowException();
        } else {
            this.segmentNumShift += index.getSegmentNum(timeUs2, this.periodDurationUs) - firstSegmentNum2;
        }
    }
}
