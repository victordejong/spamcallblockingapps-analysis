package androidx.media2.exoplayer.external.trackselection;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.RendererCapabilities;
import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/MappingTrackSelector.class */
public abstract class MappingTrackSelector extends TrackSelector {
    @Nullable
    public MappedTrackInfo currentMappedTrackInfo;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo.class */
    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        @Deprecated
        public final int length;
        public final int rendererCount;
        public final int[][][] rendererFormatSupports;
        public final int[] rendererMixedMimeTypeAdaptiveSupports;
        public final TrackGroupArray[] rendererTrackGroups;
        public final int[] rendererTrackTypes;
        public final TrackGroupArray unmappedTrackGroups;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo$RendererSupport.class */
        public @interface RendererSupport {
        }

        public MappedTrackInfo(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
            this.length = this.rendererCount;
        }

        public int getAdaptiveSupport(int i, int i2, boolean z) {
            int i3 = this.rendererTrackGroups[i].get(i2).length;
            int[] iArr = new int[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                int trackSupport = getTrackSupport(i, i2, i5);
                if (trackSupport != 4) {
                    i4 = i4;
                    if (z) {
                        i4 = i4;
                        if (trackSupport != 3) {
                        }
                    }
                }
                iArr[i4] = i5;
                i4++;
            }
            return getAdaptiveSupport(i, i2, Arrays.copyOf(iArr, i4));
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
            for (int[] iArr2 : iArr) {
                for (int i4 : iArr2) {
                    int i5 = i4 & 7;
                    if (i5 == 3) {
                        i2 = 2;
                    } else if (i5 == 4) {
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
            for (int i3 = 0; i3 < this.rendererCount; i3++) {
                i2 = i2;
                if (this.rendererTrackTypes[i3] == i) {
                    i2 = Math.max(i2, getRendererSupport(i3));
                }
            }
            return i2;
        }

        @Deprecated
        public TrackGroupArray getUnassociatedTrackGroups() {
            return getUnmappedTrackGroups();
        }

        public TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }
    }

    public static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i = 0;
        int i2 = 0;
        while (i < rendererCapabilitiesArr.length) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i];
            int i3 = length;
            for (int i4 = 0; i4 < trackGroup.length; i4++) {
                int supportsFormat = rendererCapabilities.supportsFormat(trackGroup.getFormat(i4)) & 7;
                i2 = i2;
                if (supportsFormat > i2) {
                    if (supportsFormat == 4) {
                        return i;
                    }
                    i3 = i;
                    i2 = supportsFormat;
                }
            }
            i++;
            length = i3;
            i2 = i2;
        }
        return length;
    }

    public static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i = 0; i < trackGroup.length; i++) {
            iArr[i] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i));
        }
        return iArr;
    }

    public static int[] getMixedMimeTypeAdaptationSupports(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = rendererCapabilitiesArr[i].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Nullable
    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    public abstract Pair<RendererConfiguration[], TrackSelection[]> selectTracks(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.trackselection.TrackSelectorResult selectTracks(androidx.media2.exoplayer.external.RendererCapabilities[] r12, androidx.media2.exoplayer.external.source.TrackGroupArray r13, androidx.media2.exoplayer.external.source.MediaSource.MediaPeriodId r14, androidx.media2.exoplayer.external.Timeline r15) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.MappingTrackSelector.selectTracks(androidx.media2.exoplayer.external.RendererCapabilities[], androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId, androidx.media2.exoplayer.external.Timeline):androidx.media2.exoplayer.external.trackselection.TrackSelectorResult");
    }
}
