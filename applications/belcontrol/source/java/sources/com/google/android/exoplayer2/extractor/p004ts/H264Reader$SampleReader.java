package com.google.android.exoplayer2.extractor.p004ts;

import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableNalUnitBitArray;
/* renamed from: com.google.android.exoplayer2.extractor.ts.H264Reader$SampleReader */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader.class */
public final class H264Reader$SampleReader {
    private static final int DEFAULT_BUFFER_SIZE = 128;
    private static final int NAL_UNIT_TYPE_AUD = 9;
    private static final int NAL_UNIT_TYPE_IDR = 5;
    private static final int NAL_UNIT_TYPE_NON_IDR = 1;
    private static final int NAL_UNIT_TYPE_PARTITION_A = 2;
    private final boolean allowNonIdrKeyframes;
    private final ParsableNalUnitBitArray bitArray;
    private byte[] buffer;
    private int bufferLength;
    private final boolean detectAccessUnits;
    private boolean isFilling;
    private long nalUnitStartPosition;
    private long nalUnitTimeUs;
    private int nalUnitType;
    private final TrackOutput output;
    private boolean readingSample;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private final SparseArray<NalUnitUtil.SpsData> sps = new SparseArray<>();
    private final SparseArray<NalUnitUtil.PpsData> pps = new SparseArray<>();
    private SliceHeaderData previousSliceHeader = new SliceHeaderData();
    private SliceHeaderData sliceHeader = new SliceHeaderData();

    /* renamed from: com.google.android.exoplayer2.extractor.ts.H264Reader$SampleReader$SliceHeaderData */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData.class */
    public static final class SliceHeaderData {
        private static final int SLICE_TYPE_ALL_I = 7;
        private static final int SLICE_TYPE_I = 2;
        private boolean bottomFieldFlag;
        private boolean bottomFieldFlagPresent;
        private int deltaPicOrderCnt0;
        private int deltaPicOrderCnt1;
        private int deltaPicOrderCntBottom;
        private boolean fieldPicFlag;
        private int frameNum;
        private boolean hasSliceType;
        private boolean idrPicFlag;
        private int idrPicId;
        private boolean isComplete;
        private int nalRefIdc;
        private int picOrderCntLsb;
        private int picParameterSetId;
        private int sliceType;
        private NalUnitUtil.SpsData spsData;

