package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo.class */
public final class MappingTrackSelector$MappedTrackInfo {
    public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
    public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
    public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
    public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
    @Deprecated
    public final int length;
    private final int rendererCount;
    private final int[][][] rendererFormatSupports;
    private final int[] rendererMixedMimeTypeAdaptiveSupports;
    private final TrackGroupArray[] rendererTrackGroups;
    private final int[] rendererTrackTypes;
    private final TrackGroupArray unmappedTrackGroups;

    public MappingTrackSelector$MappedTrackInfo(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
        this.rendererTrackTypes = iArr;
        this.rendererTrackGroups = trackGroupArrayArr;
        this.rendererFormatSupports = iArr3;
        this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
        this.unmappedTrackGroups = trackGroupArray;
        int length = iArr.length;
        this.rendererCount = length;
        this.length = length;
    }

    public int getAdaptiveSupport(int i, int i2, boolean z) {
        int i3;
        int i4 = this.rendererTrackGroups[i].get(i2).length;
        int[] iArr = new int[i4];
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i5 < i4) {
                int trackSupport = getTrackSupport(i, i2, i5);
                if (trackSupport != 4) {
                    i3 = i7;
                    if (z) {
                        i3 = i7;
                        if (trackSupport != 3) {
                        }
                    }
                    i5++;
                    i6 = i3;
                }
                iArr[i7] = i5;
                i3 = i7 + 1;
                i5++;
                i6 = i3;
            } else {
                return getAdaptiveSupport(i, i2, Arrays.copyOf(iArr, i7));
            }
        }
    }

    public int getAdaptiveSupport(int i, int i2, int[] iArr) {
        int i3 = 0;
        String str = null;
        boolean z = false;
        int i4 = 0;
        int i5 = 16;
        while (i3 < iArr.length) {
            String str2 = this.rendererTrackGroups[i].get(i2).getFormat(iArr[i3]).sampleMimeType;
            if (i4 == 0) {
                str = str2;
            } else {
                z |= !Util.areEqual(str, str2);
            }
            i5 = Math.min(i5, this.rendererFormatSupports[i][i2][i3] & 24);
            i3++;
            i4++;
        }
        int i6 = i5;
        if (z) {
            i6 = Math.min(i5, this.rendererMixedMimeTypeAdaptiveSupports[i]);
        }
        return i6;
    }

    public int getRendererCount() {
        return this.rendererCount;
    }

    public int getRendererSupport(int i) {
        int i2;
        int[][] iArr = this.rendererFormatSupports[i];
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            for (int i5 = 0; i5 < iArr[i4].length; i5++) {
                int i6 = iArr[i4][i5] & 7;
                if (i6 == 3) {
                    i2 = 2;
                } else if (i6 == 4) {
                    return 3;
                } else {
                    i2 = 1;
                }
                i3 = Math.max(i3, i2);
            }
        }
        return i3;
    }

    public int getRendererType(int i) {
        return this.rendererTrackTypes[i];
    }

    @Deprecated
    public int getTrackFormatSupport(int i, int i2, int i3) {
        return getTrackSupport(i, i2, i3);
    }

    public TrackGroupArray getTrackGroups(int i) {
        return this.rendererTrackGroups[i];
    }

    public int getTrackSupport(int i, int i2, int i3) {
        return this.rendererFormatSupports[i][i2][i3] & 7;
    }

    @Deprecated
    public int getTrackTypeRendererSupport(int i) {
        return getTypeSupport(i);
    }

    public int getTypeSupport(int i) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < this.rendererCount) {
                int i5 = i4;
                if (this.rendererTrackTypes[i2] == i) {
                    i5 = Math.max(i4, getRendererSupport(i2));
                }
                i2++;
                i3 = i5;
            } else {
                return i4;
            }
        }
    }

    @Deprecated
    public TrackGroupArray getUnassociatedTrackGroups() {
        return getUnmappedTrackGroups();
    }

    public TrackGroupArray getUnmappedTrackGroups() {
        return this.unmappedTrackGroups;
    }
}
