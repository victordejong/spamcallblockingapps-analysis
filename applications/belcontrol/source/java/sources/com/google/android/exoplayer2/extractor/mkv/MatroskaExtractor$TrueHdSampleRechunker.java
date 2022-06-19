package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.extractor.ExtractorInput;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker.class */
public final class MatroskaExtractor$TrueHdSampleRechunker {
    private int blockFlags;
    private int chunkSize;
    private boolean foundSyncframe;
    private int sampleCount;
    private final byte[] syncframePrefix = new byte[10];
    private long timeUs;

    public void outputPendingSampleMetadata(MatroskaExtractor$Track matroskaExtractor$Track) {
        if (!this.foundSyncframe || this.sampleCount <= 0) {
            return;
        }
        matroskaExtractor$Track.output.sampleMetadata(this.timeUs, this.blockFlags, this.chunkSize, 0, matroskaExtractor$Track.cryptoData);
        this.sampleCount = 0;
    }

    public void reset() {
        this.foundSyncframe = false;
    }

    public void sampleMetadata(MatroskaExtractor$Track matroskaExtractor$Track, long j) {
        if (!this.foundSyncframe) {
            return;
        }
        int i = this.sampleCount;
        int i2 = i + 1;
        this.sampleCount = i2;
        if (i == 0) {
            this.timeUs = j;
        }
        if (i2 < 16) {
            return;
        }
        matroskaExtractor$Track.output.sampleMetadata(this.timeUs, this.blockFlags, this.chunkSize, 0, matroskaExtractor$Track.cryptoData);
        this.sampleCount = 0;
    }

    public void startSample(ExtractorInput extractorInput, int i, int i2) {
        if (!this.foundSyncframe) {
            extractorInput.peekFully(this.syncframePrefix, 0, 10);
            extractorInput.resetPeekPosition();
            if (Ac3Util.parseTrueHdSyncframeAudioSampleCount(this.syncframePrefix) == -1) {
                return;
            }
            this.foundSyncframe = true;
            this.sampleCount = 0;
        }
        if (this.sampleCount == 0) {
            this.blockFlags = i;
            this.chunkSize = 0;
        }
        this.chunkSize += i2;
    }
}
