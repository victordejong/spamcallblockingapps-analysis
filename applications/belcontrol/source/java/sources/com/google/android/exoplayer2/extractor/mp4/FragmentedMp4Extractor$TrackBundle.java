package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle.class */
public final class FragmentedMp4Extractor$TrackBundle {
    public int currentSampleInTrackRun;
    public int currentSampleIndex;
    public int currentTrackRunIndex;
    public DefaultSampleValues defaultSampleValues;
    public int firstSampleToOutputIndex;
    public final TrackOutput output;
    public Track track;
    public final TrackFragment fragment = new TrackFragment();
    private final ParsableByteArray encryptionSignalByte = new ParsableByteArray(1);
    private final ParsableByteArray defaultInitializationVector = new ParsableByteArray();

    public FragmentedMp4Extractor$TrackBundle(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    private TrackEncryptionBox getEncryptionBox() {
        TrackFragment trackFragment = this.fragment;
        int i = trackFragment.header.sampleDescriptionIndex;
        TrackEncryptionBox trackEncryptionBox = trackFragment.trackEncryptionBox;
        if (trackEncryptionBox == null) {
            trackEncryptionBox = this.track.getSampleDescriptionEncryptionBox(i);
        }
        return trackEncryptionBox;
    }

    public void skipSampleEncryptionData() {
        TrackFragment trackFragment = this.fragment;
        if (!trackFragment.definesEncryptionData) {
            return;
        }
        ParsableByteArray parsableByteArray = trackFragment.sampleEncryptionData;
        int i = getEncryptionBox().initializationVectorSize;
        if (i != 0) {
            parsableByteArray.skipBytes(i);
        }
        if (!this.fragment.sampleHasSubsampleEncryptionTable[this.currentSampleIndex]) {
            return;
        }
        parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() * 6);
    }

    public void init(Track track, DefaultSampleValues defaultSampleValues) {
        this.track = (Track) Assertions.checkNotNull(track);
        this.defaultSampleValues = (DefaultSampleValues) Assertions.checkNotNull(defaultSampleValues);
        this.output.format(track.format);
        reset();
    }

    public boolean next() {
        this.currentSampleIndex++;
        int i = this.currentSampleInTrackRun + 1;
        this.currentSampleInTrackRun = i;
        int[] iArr = this.fragment.trunLength;
        int i2 = this.currentTrackRunIndex;
        if (i == iArr[i2]) {
            this.currentTrackRunIndex = i2 + 1;
            this.currentSampleInTrackRun = 0;
            return false;
        }
        return true;
    }

    public int outputSampleEncryptionData() {
        ParsableByteArray parsableByteArray;
        if (!this.fragment.definesEncryptionData) {
            return 0;
        }
        TrackEncryptionBox encryptionBox = getEncryptionBox();
        int i = encryptionBox.initializationVectorSize;
        if (i != 0) {
            parsableByteArray = this.fragment.sampleEncryptionData;
        } else {
            byte[] bArr = encryptionBox.defaultInitializationVector;
            this.defaultInitializationVector.reset(bArr, bArr.length);
            parsableByteArray = this.defaultInitializationVector;
            i = bArr.length;
        }
        boolean z = this.fragment.sampleHasSubsampleEncryptionTable[this.currentSampleIndex];
        ParsableByteArray parsableByteArray2 = this.encryptionSignalByte;
        parsableByteArray2.data[0] = (byte) ((z ? 128 : 0) | i);
        parsableByteArray2.setPosition(0);
        this.output.sampleData(this.encryptionSignalByte, 1);
        this.output.sampleData(parsableByteArray, i);
        if (!z) {
            return i + 1;
        }
        ParsableByteArray parsableByteArray3 = this.fragment.sampleEncryptionData;
        int readUnsignedShort = parsableByteArray3.readUnsignedShort();
        parsableByteArray3.skipBytes(-2);
        int i2 = (readUnsignedShort * 6) + 2;
        this.output.sampleData(parsableByteArray3, i2);
        return i + 1 + i2;
    }

    public void reset() {
        this.fragment.reset();
        this.currentSampleIndex = 0;
        this.currentTrackRunIndex = 0;
        this.currentSampleInTrackRun = 0;
        this.firstSampleToOutputIndex = 0;
    }

    public void seek(long j) {
        long usToMs = C0515C.usToMs(j);
        int i = this.currentSampleIndex;
        while (true) {
            TrackFragment trackFragment = this.fragment;
            if (i >= trackFragment.sampleCount || trackFragment.getSamplePresentationTime(i) >= usToMs) {
                return;
            }
            if (this.fragment.sampleIsSyncFrameTable[i]) {
                this.firstSampleToOutputIndex = i;
            }
            i++;
        }
    }

    public void updateDrmInitData(DrmInitData drmInitData) {
        TrackEncryptionBox sampleDescriptionEncryptionBox = this.track.getSampleDescriptionEncryptionBox(this.fragment.header.sampleDescriptionIndex);
        this.output.format(this.track.format.copyWithDrmInitData(drmInitData.copyWithSchemeType(sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null)));
    }
}