        private SliceHeaderData() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
            if (r3.bottomFieldFlag == r4.bottomFieldFlag) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
            if (r0 != 0) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00a6, code lost:
            if (r3.deltaPicOrderCntBottom == r4.deltaPicOrderCntBottom) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00d1, code lost:
            if (r3.deltaPicOrderCnt1 == r4.deltaPicOrderCnt1) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean isFirstVclNalUnitOfPicture(com.google.android.exoplayer2.extractor.p004ts.H264Reader$SampleReader.SliceHeaderData r4) {
            /*
                Method dump skipped, instructions count: 263
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p004ts.H264Reader$SampleReader.SliceHeaderData.isFirstVclNalUnitOfPicture(com.google.android.exoplayer2.extractor.ts.H264Reader$SampleReader$SliceHeaderData):boolean");
        }

        public void clear() {
            this.hasSliceType = false;
            this.isComplete = false;
        }

        public boolean isISlice() {
            int i;
            return this.hasSliceType && ((i = this.sliceType) == 7 || i == 2);
        }

        public void setAll(NalUnitUtil.SpsData spsData, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
            this.spsData = spsData;
            this.nalRefIdc = i;
            this.sliceType = i2;
            this.frameNum = i3;
            this.picParameterSetId = i4;
            this.fieldPicFlag = z;
            this.bottomFieldFlagPresent = z2;
            this.bottomFieldFlag = z3;
            this.idrPicFlag = z4;
            this.idrPicId = i5;
            this.picOrderCntLsb = i6;
            this.deltaPicOrderCntBottom = i7;
            this.deltaPicOrderCnt0 = i8;
            this.deltaPicOrderCnt1 = i9;
            this.isComplete = true;
            this.hasSliceType = true;
        }

        public void setSliceType(int i) {
            this.sliceType = i;
            this.hasSliceType = true;
        }
    }

    public H264Reader$SampleReader(TrackOutput trackOutput, boolean z, boolean z2) {
        this.output = trackOutput;
        this.allowNonIdrKeyframes = z;
        this.detectAccessUnits = z2;
        byte[] bArr = new byte[128];
        this.buffer = bArr;
        this.bitArray = new ParsableNalUnitBitArray(bArr, 0, 0);
        reset();
    }

    private void outputSample(int i) {
        boolean z = this.sampleIsKeyframe;
        this.output.sampleMetadata(this.sampleTimeUs, z ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0201  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void appendToNalUnit(byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p004ts.H264Reader$SampleReader.appendToNalUnit(byte[], int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0082, code lost:
        if (r7.sliceHeader.isISlice() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void endNalUnit(long r8, int r10) {
        /*
            r7 = this;
            r0 = r7
            int r0 = r0.nalUnitType
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            r1 = 9
            if (r0 == r1) goto L25
            r0 = r7
            boolean r0 = r0.detectAccessUnits
            if (r0 == 0) goto L53
            r0 = r7
            com.google.android.exoplayer2.extractor.ts.H264Reader$SampleReader$SliceHeaderData r0 = r0.sliceHeader
            r1 = r7
            com.google.android.exoplayer2.extractor.ts.H264Reader$SampleReader$SliceHeaderData r1 = r1.previousSliceHeader
            boolean r0 = com.google.android.exoplayer2.extractor.p004ts.H264Reader$SampleReader.SliceHeaderData.access$100(r0, r1)
            if (r0 == 0) goto L53
        L25:
            r0 = r7
            boolean r0 = r0.readingSample
            if (r0 == 0) goto L39
            r0 = r7
            r1 = r10
            r2 = r8
            r3 = r7
            long r3 = r3.nalUnitStartPosition
            long r2 = r2 - r3
            int r2 = (int) r2
            int r1 = r1 + r2
            r0.outputSample(r1)
        L39:
            r0 = r7
            r1 = r7
            long r1 = r1.nalUnitStartPosition
            r0.samplePosition = r1
            r0 = r7
            r1 = r7
            long r1 = r1.nalUnitTimeUs
            r0.sampleTimeUs = r1
            r0 = r7
            r1 = 0
            r0.sampleIsKeyframe = r1
            r0 = r7
            r1 = 1
            r0.readingSample = r1
        L53:
            r0 = r7
            boolean r0 = r0.sampleIsKeyframe
            r13 = r0
            r0 = r7
            int r0 = r0.nalUnitType
            r11 = r0
            r0 = r11
            r1 = 5
            if (r0 == r1) goto L85
            r0 = r12
            r10 = r0
            r0 = r7
            boolean r0 = r0.allowNonIdrKeyframes
            if (r0 == 0) goto L87
            r0 = r12
            r10 = r0
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L87
            r0 = r12
            r10 = r0
            r0 = r7
            com.google.android.exoplayer2.extractor.ts.H264Reader$SampleReader$SliceHeaderData r0 = r0.sliceHeader
            boolean r0 = r0.isISlice()
            if (r0 == 0) goto L87
        L85:
            r0 = 1
            r10 = r0
        L87:
            r0 = r7
            r1 = r13
            r2 = r10
            r1 = r1 | r2
            r0.sampleIsKeyframe = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p004ts.H264Reader$SampleReader.endNalUnit(long, int):void");
    }

    public boolean needsSpsPps() {
        return this.detectAccessUnits;
    }

    public void putPps(NalUnitUtil.PpsData ppsData) {
        this.pps.append(ppsData.picParameterSetId, ppsData);
    }

    public void putSps(NalUnitUtil.SpsData spsData) {
        this.sps.append(spsData.seqParameterSetId, spsData);
    }

    public void reset() {
        this.isFilling = false;
        this.readingSample = false;
        this.sliceHeader.clear();
    }

    public void startNalUnit(long j, int i, long j2) {
        this.nalUnitType = i;
        this.nalUnitTimeUs = j2;
        this.nalUnitStartPosition = j;
        if (!this.allowNonIdrKeyframes || i != 1) {
            if (!this.detectAccessUnits) {
                return;
            }
            if (i != 5 && i != 1 && i != 2) {
                return;
            }
        }
        SliceHeaderData sliceHeaderData = this.previousSliceHeader;
        this.previousSliceHeader = this.sliceHeader;
        this.sliceHeader = sliceHeaderData;
        sliceHeaderData.clear();
        this.bufferLength = 0;
        this.isFilling = true;
    }
}
