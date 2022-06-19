package com.google.android.exoplayer2.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters.class */
public final class DefaultTrackSelector$Parameters implements Parcelable {
    public final boolean allowMixedMimeAdaptiveness;
    public final boolean allowNonSeamlessAdaptiveness;
    public final int disabledTextTrackSelectionFlags;
    public final boolean exceedRendererCapabilitiesIfNecessary;
    public final boolean exceedVideoConstraintsIfNecessary;
    public final boolean forceLowestBitrate;
    public final int maxVideoBitrate;
    public final int maxVideoHeight;
    public final int maxVideoWidth;
    public final String preferredAudioLanguage;
    public final String preferredTextLanguage;
    private final SparseBooleanArray rendererDisabledFlags;
    public final boolean selectUndeterminedTextLanguage;
    private final SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> selectionOverrides;
    public final int tunnelingAudioSessionId;
    public final int viewportHeight;
    public final boolean viewportOrientationMayChange;
    public final int viewportWidth;
    public static final DefaultTrackSelector$Parameters DEFAULT = new DefaultTrackSelector$Parameters();
    public static final Parcelable.Creator<DefaultTrackSelector$Parameters> CREATOR = new Parcelable.Creator<DefaultTrackSelector$Parameters>() { // from class: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters.1
        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$Parameters createFromParcel(Parcel parcel) {
            return new DefaultTrackSelector$Parameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$Parameters[] newArray(int i) {
            return new DefaultTrackSelector$Parameters[i];
        }
    };

    private DefaultTrackSelector$Parameters() {
        this(new SparseArray(), new SparseBooleanArray(), null, null, false, 0, false, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true, 0);
    }

    public DefaultTrackSelector$Parameters(Parcel parcel) {
        this.selectionOverrides = readSelectionOverrides(parcel);
        this.rendererDisabledFlags = parcel.readSparseBooleanArray();
        this.preferredAudioLanguage = parcel.readString();
        this.preferredTextLanguage = parcel.readString();
        this.selectUndeterminedTextLanguage = Util.readBoolean(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
        this.forceLowestBitrate = Util.readBoolean(parcel);
        this.allowMixedMimeAdaptiveness = Util.readBoolean(parcel);
        this.allowNonSeamlessAdaptiveness = Util.readBoolean(parcel);
        this.maxVideoWidth = parcel.readInt();
        this.maxVideoHeight = parcel.readInt();
        this.maxVideoBitrate = parcel.readInt();
        this.exceedVideoConstraintsIfNecessary = Util.readBoolean(parcel);
        this.exceedRendererCapabilitiesIfNecessary = Util.readBoolean(parcel);
        this.viewportWidth = parcel.readInt();
        this.viewportHeight = parcel.readInt();
        this.viewportOrientationMayChange = Util.readBoolean(parcel);
        this.tunnelingAudioSessionId = parcel.readInt();
    }

    public DefaultTrackSelector$Parameters(SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray, String str, String str2, boolean z, int i, boolean z2, boolean z3, boolean z4, int i2, int i3, int i4, boolean z5, boolean z6, int i5, int i6, boolean z7, int i7) {
        this.selectionOverrides = sparseArray;
        this.rendererDisabledFlags = sparseBooleanArray;
        this.preferredAudioLanguage = Util.normalizeLanguageCode(str);
        this.preferredTextLanguage = Util.normalizeLanguageCode(str2);
        this.selectUndeterminedTextLanguage = z;
        this.disabledTextTrackSelectionFlags = i;
        this.forceLowestBitrate = z2;
        this.allowMixedMimeAdaptiveness = z3;
        this.allowNonSeamlessAdaptiveness = z4;
        this.maxVideoWidth = i2;
        this.maxVideoHeight = i3;
        this.maxVideoBitrate = i4;
        this.exceedVideoConstraintsIfNecessary = z5;
        this.exceedRendererCapabilitiesIfNecessary = z6;
        this.viewportWidth = i5;
        this.viewportHeight = i6;
        this.viewportOrientationMayChange = z7;
        this.tunnelingAudioSessionId = i7;
    }

    public static /* synthetic */ SparseArray access$000(DefaultTrackSelector$Parameters defaultTrackSelector$Parameters) {
        return defaultTrackSelector$Parameters.selectionOverrides;
    }

    public static /* synthetic */ SparseBooleanArray access$100(DefaultTrackSelector$Parameters defaultTrackSelector$Parameters) {
        return defaultTrackSelector$Parameters.rendererDisabledFlags;
    }

    private static boolean areRendererDisabledFlagsEqual(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        int size = sparseBooleanArray.size();
        if (sparseBooleanArray2.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                return false;
            }
        }
        return true;
    }

    private static boolean areSelectionOverridesEqual(SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray2) {
        int size = sparseArray.size();
        if (sparseArray2.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
            if (indexOfKey < 0 || !areSelectionOverridesEqual(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean areSelectionOverridesEqual(java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride> r4, java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride> r5) {
        /*
            r0 = r4
            int r0 = r0.size()
            r6 = r0
            r0 = r5
            int r0 = r0.size()
            r1 = r6
            if (r0 == r1) goto L13
            r0 = 0
            return r0
        L13:
            r0 = r4
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L1f:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L5e
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()
            com.google.android.exoplayer2.source.TrackGroupArray r0 = (com.google.android.exoplayer2.source.TrackGroupArray) r0
            r4 = r0
            r0 = r5
            r1 = r4
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L5c
            r0 = r8
            java.lang.Object r0 = r0.getValue()
            r1 = r5
            r2 = r4
            java.lang.Object r1 = r1.get(r2)
            boolean r0 = com.google.android.exoplayer2.util.Util.areEqual(r0, r1)
            if (r0 != 0) goto L1f
        L5c:
            r0 = 0
            return r0
        L5e:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
    }

    private static SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> readSelectionOverrides(Parcel parcel) {
        int readInt = parcel.readInt();
        SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray = new SparseArray<>(readInt);
        for (int i = 0; i < readInt; i++) {
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            HashMap hashMap = new HashMap(readInt3);
            for (int i2 = 0; i2 < readInt3; i2++) {
                hashMap.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (DefaultTrackSelector$SelectionOverride) parcel.readParcelable(DefaultTrackSelector$SelectionOverride.class.getClassLoader()));
            }
            sparseArray.put(readInt2, hashMap);
        }
        return sparseArray;
    }

    private static void writeSelectionOverridesToParcel(Parcel parcel, SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray) {
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; i++) {
            int keyAt = sparseArray.keyAt(i);
            Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> valueAt = sparseArray.valueAt(i);
            int size2 = valueAt.size();
            parcel.writeInt(keyAt);
            parcel.writeInt(size2);
            for (Map.Entry<TrackGroupArray, DefaultTrackSelector$SelectionOverride> entry : valueAt.entrySet()) {
                parcel.writeParcelable(entry.getKey(), 0);
                parcel.writeParcelable(entry.getValue(), 0);
            }
        }
    }

    public DefaultTrackSelector$ParametersBuilder buildUpon() {
        return new DefaultTrackSelector$ParametersBuilder(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultTrackSelector$Parameters.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$Parameters defaultTrackSelector$Parameters = (DefaultTrackSelector$Parameters) obj;
        if (this.selectUndeterminedTextLanguage != defaultTrackSelector$Parameters.selectUndeterminedTextLanguage || this.disabledTextTrackSelectionFlags != defaultTrackSelector$Parameters.disabledTextTrackSelectionFlags || this.forceLowestBitrate != defaultTrackSelector$Parameters.forceLowestBitrate || this.allowMixedMimeAdaptiveness != defaultTrackSelector$Parameters.allowMixedMimeAdaptiveness || this.allowNonSeamlessAdaptiveness != defaultTrackSelector$Parameters.allowNonSeamlessAdaptiveness || this.maxVideoWidth != defaultTrackSelector$Parameters.maxVideoWidth || this.maxVideoHeight != defaultTrackSelector$Parameters.maxVideoHeight || this.exceedVideoConstraintsIfNecessary != defaultTrackSelector$Parameters.exceedVideoConstraintsIfNecessary || this.exceedRendererCapabilitiesIfNecessary != defaultTrackSelector$Parameters.exceedRendererCapabilitiesIfNecessary || this.viewportOrientationMayChange != defaultTrackSelector$Parameters.viewportOrientationMayChange || this.viewportWidth != defaultTrackSelector$Parameters.viewportWidth || this.viewportHeight != defaultTrackSelector$Parameters.viewportHeight || this.maxVideoBitrate != defaultTrackSelector$Parameters.maxVideoBitrate || this.tunnelingAudioSessionId != defaultTrackSelector$Parameters.tunnelingAudioSessionId || !TextUtils.equals(this.preferredAudioLanguage, defaultTrackSelector$Parameters.preferredAudioLanguage) || !TextUtils.equals(this.preferredTextLanguage, defaultTrackSelector$Parameters.preferredTextLanguage) || !areRendererDisabledFlagsEqual(this.rendererDisabledFlags, defaultTrackSelector$Parameters.rendererDisabledFlags) || !areSelectionOverridesEqual(this.selectionOverrides, defaultTrackSelector$Parameters.selectionOverrides)) {
            z = false;
        }
        return z;
    }

    public final boolean getRendererDisabled(int i) {
        return this.rendererDisabledFlags.get(i);
    }

    public final DefaultTrackSelector$SelectionOverride getSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> map = this.selectionOverrides.get(i);
        return map != null ? map.get(trackGroupArray) : null;
    }

    public final boolean hasSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> map = this.selectionOverrides.get(i);
        return map != null && map.containsKey(trackGroupArray);
    }

    public int hashCode() {
        boolean z = this.selectUndeterminedTextLanguage;
        int i = this.disabledTextTrackSelectionFlags;
        boolean z2 = this.forceLowestBitrate;
        boolean z3 = this.allowMixedMimeAdaptiveness;
        boolean z4 = this.allowNonSeamlessAdaptiveness;
        int i2 = this.maxVideoWidth;
        int i3 = this.maxVideoHeight;
        boolean z5 = this.exceedVideoConstraintsIfNecessary;
        boolean z6 = this.exceedRendererCapabilitiesIfNecessary;
        boolean z7 = this.viewportOrientationMayChange;
        int i4 = this.viewportWidth;
        int i5 = this.viewportHeight;
        int i6 = this.maxVideoBitrate;
        int i7 = this.tunnelingAudioSessionId;
        String str = this.preferredAudioLanguage;
        int i8 = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.preferredTextLanguage;
        if (str2 != null) {
            i8 = str2.hashCode();
        }
        return ((((((((((((((((((((((((((((((z ? 1 : 0) * 31) + i) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i2) * 31) + i3) * 31) + (z5 ? 1 : 0)) * 31) + (z6 ? 1 : 0)) * 31) + (z7 ? 1 : 0)) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + hashCode) * 31) + i8;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
        parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
        parcel.writeString(this.preferredAudioLanguage);
        parcel.writeString(this.preferredTextLanguage);
        Util.writeBoolean(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
        Util.writeBoolean(parcel, this.forceLowestBitrate);
        Util.writeBoolean(parcel, this.allowMixedMimeAdaptiveness);
        Util.writeBoolean(parcel, this.allowNonSeamlessAdaptiveness);
        parcel.writeInt(this.maxVideoWidth);
        parcel.writeInt(this.maxVideoHeight);
        parcel.writeInt(this.maxVideoBitrate);
        Util.writeBoolean(parcel, this.exceedVideoConstraintsIfNecessary);
        Util.writeBoolean(parcel, this.exceedRendererCapabilitiesIfNecessary);
        parcel.writeInt(this.viewportWidth);
        parcel.writeInt(this.viewportHeight);
        Util.writeBoolean(parcel, this.viewportOrientationMayChange);
        parcel.writeInt(this.tunnelingAudioSessionId);
    }
}
