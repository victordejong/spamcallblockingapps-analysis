package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.trackselection.C11432a;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.collect.AbstractC15470an;
import com.google.common.collect.AbstractC15537n;
import com.google.common.collect.AbstractC15549v;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector.class */
public final class DefaultTrackSelector extends AbstractC11440e {

    /* renamed from: b */
    private static final int[] f37715b = new int[0];

    /* renamed from: c */
    private static final AbstractC15470an<Integer> f37716c = AbstractC15470an.m8834a((Comparator) _$$Lambda$DefaultTrackSelector$Z2Vlah_5LKefLbYS6DEef6odOek.INSTANCE);

    /* renamed from: d */
    private static final AbstractC15470an<Integer> f37717d = AbstractC15470an.m8834a((Comparator) _$$Lambda$DefaultTrackSelector$ipqbCtpmBMyKx__d5oPRaYqjyEA.INSTANCE);

    /* renamed from: e */
    private final AbstractC11436c.AbstractC11438b f37718e;

    /* renamed from: f */
    private final AtomicReference<Parameters> f37719f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        public final boolean allowMultipleAdaptiveSelections;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final boolean forceHighestSupportedBitrate;
        public final boolean forceLowestBitrate;
        public final int maxAudioBitrate;
        public final int maxAudioChannelCount;
        public final int maxVideoBitrate;
        public final int maxVideoFrameRate;
        public final int maxVideoHeight;
        public final int maxVideoWidth;
        public final int minVideoBitrate;
        public final int minVideoFrameRate;
        public final int minVideoHeight;
        public final int minVideoWidth;
        public final AbstractC15549v<String> preferredAudioMimeTypes;
        public final AbstractC15549v<String> preferredVideoMimeTypes;
        private final SparseBooleanArray rendererDisabledFlags;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final boolean tunnelingEnabled;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;
        public static final Parameters DEFAULT_WITHOUT_CONTEXT = new C11427c().mo20575b();
        public static final Parcelable.Creator<Parameters> CREATOR = new Parcelable.Creator<Parameters>() { // from class: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Parameters[] newArray(int i) {
                return new Parameters[i];
            }
        };

        Parameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, boolean z2, boolean z3, int i9, int i10, boolean z4, AbstractC15549v<String> abstractC15549v, AbstractC15549v<String> abstractC15549v2, int i11, int i12, int i13, boolean z5, boolean z6, boolean z7, boolean z8, AbstractC15549v<String> abstractC15549v3, AbstractC15549v<String> abstractC15549v4, int i14, boolean z9, int i15, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(abstractC15549v2, i11, abstractC15549v4, i14, z9, i15);
            this.maxVideoWidth = i;
            this.maxVideoHeight = i2;
            this.maxVideoFrameRate = i3;
            this.maxVideoBitrate = i4;
            this.minVideoWidth = i5;
            this.minVideoHeight = i6;
            this.minVideoFrameRate = i7;
            this.minVideoBitrate = i8;
            this.exceedVideoConstraintsIfNecessary = z;
            this.allowVideoMixedMimeTypeAdaptiveness = z2;
            this.allowVideoNonSeamlessAdaptiveness = z3;
            this.viewportWidth = i9;
            this.viewportHeight = i10;
            this.viewportOrientationMayChange = z4;
            this.preferredVideoMimeTypes = abstractC15549v;
            this.maxAudioChannelCount = i12;
            this.maxAudioBitrate = i13;
            this.exceedAudioConstraintsIfNecessary = z5;
            this.allowAudioMixedMimeTypeAdaptiveness = z6;
            this.allowAudioMixedSampleRateAdaptiveness = z7;
            this.allowAudioMixedChannelCountAdaptiveness = z8;
            this.preferredAudioMimeTypes = abstractC15549v3;
            this.forceLowestBitrate = z10;
            this.forceHighestSupportedBitrate = z11;
            this.exceedRendererCapabilitiesIfNecessary = z12;
            this.tunnelingEnabled = z13;
            this.allowMultipleAdaptiveSelections = z14;
            this.selectionOverrides = sparseArray;
            this.rendererDisabledFlags = sparseBooleanArray;
        }

        Parameters(Parcel parcel) {
            super(parcel);
            this.maxVideoWidth = parcel.readInt();
            this.maxVideoHeight = parcel.readInt();
            this.maxVideoFrameRate = parcel.readInt();
            this.maxVideoBitrate = parcel.readInt();
            this.minVideoWidth = parcel.readInt();
            this.minVideoHeight = parcel.readInt();
            this.minVideoFrameRate = parcel.readInt();
            this.minVideoBitrate = parcel.readInt();
            this.exceedVideoConstraintsIfNecessary = C11599af.m19982a(parcel);
            this.allowVideoMixedMimeTypeAdaptiveness = C11599af.m19982a(parcel);
            this.allowVideoNonSeamlessAdaptiveness = C11599af.m19982a(parcel);
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = C11599af.m19982a(parcel);
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, null);
            this.preferredVideoMimeTypes = AbstractC15549v.m8725a((Collection) arrayList);
            this.maxAudioChannelCount = parcel.readInt();
            this.maxAudioBitrate = parcel.readInt();
            this.exceedAudioConstraintsIfNecessary = C11599af.m19982a(parcel);
            this.allowAudioMixedMimeTypeAdaptiveness = C11599af.m19982a(parcel);
            this.allowAudioMixedSampleRateAdaptiveness = C11599af.m19982a(parcel);
            this.allowAudioMixedChannelCountAdaptiveness = C11599af.m19982a(parcel);
            ArrayList arrayList2 = new ArrayList();
            parcel.readList(arrayList2, null);
            this.preferredAudioMimeTypes = AbstractC15549v.m8725a((Collection) arrayList2);
            this.forceLowestBitrate = C11599af.m19982a(parcel);
            this.forceHighestSupportedBitrate = C11599af.m19982a(parcel);
            this.exceedRendererCapabilitiesIfNecessary = C11599af.m19982a(parcel);
            this.tunnelingEnabled = C11599af.m19982a(parcel);
            this.allowMultipleAdaptiveSelections = C11599af.m19982a(parcel);
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = (SparseBooleanArray) C11599af.m19974a(parcel.readSparseBooleanArray());
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

        private static boolean areSelectionOverridesEqual(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
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
        private static boolean areSelectionOverridesEqual(java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
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
                boolean r0 = com.google.android.exoplayer2.util.C11599af.m19973a(r0, r1)
                if (r0 != 0) goto L1f
            L5c:
                r0 = 0
                return r0
            L5e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
        }

        public static Parameters getDefaults(Context context) {
            return new C11427c(context).mo20575b();
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    hashMap.put((TrackGroupArray) C11593a.m20020b((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader())), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            return sparseArray;
        }

        private static void writeSelectionOverridesToParcel(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                Map<TrackGroupArray, SelectionOverride> valueAt = sparseArray.valueAt(i);
                int size2 = valueAt.size();
                parcel.writeInt(keyAt);
                parcel.writeInt(size2);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : valueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public final C11427c buildUpon() {
            return new C11427c(this);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return super.equals(obj) && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.maxVideoFrameRate == parameters.maxVideoFrameRate && this.maxVideoBitrate == parameters.maxVideoBitrate && this.minVideoWidth == parameters.minVideoWidth && this.minVideoHeight == parameters.minVideoHeight && this.minVideoFrameRate == parameters.minVideoFrameRate && this.minVideoBitrate == parameters.minVideoBitrate && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.preferredVideoMimeTypes.equals(parameters.preferredVideoMimeTypes) && this.maxAudioChannelCount == parameters.maxAudioChannelCount && this.maxAudioBitrate == parameters.maxAudioBitrate && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == parameters.allowAudioMixedChannelCountAdaptiveness && this.preferredAudioMimeTypes.equals(parameters.preferredAudioMimeTypes) && this.forceLowestBitrate == parameters.forceLowestBitrate && this.forceHighestSupportedBitrate == parameters.forceHighestSupportedBitrate && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingEnabled == parameters.tunnelingEnabled && this.allowMultipleAdaptiveSelections == parameters.allowMultipleAdaptiveSelections && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides);
        }

        public final boolean getRendererDisabled(int i) {
            return this.rendererDisabledFlags.get(i);
        }

        public final SelectionOverride getSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        public final boolean hasSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public final int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.tunnelingEnabled ? 1 : 0)) * 31) + (this.allowMultipleAdaptiveSelections ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.maxVideoWidth);
            parcel.writeInt(this.maxVideoHeight);
            parcel.writeInt(this.maxVideoFrameRate);
            parcel.writeInt(this.maxVideoBitrate);
            parcel.writeInt(this.minVideoWidth);
            parcel.writeInt(this.minVideoHeight);
            parcel.writeInt(this.minVideoFrameRate);
            parcel.writeInt(this.minVideoBitrate);
            C11599af.m19981a(parcel, this.exceedVideoConstraintsIfNecessary);
            C11599af.m19981a(parcel, this.allowVideoMixedMimeTypeAdaptiveness);
            C11599af.m19981a(parcel, this.allowVideoNonSeamlessAdaptiveness);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            C11599af.m19981a(parcel, this.viewportOrientationMayChange);
            parcel.writeList(this.preferredVideoMimeTypes);
            parcel.writeInt(this.maxAudioChannelCount);
            parcel.writeInt(this.maxAudioBitrate);
            C11599af.m19981a(parcel, this.exceedAudioConstraintsIfNecessary);
            C11599af.m19981a(parcel, this.allowAudioMixedMimeTypeAdaptiveness);
            C11599af.m19981a(parcel, this.allowAudioMixedSampleRateAdaptiveness);
            C11599af.m19981a(parcel, this.allowAudioMixedChannelCountAdaptiveness);
            parcel.writeList(this.preferredAudioMimeTypes);
            C11599af.m19981a(parcel, this.forceLowestBitrate);
            C11599af.m19981a(parcel, this.forceHighestSupportedBitrate);
            C11599af.m19981a(parcel, this.exceedRendererCapabilitiesIfNecessary);
            C11599af.m19981a(parcel, this.tunnelingEnabled);
            C11599af.m19981a(parcel, this.allowMultipleAdaptiveSelections);
            writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
            parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new Parcelable.Creator<SelectionOverride>() { // from class: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SelectionOverride[] newArray(int i) {
                return new SelectionOverride[i];
            }
        };
        public final int data;
        public final int groupIndex;
        public final int length;
        public final int reason;
        public final int[] tracks;

        public SelectionOverride(int i, int... iArr) {
            this(i, iArr, 2, 0);
        }

        public SelectionOverride(int i, int[] iArr, int i2, int i3) {
            this.groupIndex = i;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.tracks = copyOf;
            this.length = iArr.length;
            this.reason = i2;
            this.data = i3;
            Arrays.sort(copyOf);
        }

        SelectionOverride(Parcel parcel) {
            this.groupIndex = parcel.readInt();
            int readByte = parcel.readByte();
            this.length = readByte;
            int[] iArr = new int[readByte];
            this.tracks = iArr;
            parcel.readIntArray(iArr);
            this.reason = parcel.readInt();
            this.data = parcel.readInt();
        }

        public final boolean containsTrack(int i) {
            for (int i2 : this.tracks) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks) && this.reason == selectionOverride.reason && this.data == selectionOverride.data;
        }

        public final int hashCode() {
            return (((((this.groupIndex * 31) + Arrays.hashCode(this.tracks)) * 31) + this.reason) * 31) + this.data;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.groupIndex);
            parcel.writeInt(this.tracks.length);
            parcel.writeIntArray(this.tracks);
            parcel.writeInt(this.reason);
            parcel.writeInt(this.data);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$a.class */
    public static final class C11425a implements Comparable<C11425a> {

        /* renamed from: a */
        public final boolean f37720a;

        /* renamed from: b */
        private final String f37721b;

        /* renamed from: c */
        private final Parameters f37722c;

        /* renamed from: d */
        private final boolean f37723d;

        /* renamed from: e */
        private final int f37724e;

        /* renamed from: f */
        private final int f37725f;

        /* renamed from: g */
        private final int f37726g;

        /* renamed from: h */
        private final int f37727h;

        /* renamed from: i */
        private final int f37728i;

        /* renamed from: j */
        private final boolean f37729j;

        /* renamed from: k */
        private final int f37730k;

        /* renamed from: l */
        private final int f37731l;

        /* renamed from: m */
        private final int f37732m;

        /* renamed from: n */
        private final int f37733n;

        /* JADX WARN: Removed duplicated region for block: B:26:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0112 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x015a A[EDGE_INSN: B:46:0x015a->B:40:0x015a ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C11425a(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7) {
            /*
                Method dump skipped, instructions count: 353
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C11425a.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public final int compareTo(C11425a c11425a) {
            AbstractC15470an mo8827a = (!this.f37720a || !this.f37723d) ? DefaultTrackSelector.f37716c.mo8827a() : DefaultTrackSelector.f37716c;
            AbstractC15537n mo8739a = AbstractC15537n.m8746a().mo8736b(this.f37723d, c11425a.f37723d).mo8739a(Integer.valueOf(this.f37725f), Integer.valueOf(c11425a.f37725f), AbstractC15470an.m8833b().mo8827a()).mo8741a(this.f37724e, c11425a.f37724e).mo8741a(this.f37726g, c11425a.f37726g).mo8736b(this.f37720a, c11425a.f37720a).mo8739a(Integer.valueOf(this.f37733n), Integer.valueOf(c11425a.f37733n), AbstractC15470an.m8833b().mo8827a()).mo8739a(Integer.valueOf(this.f37732m), Integer.valueOf(c11425a.f37732m), this.f37722c.forceLowestBitrate ? DefaultTrackSelector.f37716c.mo8827a() : DefaultTrackSelector.f37717d).mo8736b(this.f37729j, c11425a.f37729j).mo8739a(Integer.valueOf(this.f37727h), Integer.valueOf(c11425a.f37727h), AbstractC15470an.m8833b().mo8827a()).mo8741a(this.f37728i, c11425a.f37728i).mo8739a(Integer.valueOf(this.f37730k), Integer.valueOf(c11425a.f37730k), mo8827a).mo8739a(Integer.valueOf(this.f37731l), Integer.valueOf(c11425a.f37731l), mo8827a);
            int i = this.f37732m;
            int i2 = c11425a.f37732m;
            if (!C11599af.m19973a((Object) this.f37721b, (Object) c11425a.f37721b)) {
                mo8827a = DefaultTrackSelector.f37717d;
            }
            return mo8739a.mo8739a(Integer.valueOf(i), Integer.valueOf(i2), mo8827a).mo8737b();
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$b.class */
    public static final class C11426b implements Comparable<C11426b> {

        /* renamed from: a */
        private final boolean f37734a;

        /* renamed from: b */
        private final boolean f37735b;

        public C11426b(Format format, int i) {
            this.f37734a = (format.selectionFlags & 1) == 0 ? false : true;
            this.f37735b = DefaultTrackSelector.m20602a(i, false);
        }

        /* renamed from: a */
        public final int compareTo(C11426b c11426b) {
            return AbstractC15537n.m8746a().mo8736b(this.f37735b, c11426b.f37735b).mo8736b(this.f37734a, c11426b.f37734a).mo8737b();
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$c.class */
    public static final class C11427c extends TrackSelectionParameters.C11431a {

        /* renamed from: A */
        private boolean f37736A;

        /* renamed from: B */
        private boolean f37737B;

        /* renamed from: C */
        private boolean f37738C;

        /* renamed from: D */
        private AbstractC15549v<String> f37739D;

        /* renamed from: E */
        private boolean f37740E;

        /* renamed from: F */
        private boolean f37741F;

        /* renamed from: G */
        private boolean f37742G;

        /* renamed from: H */
        private boolean f37743H;

        /* renamed from: I */
        private final SparseBooleanArray f37744I;

        /* renamed from: a */
        public boolean f37745a;

        /* renamed from: b */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f37746b;

        /* renamed from: i */
        private int f37747i;

        /* renamed from: j */
        private int f37748j;

        /* renamed from: k */
        private int f37749k;

        /* renamed from: l */
        private int f37750l;

        /* renamed from: m */
        private int f37751m;

        /* renamed from: n */
        private int f37752n;

        /* renamed from: o */
        private int f37753o;

        /* renamed from: p */
        private int f37754p;

        /* renamed from: q */
        private boolean f37755q;

        /* renamed from: r */
        private boolean f37756r;

        /* renamed from: s */
        private boolean f37757s;

        /* renamed from: t */
        private int f37758t;

        /* renamed from: u */
        private int f37759u;

        /* renamed from: v */
        private boolean f37760v;

        /* renamed from: w */
        private AbstractC15549v<String> f37761w;

        /* renamed from: x */
        private int f37762x;

        /* renamed from: y */
        private int f37763y;

        /* renamed from: z */
        private boolean f37764z;

        @Deprecated
        public C11427c() {
            m20579c();
            this.f37746b = new SparseArray<>();
            this.f37744I = new SparseBooleanArray();
        }

        public C11427c(Context context) {
            super(context);
            m20579c();
            this.f37746b = new SparseArray<>();
            this.f37744I = new SparseBooleanArray();
            Point m19928d = C11599af.m19928d(context);
            int i = m19928d.x;
            int i2 = m19928d.y;
            this.f37758t = i;
            this.f37759u = i2;
            this.f37760v = true;
        }

        private C11427c(Parameters parameters) {
            super(parameters);
            this.f37747i = parameters.maxVideoWidth;
            this.f37748j = parameters.maxVideoHeight;
            this.f37749k = parameters.maxVideoFrameRate;
            this.f37750l = parameters.maxVideoBitrate;
            this.f37751m = parameters.minVideoWidth;
            this.f37752n = parameters.minVideoHeight;
            this.f37753o = parameters.minVideoFrameRate;
            this.f37754p = parameters.minVideoBitrate;
            this.f37755q = parameters.exceedVideoConstraintsIfNecessary;
            this.f37756r = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.f37757s = parameters.allowVideoNonSeamlessAdaptiveness;
            this.f37758t = parameters.viewportWidth;
            this.f37759u = parameters.viewportHeight;
            this.f37760v = parameters.viewportOrientationMayChange;
            this.f37761w = parameters.preferredVideoMimeTypes;
            this.f37762x = parameters.maxAudioChannelCount;
            this.f37763y = parameters.maxAudioBitrate;
            this.f37764z = parameters.exceedAudioConstraintsIfNecessary;
            this.f37736A = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.f37737B = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.f37738C = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.f37739D = parameters.preferredAudioMimeTypes;
            this.f37740E = parameters.forceLowestBitrate;
            this.f37745a = parameters.forceHighestSupportedBitrate;
            this.f37741F = parameters.exceedRendererCapabilitiesIfNecessary;
            this.f37742G = parameters.tunnelingEnabled;
            this.f37743H = parameters.allowMultipleAdaptiveSelections;
            SparseArray sparseArray = parameters.selectionOverrides;
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
            }
            this.f37746b = sparseArray2;
            this.f37744I = parameters.rendererDisabledFlags.clone();
        }

        @EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioMimeTypes"})
        /* renamed from: c */
        private void m20579c() {
            this.f37747i = Integer.MAX_VALUE;
            this.f37748j = Integer.MAX_VALUE;
            this.f37749k = Integer.MAX_VALUE;
            this.f37750l = Integer.MAX_VALUE;
            this.f37755q = true;
            this.f37756r = false;
            this.f37757s = true;
            this.f37758t = Integer.MAX_VALUE;
            this.f37759u = Integer.MAX_VALUE;
            this.f37760v = true;
            this.f37761w = AbstractC15549v.m8720g();
            this.f37762x = Integer.MAX_VALUE;
            this.f37763y = Integer.MAX_VALUE;
            this.f37764z = true;
            this.f37736A = false;
            this.f37737B = false;
            this.f37738C = false;
            this.f37739D = AbstractC15549v.m8720g();
            this.f37740E = false;
            this.f37745a = false;
            this.f37741F = true;
            this.f37742G = false;
            this.f37743H = true;
        }

        /* renamed from: a */
        public final Parameters mo20575b() {
            return new Parameters(this.f37747i, this.f37748j, this.f37749k, this.f37750l, this.f37751m, this.f37752n, this.f37753o, this.f37754p, this.f37755q, this.f37756r, this.f37757s, this.f37758t, this.f37759u, this.f37760v, this.f37761w, this.f37781c, this.f37782d, this.f37762x, this.f37763y, this.f37764z, this.f37736A, this.f37737B, this.f37738C, this.f37739D, this.f37783e, this.f37784f, this.f37785g, this.f37786h, this.f37740E, this.f37745a, this.f37741F, this.f37742G, this.f37743H, this.f37746b, this.f37744I);
        }

        /* renamed from: a */
        public final C11427c m20581a(int i) {
            Map<TrackGroupArray, SelectionOverride> map = this.f37746b.get(i);
            if (map != null && !map.isEmpty()) {
                this.f37746b.remove(i);
            }
            return this;
        }

        /* renamed from: a */
        public final C11427c m20580a(int i, boolean z) {
            if (this.f37744I.get(i) == z) {
                return this;
            }
            if (z) {
                this.f37744I.put(i, true);
            } else {
                this.f37744I.delete(i);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.C11431a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ TrackSelectionParameters.C11431a mo20576a(Context context) {
            super.mo20576a(context);
            return this;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$d.class */
    public static final class C11428d implements Comparable<C11428d> {

        /* renamed from: a */
        public final boolean f37765a;

        /* renamed from: b */
        private final boolean f37766b;

        /* renamed from: c */
        private final boolean f37767c;

        /* renamed from: d */
        private final boolean f37768d;

        /* renamed from: e */
        private final int f37769e;

        /* renamed from: f */
        private final int f37770f;

        /* renamed from: g */
        private final int f37771g;

        /* renamed from: h */
        private final int f37772h;

        /* renamed from: i */
        private final boolean f37773i;

        /* JADX WARN: Code restructure failed: missing block: B:41:0x011d, code lost:
            if (r0 > 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C11428d(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C11428d.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public final int compareTo(C11428d c11428d) {
            AbstractC15537n mo8741a = AbstractC15537n.m8746a().mo8736b(this.f37766b, c11428d.f37766b).mo8739a(Integer.valueOf(this.f37769e), Integer.valueOf(c11428d.f37769e), AbstractC15470an.m8833b().mo8827a()).mo8741a(this.f37770f, c11428d.f37770f).mo8741a(this.f37771g, c11428d.f37771g).mo8736b(this.f37767c, c11428d.f37767c).mo8739a(Boolean.valueOf(this.f37768d), Boolean.valueOf(c11428d.f37768d), this.f37770f == 0 ? AbstractC15470an.m8833b() : AbstractC15470an.m8833b().mo8827a()).mo8741a(this.f37772h, c11428d.f37772h);
            AbstractC15537n abstractC15537n = mo8741a;
            if (this.f37771g == 0) {
                abstractC15537n = mo8741a.mo8738a(this.f37773i, c11428d.f37773i);
            }
            return abstractC15537n.mo8737b();
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$e.class */
    public static final class C11429e implements Comparable<C11429e> {

        /* renamed from: a */
        public final boolean f37774a;

        /* renamed from: b */
        private final Parameters f37775b;

        /* renamed from: c */
        private final boolean f37776c;

        /* renamed from: d */
        private final boolean f37777d;

        /* renamed from: e */
        private final int f37778e;

        /* renamed from: f */
        private final int f37779f;

        /* renamed from: g */
        private final int f37780g;

        /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0130 A[EDGE_INSN: B:54:0x0130->B:51:0x0130 ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C11429e(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7, boolean r8) {
            /*
                Method dump skipped, instructions count: 311
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C11429e.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, boolean):void");
        }

        /* renamed from: a */
        public final int compareTo(C11429e c11429e) {
            AbstractC15470an mo8827a = (!this.f37774a || !this.f37777d) ? DefaultTrackSelector.f37716c.mo8827a() : DefaultTrackSelector.f37716c;
            return AbstractC15537n.m8746a().mo8736b(this.f37777d, c11429e.f37777d).mo8736b(this.f37774a, c11429e.f37774a).mo8736b(this.f37776c, c11429e.f37776c).mo8739a(Integer.valueOf(this.f37780g), Integer.valueOf(c11429e.f37780g), AbstractC15470an.m8833b().mo8827a()).mo8739a(Integer.valueOf(this.f37778e), Integer.valueOf(c11429e.f37778e), this.f37775b.forceLowestBitrate ? DefaultTrackSelector.f37716c.mo8827a() : DefaultTrackSelector.f37717d).mo8739a(Integer.valueOf(this.f37779f), Integer.valueOf(c11429e.f37779f), mo8827a).mo8739a(Integer.valueOf(this.f37778e), Integer.valueOf(c11429e.f37778e), mo8827a).mo8737b();
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, new C11432a.C11434b());
    }

    public DefaultTrackSelector(Context context) {
        this(context, new C11432a.C11434b());
    }

    public DefaultTrackSelector(Context context, AbstractC11436c.AbstractC11438b abstractC11438b) {
        this(Parameters.getDefaults(context), abstractC11438b);
    }

    public DefaultTrackSelector(Parameters parameters, AbstractC11436c.AbstractC11438b abstractC11438b) {
        this.f37718e = abstractC11438b;
        this.f37719f = new AtomicReference<>(parameters);
    }

    @Deprecated
    public DefaultTrackSelector(AbstractC11436c.AbstractC11438b abstractC11438b) {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, abstractC11438b);
    }

    /* renamed from: a */
    protected static int m20600a(Format format, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(format.language)) {
            String m20591a = m20591a(str);
            String m20591a2 = m20591a(format.language);
            if (m20591a2 == null || m20591a == null) {
                return (!z || m20591a2 != null) ? 0 : 1;
            } else if (m20591a2.startsWith(m20591a) || m20591a.startsWith(m20591a2)) {
                return 3;
            } else {
                return C11599af.m19943b(m20591a2, VerificationLanguage.REGION_PREFIX)[0].equals(C11599af.m19943b(m20591a, VerificationLanguage.REGION_PREFIX)[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    /* renamed from: a */
    private static int m20598a(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            if (i10 < list.size()) {
                int intValue = list.get(i10).intValue();
                int i13 = i12;
                if (m20601a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                    i13 = i12 + 1;
                }
                i10++;
                i11 = i13;
            } else {
                return i12;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m20592a(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point m20590a(boolean r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = r6
            if (r0 == 0) goto L2b
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 <= r1) goto L13
            r0 = 1
            r12 = r0
            goto L16
        L13:
            r0 = 0
            r12 = r0
        L16:
            r0 = r7
            r1 = r8
            if (r0 <= r1) goto L1e
            goto L21
        L1e:
            r0 = 0
            r11 = r0
        L21:
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L2b
            goto L33
        L2b:
            r0 = r7
            r12 = r0
            r0 = r8
            r7 = r0
            r0 = r12
            r8 = r0
        L33:
            r0 = r9
            r1 = r7
            int r0 = r0 * r1
            r12 = r0
            r0 = r10
            r1 = r8
            int r0 = r0 * r1
            r11 = r0
            r0 = r12
            r1 = r11
            if (r0 < r1) goto L54
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r8
            r3 = r11
            r4 = r9
            int r3 = com.google.android.exoplayer2.util.C11599af.m19998a(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L54:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r12
            r3 = r10
            int r2 = com.google.android.exoplayer2.util.C11599af.m19998a(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m20590a(boolean, int, int, int, int):android.graphics.Point");
    }

    /* renamed from: a */
    private static Pair<AbstractC11436c.C11437a, C11428d> m20596a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) throws ExoPlaybackException {
        int i = -1;
        TrackGroup trackGroup = null;
        C11428d c11428d = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i3 = 0;
            while (i3 < trackGroup2.length) {
                int i4 = i;
                TrackGroup trackGroup3 = trackGroup;
                C11428d c11428d2 = c11428d;
                if (m20602a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    C11428d c11428d3 = new C11428d(trackGroup2.getFormat(i3), parameters, iArr2[i3], str);
                    i4 = i;
                    trackGroup3 = trackGroup;
                    c11428d2 = c11428d;
                    if (c11428d3.f37765a) {
                        if (c11428d != null) {
                            i4 = i;
                            trackGroup3 = trackGroup;
                            c11428d2 = c11428d;
                            if (c11428d3.compareTo(c11428d) <= 0) {
                            }
                        }
                        trackGroup3 = trackGroup2;
                        i4 = i3;
                        c11428d2 = c11428d3;
                    }
                }
                i3++;
                i = i4;
                trackGroup = trackGroup3;
                c11428d = c11428d2;
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new AbstractC11436c.C11437a(trackGroup, i), (C11428d) C11593a.m20020b(c11428d));
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01e3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer2.trackselection.AbstractC11436c.C11437a, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C11425a> m20595a(com.google.android.exoplayer2.source.TrackGroupArray r8, int[][] r9, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r10, boolean r11) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m20595a(com.google.android.exoplayer2.source.TrackGroupArray, int[][], com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, boolean):android.util.Pair");
    }

    /* renamed from: a */
    private static AbstractC11436c.C11437a m20597a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i = -1;
        TrackGroup trackGroup = null;
        C11429e c11429e = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            List<Integer> m20599a = m20599a(trackGroup2, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            int[] iArr2 = iArr[i2];
            int i3 = 0;
            while (i3 < trackGroup2.length) {
                Format format = trackGroup2.getFormat(i3);
                int i4 = i;
                TrackGroup trackGroup3 = trackGroup;
                C11429e c11429e2 = c11429e;
                if ((format.roleFlags & 16384) == 0) {
                    i4 = i;
                    trackGroup3 = trackGroup;
                    c11429e2 = c11429e;
                    if (m20602a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                        C11429e c11429e3 = new C11429e(format, parameters, iArr2[i3], m20599a.contains(Integer.valueOf(i3)));
                        if (!c11429e3.f37774a) {
                            i4 = i;
                            trackGroup3 = trackGroup;
                            c11429e2 = c11429e;
                            if (!parameters.exceedVideoConstraintsIfNecessary) {
                            }
                        }
                        if (c11429e != null) {
                            i4 = i;
                            trackGroup3 = trackGroup;
                            c11429e2 = c11429e;
                            if (c11429e3.compareTo(c11429e) <= 0) {
                            }
                        }
                        trackGroup3 = trackGroup2;
                        i4 = i3;
                        c11429e2 = c11429e3;
                    }
                }
                i3++;
                i = i4;
                trackGroup = trackGroup3;
                c11429e = c11429e2;
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new AbstractC11436c.C11437a(trackGroup, i);
    }

    /* renamed from: a */
    protected static String m20591a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* renamed from: a */
    private static List<Integer> m20599a(TrackGroup trackGroup, int i, int i2, boolean z) {
        int i3;
        ArrayList arrayList = new ArrayList(trackGroup.length);
        int i4 = 0;
        for (int i5 = 0; i5 < trackGroup.length; i5++) {
            arrayList.add(Integer.valueOf(i5));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i6 = Integer.MAX_VALUE;
            while (true) {
                i3 = i6;
                if (i4 >= trackGroup.length) {
                    break;
                }
                Format format = trackGroup.getFormat(i4);
                int i7 = i3;
                if (format.width > 0) {
                    i7 = i3;
                    if (format.height > 0) {
                        Point m20590a = m20590a(z, i, i2, format.width, format.height);
                        int i8 = format.width * format.height;
                        i7 = i3;
                        if (format.width >= ((int) (m20590a.x * 0.98f))) {
                            i7 = i3;
                            if (format.height >= ((int) (m20590a.y * 0.98f))) {
                                i7 = i3;
                                if (i8 < i3) {
                                    i7 = i8;
                                }
                            }
                        }
                    }
                }
                i4++;
                i6 = i7;
            }
            if (i3 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i3) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00da A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m20593a(com.google.android.exoplayer2.trackselection.AbstractC11440e.C11441a r4, int[][][] r5, com.google.android.exoplayer2.RendererConfiguration[] r6, com.google.android.exoplayer2.trackselection.AbstractC11436c[] r7) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m20593a(com.google.android.exoplayer2.trackselection.e$a, int[][][], com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.c[]):void");
    }

    /* renamed from: a */
    protected static boolean m20602a(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m20601a(Format format, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if ((format.roleFlags & 16384) == 0 && m20602a(i, false) && (i & i2) != 0) {
            if (str != null && !C11599af.m19973a((Object) format.sampleMimeType, (Object) str)) {
                return false;
            }
            if (format.width != -1 && (i7 > format.width || format.width > i3)) {
                return false;
            }
            if (format.height != -1 && (i8 > format.height || format.height > i4)) {
                return false;
            }
            if (format.frameRate != -1.0f && (i9 > format.frameRate || format.frameRate > i5)) {
                return false;
            }
            if (format.bitrate == -1) {
                return true;
            }
            return i10 <= format.bitrate && format.bitrate <= i6;
        }
        return false;
    }

    /* renamed from: b */
    public static /* synthetic */ int m20586b(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        } else if (num2.intValue() != -1) {
            return num.intValue() - num2.intValue();
        } else {
            return 1;
        }
    }

    /* renamed from: b */
    private static AbstractC11436c.C11437a m20587b(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        C11426b c11426b = null;
        int i = 0;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i3 = 0;
            while (i3 < trackGroup2.length) {
                TrackGroup trackGroup3 = trackGroup;
                int i4 = i;
                C11426b c11426b2 = c11426b;
                if (m20602a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    C11426b c11426b3 = new C11426b(trackGroup2.getFormat(i3), iArr2[i3]);
                    if (c11426b != null) {
                        trackGroup3 = trackGroup;
                        i4 = i;
                        c11426b2 = c11426b;
                        if (c11426b3.compareTo(c11426b) <= 0) {
                        }
                    }
                    trackGroup3 = trackGroup2;
                    i4 = i3;
                    c11426b2 = c11426b3;
                }
                i3++;
                trackGroup = trackGroup3;
                i = i4;
                c11426b = c11426b2;
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new AbstractC11436c.C11437a(trackGroup, i);
    }

    /* renamed from: b */
    private static void m20588b(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!m20601a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                list.remove(size);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02cf  */
    @Override // com.google.android.exoplayer2.trackselection.AbstractC11440e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final android.util.Pair<com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.AbstractC11436c[]> mo20564a(com.google.android.exoplayer2.trackselection.AbstractC11440e.C11441a r15, int[][][] r16, int[] r17) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.mo20564a(com.google.android.exoplayer2.trackselection.e$a, int[][][], int[]):android.util.Pair");
    }

    /* renamed from: a */
    public final Parameters m20603a() {
        return this.f37719f.get();
    }

    /* renamed from: a */
    public final void m20594a(C11427c c11427c) {
        Parameters mo20575b = c11427c.mo20575b();
        C11593a.m20020b(mo20575b);
        if (!this.f37719f.getAndSet(mo20575b).equals(mo20575b)) {
            m20553d();
        }
    }
}
