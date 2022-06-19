package com.google.android.exoplayer2.extractor.p004ts;

import com.google.android.exoplayer2.extractor.TrackOutput;
/* renamed from: com.google.android.exoplayer2.extractor.ts.H265Reader$SampleReader */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader.class */
public final class H265Reader$SampleReader {
    private static final int FIRST_SLICE_FLAG_OFFSET = 2;
    private boolean isFirstParameterSet;
    private boolean isFirstSlice;
    private boolean lookingForFirstSliceFlag;
    private int nalUnitBytesRead;
    private boolean nalUnitHasKeyframeData;
    private long nalUnitStartPosition;
    private long nalUnitTimeUs;
    private final TrackOutput output;
    private boolean readingSample;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private boolean writingParameterSets;

    public H265Reader$SampleReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    private void outputSample(int i) {
        boolean z = this.sampleIsKeyframe;
        this.output.sampleMetadata(this.sampleTimeUs, z ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i, null);
    }

    public void endNalUnit(long j, int i) {
        if (this.writingParameterSets && this.isFirstSlice) {
            this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
            this.writingParameterSets = false;
        } else if (!this.isFirstParameterSet && !this.isFirstSlice) {
        } else {
            if (this.readingSample) {
                outputSample(i + ((int) (j - this.nalUnitStartPosition)));
            }
            this.samplePosition = this.nalUnitStartPosition;
            this.sampleTimeUs = this.nalUnitTimeUs;
            this.readingSample = true;
            this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
        }
    }

    public void readNalUnitData(byte[] bArr, int i, int i2) {
        if (this.lookingForFirstSliceFlag) {
            int i3 = this.nalUnitBytesRead;
            int i4 = (i + 2) - i3;
            if (i4 >= i2) {
                this.nalUnitBytesRead = i3 + (i2 - i);
                return;
            }
            this.isFirstSlice = (bArr[i4] & 128) != 0;
            this.lookingForFirstSliceFlag = false;
        }
    }

    public void reset() {
        this.lookingForFirstSliceFlag = false;
        this.isFirstSlice = false;
        this.isFirstParameterSet = false;
        this.readingSample = false;
        this.writingParameterSets = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007c, code lost:
        if (r8 <= 9) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startNalUnit(long r5, int r7, int r8, long r9) {
        /*
            r4 = this;
            r0 = 0
            r11 = r0
            r0 = r4
            r1 = 0
            r0.isFirstSlice = r1
            r0 = r4
            r1 = 0
            r0.isFirstParameterSet = r1
            r0 = r4
            r1 = r9
            r0.nalUnitTimeUs = r1
            r0 = r4
            r1 = 0
            r0.nalUnitBytesRead = r1
            r0 = r4
            r1 = r5
            r0.nalUnitStartPosition = r1
            r0 = r8
            r1 = 32
            if (r0 < r1) goto L52
            r0 = r4
            boolean r0 = r0.writingParameterSets
            if (r0 != 0) goto L3c
            r0 = r4
            boolean r0 = r0.readingSample
            if (r0 == 0) goto L3c
            r0 = r4
            r1 = r7
            r0.outputSample(r1)
            r0 = r4
            r1 = 0
            r0.readingSample = r1
        L3c:
            r0 = r8
            r1 = 34
            if (r0 > r1) goto L52
            r0 = r4
            r1 = r4
            boolean r1 = r1.writingParameterSets
            r2 = 1
            r1 = r1 ^ r2
            r0.isFirstParameterSet = r1
            r0 = r4
            r1 = 1
            r0.writingParameterSets = r1
        L52:
            r0 = r8
            r1 = 16
            if (r0 < r1) goto L66
            r0 = r8
            r1 = 21
            if (r0 > r1) goto L66
            r0 = 1
            r12 = r0
            goto L69
        L66:
            r0 = 0
            r12 = r0
        L69:
            r0 = r4
            r1 = r12
            r0.nalUnitHasKeyframeData = r1
            r0 = r12
            if (r0 != 0) goto L7f
            r0 = r11
            r12 = r0
            r0 = r8
            r1 = 9
            if (r0 > r1) goto L82
        L7f:
            r0 = 1
            r12 = r0
        L82:
            r0 = r4
            r1 = r12
            r0.lookingForFirstSliceFlag = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p004ts.H265Reader$SampleReader.startNalUnit(long, int, int, long):void");
    }
}
