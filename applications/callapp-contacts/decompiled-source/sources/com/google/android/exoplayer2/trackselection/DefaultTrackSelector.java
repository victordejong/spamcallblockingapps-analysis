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
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.trackselection.a;
import com.google.android.exoplayer2.trackselection.c;
import com.google.android.exoplayer2.util.af;
import com.google.common.collect.an;
import com.google.common.collect.n;
import com.google.common.collect.v;
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
public final class DefaultTrackSelector extends com.google.android.exoplayer2.trackselection.e {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f21899b = new int[0];

    /* renamed from: c  reason: collision with root package name */
    private static final an<Integer> f21900c = an.a((Comparator) _$$Lambda$DefaultTrackSelector$Z2Vlah_5LKefLbYS6DEef6odOek.INSTANCE);

    /* renamed from: d  reason: collision with root package name */
    private static final an<Integer> f21901d = an.a((Comparator) _$$Lambda$DefaultTrackSelector$ipqbCtpmBMyKx__d5oPRaYqjyEA.INSTANCE);
    private final c.b e;
    private final AtomicReference<Parameters> f;

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
        public final v<String> preferredAudioMimeTypes;
        public final v<String> preferredVideoMimeTypes;
        private final SparseBooleanArray rendererDisabledFlags;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final boolean tunnelingEnabled;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;
        public static final Parameters DEFAULT_WITHOUT_CONTEXT = new c().b();
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

        Parameters(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, boolean z2, boolean z3, int i9, int i10, boolean z4, v<String> vVar, v<String> vVar2, int i11, int i12, int i13, boolean z5, boolean z6, boolean z7, boolean z8, v<String> vVar3, v<String> vVar4, int i14, boolean z9, int i15, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(vVar2, i11, vVar4, i14, z9, i15);
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
            this.preferredVideoMimeTypes = vVar;
            this.maxAudioChannelCount = i12;
            this.maxAudioBitrate = i13;
            this.exceedAudioConstraintsIfNecessary = z5;
            this.allowAudioMixedMimeTypeAdaptiveness = z6;
            this.allowAudioMixedSampleRateAdaptiveness = z7;
            this.allowAudioMixedChannelCountAdaptiveness = z8;
            this.preferredAudioMimeTypes = vVar3;
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
            this.exceedVideoConstraintsIfNecessary = af.a(parcel);
            this.allowVideoMixedMimeTypeAdaptiveness = af.a(parcel);
            this.allowVideoNonSeamlessAdaptiveness = af.a(parcel);
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = af.a(parcel);
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, null);
            this.preferredVideoMimeTypes = v.a((Collection) arrayList);
            this.maxAudioChannelCount = parcel.readInt();
            this.maxAudioBitrate = parcel.readInt();
            this.exceedAudioConstraintsIfNecessary = af.a(parcel);
            this.allowAudioMixedMimeTypeAdaptiveness = af.a(parcel);
            this.allowAudioMixedSampleRateAdaptiveness = af.a(parcel);
            this.allowAudioMixedChannelCountAdaptiveness = af.a(parcel);
            ArrayList arrayList2 = new ArrayList();
            parcel.readList(arrayList2, null);
            this.preferredAudioMimeTypes = v.a((Collection) arrayList2);
            this.forceLowestBitrate = af.a(parcel);
            this.forceHighestSupportedBitrate = af.a(parcel);
            this.exceedRendererCapabilitiesIfNecessary = af.a(parcel);
            this.tunnelingEnabled = af.a(parcel);
            this.allowMultipleAdaptiveSelections = af.a(parcel);
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = (SparseBooleanArray) af.a(parcel.readSparseBooleanArray());
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
                if (r0 == r1) goto L_0x0013
                r0 = 0
                return r0
            L_0x0013:
                r0 = r4
                java.util.Set r0 = r0.entrySet()
                java.util.Iterator r0 = r0.iterator()
                r7 = r0
            L_0x001f:
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x005e
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
                if (r0 == 0) goto L_0x005c
                r0 = r8
                java.lang.Object r0 = r0.getValue()
                r1 = r5
                r2 = r4
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = com.google.android.exoplayer2.util.af.a(r0, r1)
                if (r0 != 0) goto L_0x001f
            L_0x005c:
                r0 = 0
                return r0
            L_0x005e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
        }

        public static Parameters getDefaults(Context context) {
            return new c(context).b();
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    hashMap.put((TrackGroupArray) com.google.android.exoplayer2.util.a.b((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader())), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
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
        public final c buildUpon() {
            return new c(this);
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
            af.a(parcel, this.exceedVideoConstraintsIfNecessary);
            af.a(parcel, this.allowVideoMixedMimeTypeAdaptiveness);
            af.a(parcel, this.allowVideoNonSeamlessAdaptiveness);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            af.a(parcel, this.viewportOrientationMayChange);
            parcel.writeList(this.preferredVideoMimeTypes);
            parcel.writeInt(this.maxAudioChannelCount);
            parcel.writeInt(this.maxAudioBitrate);
            af.a(parcel, this.exceedAudioConstraintsIfNecessary);
            af.a(parcel, this.allowAudioMixedMimeTypeAdaptiveness);
            af.a(parcel, this.allowAudioMixedSampleRateAdaptiveness);
            af.a(parcel, this.allowAudioMixedChannelCountAdaptiveness);
            parcel.writeList(this.preferredAudioMimeTypes);
            af.a(parcel, this.forceLowestBitrate);
            af.a(parcel, this.forceHighestSupportedBitrate);
            af.a(parcel, this.exceedRendererCapabilitiesIfNecessary);
            af.a(parcel, this.tunnelingEnabled);
            af.a(parcel, this.allowMultipleAdaptiveSelections);
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$a.class */
    public static final class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f21902a;

        /* renamed from: b  reason: collision with root package name */
        private final String f21903b;

        /* renamed from: c  reason: collision with root package name */
        private final Parameters f21904c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f21905d;
        private final int e;
        private final int f;
        private final int g;
        private final int h;
        private final int i;
        private final boolean j;
        private final int k;
        private final int l;
        private final int m;
        private final int n;

        /* JADX WARN: Removed duplicated region for block: B:26:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0112 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x015a A[EDGE_INSN: B:46:0x015a->B:40:0x015a ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7) {
            /*
                Method dump skipped, instructions count: 353
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public final int compareTo(a aVar) {
            an a2 = (!this.f21902a || !this.f21905d) ? DefaultTrackSelector.f21900c.a() : DefaultTrackSelector.f21900c;
            n a3 = n.a().b(this.f21905d, aVar.f21905d).a(Integer.valueOf(this.f), Integer.valueOf(aVar.f), an.b().a()).a(this.e, aVar.e).a(this.g, aVar.g).b(this.f21902a, aVar.f21902a).a(Integer.valueOf(this.n), Integer.valueOf(aVar.n), an.b().a()).a(Integer.valueOf(this.m), Integer.valueOf(aVar.m), this.f21904c.forceLowestBitrate ? DefaultTrackSelector.f21900c.a() : DefaultTrackSelector.f21901d).b(this.j, aVar.j).a(Integer.valueOf(this.h), Integer.valueOf(aVar.h), an.b().a()).a(this.i, aVar.i).a(Integer.valueOf(this.k), Integer.valueOf(aVar.k), a2).a(Integer.valueOf(this.l), Integer.valueOf(aVar.l), a2);
            int i = this.m;
            int i2 = aVar.m;
            if (!af.a((Object) this.f21903b, (Object) aVar.f21903b)) {
                a2 = DefaultTrackSelector.f21901d;
            }
            return a3.a(Integer.valueOf(i), Integer.valueOf(i2), a2).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$b.class */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f21906a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f21907b;

        public b(Format format, int i) {
            this.f21906a = (format.selectionFlags & 1) == 0 ? false : true;
            this.f21907b = DefaultTrackSelector.a(i, false);
        }

        /* renamed from: a */
        public final int compareTo(b bVar) {
            return n.a().b(this.f21907b, bVar.f21907b).b(this.f21906a, bVar.f21906a).b();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$c.class */
    public static final class c extends TrackSelectionParameters.a {
        private boolean A;
        private boolean B;
        private boolean C;
        private v<String> D;
        private boolean E;
        private boolean F;
        private boolean G;
        private boolean H;
        private final SparseBooleanArray I;

        /* renamed from: a  reason: collision with root package name */
        public boolean f21908a;

        /* renamed from: b  reason: collision with root package name */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f21909b;
        private int i;
        private int j;
        private int k;
        private int l;
        private int m;
        private int n;
        private int o;
        private int p;
        private boolean q;
        private boolean r;
        private boolean s;
        private int t;
        private int u;
        private boolean v;
        private v<String> w;
        private int x;
        private int y;
        private boolean z;

        @Deprecated
        public c() {
            c();
            this.f21909b = new SparseArray<>();
            this.I = new SparseBooleanArray();
        }

        public c(Context context) {
            super(context);
            c();
            this.f21909b = new SparseArray<>();
            this.I = new SparseBooleanArray();
            Point d2 = af.d(context);
            int i = d2.x;
            int i2 = d2.y;
            this.t = i;
            this.u = i2;
            this.v = true;
        }

        private c(Parameters parameters) {
            super(parameters);
            this.i = parameters.maxVideoWidth;
            this.j = parameters.maxVideoHeight;
            this.k = parameters.maxVideoFrameRate;
            this.l = parameters.maxVideoBitrate;
            this.m = parameters.minVideoWidth;
            this.n = parameters.minVideoHeight;
            this.o = parameters.minVideoFrameRate;
            this.p = parameters.minVideoBitrate;
            this.q = parameters.exceedVideoConstraintsIfNecessary;
            this.r = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.s = parameters.allowVideoNonSeamlessAdaptiveness;
            this.t = parameters.viewportWidth;
            this.u = parameters.viewportHeight;
            this.v = parameters.viewportOrientationMayChange;
            this.w = parameters.preferredVideoMimeTypes;
            this.x = parameters.maxAudioChannelCount;
            this.y = parameters.maxAudioBitrate;
            this.z = parameters.exceedAudioConstraintsIfNecessary;
            this.A = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.B = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.C = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.D = parameters.preferredAudioMimeTypes;
            this.E = parameters.forceLowestBitrate;
            this.f21908a = parameters.forceHighestSupportedBitrate;
            this.F = parameters.exceedRendererCapabilitiesIfNecessary;
            this.G = parameters.tunnelingEnabled;
            this.H = parameters.allowMultipleAdaptiveSelections;
            SparseArray sparseArray = parameters.selectionOverrides;
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
            }
            this.f21909b = sparseArray2;
            this.I = parameters.rendererDisabledFlags.clone();
        }

        @EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioMimeTypes"})
        private void c() {
            this.i = Integer.MAX_VALUE;
            this.j = Integer.MAX_VALUE;
            this.k = Integer.MAX_VALUE;
            this.l = Integer.MAX_VALUE;
            this.q = true;
            this.r = false;
            this.s = true;
            this.t = Integer.MAX_VALUE;
            this.u = Integer.MAX_VALUE;
            this.v = true;
            this.w = v.g();
            this.x = Integer.MAX_VALUE;
            this.y = Integer.MAX_VALUE;
            this.z = true;
            this.A = false;
            this.B = false;
            this.C = false;
            this.D = v.g();
            this.E = false;
            this.f21908a = false;
            this.F = true;
            this.G = false;
            this.H = true;
        }

        /* renamed from: a */
        public final Parameters b() {
            return new Parameters(this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.f21918c, this.f21919d, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.e, this.f, this.g, this.h, this.E, this.f21908a, this.F, this.G, this.H, this.f21909b, this.I);
        }

        public final c a(int i) {
            Map<TrackGroupArray, SelectionOverride> map = this.f21909b.get(i);
            if (map != null && !map.isEmpty()) {
                this.f21909b.remove(i);
            }
            return this;
        }

        public final c a(int i, boolean z) {
            if (this.I.get(i) == z) {
                return this;
            }
            if (z) {
                this.I.put(i, true);
            } else {
                this.I.delete(i);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.a
        public final /* bridge */ /* synthetic */ TrackSelectionParameters.a a(Context context) {
            super.a(context);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$d.class */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f21910a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f21911b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f21912c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f21913d;
        private final int e;
        private final int f;
        private final int g;
        private final int h;
        private final boolean i;

        /* JADX WARN: Code restructure failed: missing block: B:41:0x011d, code lost:
            if (r0 > 0) goto L_0x0120;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public d(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.d.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public final int compareTo(d dVar) {
            n a2 = n.a().b(this.f21911b, dVar.f21911b).a(Integer.valueOf(this.e), Integer.valueOf(dVar.e), an.b().a()).a(this.f, dVar.f).a(this.g, dVar.g).b(this.f21912c, dVar.f21912c).a(Boolean.valueOf(this.f21913d), Boolean.valueOf(dVar.f21913d), this.f == 0 ? an.b() : an.b().a()).a(this.h, dVar.h);
            n nVar = a2;
            if (this.g == 0) {
                nVar = a2.a(this.i, dVar.i);
            }
            return nVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$e.class */
    public static final class e implements Comparable<e> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f21914a;

        /* renamed from: b  reason: collision with root package name */
        private final Parameters f21915b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f21916c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f21917d;
        private final int e;
        private final int f;
        private final int g;

        /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0130 A[EDGE_INSN: B:54:0x0130->B:51:0x0130 ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public e(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7, boolean r8) {
            /*
                Method dump skipped, instructions count: 311
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.e.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, boolean):void");
        }

        /* renamed from: a */
        public final int compareTo(e eVar) {
            an a2 = (!this.f21914a || !this.f21917d) ? DefaultTrackSelector.f21900c.a() : DefaultTrackSelector.f21900c;
            return n.a().b(this.f21917d, eVar.f21917d).b(this.f21914a, eVar.f21914a).b(this.f21916c, eVar.f21916c).a(Integer.valueOf(this.g), Integer.valueOf(eVar.g), an.b().a()).a(Integer.valueOf(this.e), Integer.valueOf(eVar.e), this.f21915b.forceLowestBitrate ? DefaultTrackSelector.f21900c.a() : DefaultTrackSelector.f21901d).a(Integer.valueOf(this.f), Integer.valueOf(eVar.f), a2).a(Integer.valueOf(this.e), Integer.valueOf(eVar.e), a2).b();
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, new a.b());
    }

    public DefaultTrackSelector(Context context) {
        this(context, new a.b());
    }

    public DefaultTrackSelector(Context context, c.b bVar) {
        this(Parameters.getDefaults(context), bVar);
    }

    public DefaultTrackSelector(Parameters parameters, c.b bVar) {
        this.e = bVar;
        this.f = new AtomicReference<>(parameters);
    }

    @Deprecated
    public DefaultTrackSelector(c.b bVar) {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, bVar);
    }

    protected static int a(Format format, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(format.language)) {
            return 4;
        }
        String a2 = a(str);
        String a3 = a(format.language);
        if (a3 == null || a2 == null) {
            return (!z || a3 != null) ? 0 : 1;
        }
        if (a3.startsWith(a2) || a2.startsWith(a3)) {
            return 3;
        }
        return af.b(a3, VerificationLanguage.REGION_PREFIX)[0].equals(af.b(a2, VerificationLanguage.REGION_PREFIX)[0]) ? 2 : 0;
    }

    private static int a(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            int intValue = list.get(i11).intValue();
            i10 = i10;
            if (a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L_0x0033;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point a(boolean r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = r6
            if (r0 == 0) goto L_0x002b
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 <= r1) goto L_0x0013
            r0 = 1
            r12 = r0
            goto L_0x0016
        L_0x0013:
            r0 = 0
            r12 = r0
        L_0x0016:
            r0 = r7
            r1 = r8
            if (r0 <= r1) goto L_0x001e
            goto L_0x0021
        L_0x001e:
            r0 = 0
            r11 = r0
        L_0x0021:
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L_0x002b
            goto L_0x0033
        L_0x002b:
            r0 = r7
            r12 = r0
            r0 = r8
            r7 = r0
            r0 = r12
            r8 = r0
        L_0x0033:
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
            if (r0 < r1) goto L_0x0054
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r8
            r3 = r11
            r4 = r9
            int r3 = com.google.android.exoplayer2.util.af.a(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L_0x0054:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r12
            r3 = r10
            int r2 = com.google.android.exoplayer2.util.af.a(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a(boolean, int, int, int, int):android.graphics.Point");
    }

    private static Pair<c.a, d> a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) throws ExoPlaybackException {
        int i = -1;
        TrackGroup trackGroup = null;
        d dVar = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                i = i;
                trackGroup = trackGroup;
                dVar = dVar;
                if (a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    d dVar2 = new d(trackGroup2.getFormat(i3), parameters, iArr2[i3], str);
                    i = i;
                    trackGroup = trackGroup;
                    dVar = dVar;
                    if (dVar2.f21910a) {
                        if (dVar != null) {
                            i = i;
                            trackGroup = trackGroup;
                            dVar = dVar;
                            if (dVar2.compareTo(dVar) <= 0) {
                            }
                        }
                        trackGroup = trackGroup2;
                        i = i3;
                        dVar = dVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new c.a(trackGroup, i), (d) com.google.android.exoplayer2.util.a.b(dVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer2.trackselection.c.a, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a> a(com.google.android.exoplayer2.source.TrackGroupArray r8, int[][] r9, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r10, boolean r11) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a(com.google.android.exoplayer2.source.TrackGroupArray, int[][], com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, boolean):android.util.Pair");
    }

    private static c.a a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i = -1;
        TrackGroup trackGroup = null;
        e eVar = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            List<Integer> a2 = a(trackGroup2, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                Format format = trackGroup2.getFormat(i3);
                i = i;
                trackGroup = trackGroup;
                eVar = eVar;
                if ((format.roleFlags & 16384) == 0) {
                    i = i;
                    trackGroup = trackGroup;
                    eVar = eVar;
                    if (a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                        e eVar2 = new e(format, parameters, iArr2[i3], a2.contains(Integer.valueOf(i3)));
                        if (!eVar2.f21914a) {
                            i = i;
                            trackGroup = trackGroup;
                            eVar = eVar;
                            if (!parameters.exceedVideoConstraintsIfNecessary) {
                            }
                        }
                        if (eVar != null) {
                            i = i;
                            trackGroup = trackGroup;
                            eVar = eVar;
                            if (eVar2.compareTo(eVar) <= 0) {
                            }
                        }
                        trackGroup = trackGroup2;
                        i = i3;
                        eVar = eVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new c.a(trackGroup, i);
    }

    protected static String a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private static List<Integer> a(TrackGroup trackGroup, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.length);
        for (int i3 = 0; i3 < trackGroup.length; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (!(i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE)) {
            int i4 = Integer.MAX_VALUE;
            for (int i5 = 0; i5 < trackGroup.length; i5++) {
                Format format = trackGroup.getFormat(i5);
                i4 = i4;
                if (format.width > 0) {
                    i4 = i4;
                    if (format.height > 0) {
                        Point a2 = a(z, i, i2, format.width, format.height);
                        int i6 = format.width * format.height;
                        i4 = i4;
                        if (format.width >= ((int) (a2.x * 0.98f))) {
                            i4 = i4;
                            if (format.height >= ((int) (a2.y * 0.98f))) {
                                i4 = i4;
                                if (i6 < i4) {
                                    i4 = i6;
                                }
                            }
                        }
                    }
                }
            }
            if (i4 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i4) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00da A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.exoplayer2.trackselection.e.a r4, int[][][] r5, com.google.android.exoplayer2.RendererConfiguration[] r6, com.google.android.exoplayer2.trackselection.c[] r7) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a(com.google.android.exoplayer2.trackselection.e$a, int[][][], com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.c[]):void");
    }

    protected static boolean a(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    private static boolean a(Format format, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if ((format.roleFlags & 16384) != 0 || !a(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !af.a((Object) format.sampleMimeType, (Object) str)) {
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
        if (format.bitrate != -1) {
            return i10 <= format.bitrate && format.bitrate <= i6;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    private static c.a b(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        b bVar = null;
        int i = 0;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                trackGroup = trackGroup;
                i = i;
                bVar = bVar;
                if (a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    b bVar2 = new b(trackGroup2.getFormat(i3), iArr2[i3]);
                    if (bVar != null) {
                        trackGroup = trackGroup;
                        i = i;
                        bVar = bVar;
                        if (bVar2.compareTo(bVar) <= 0) {
                        }
                    }
                    trackGroup = trackGroup2;
                    i = i3;
                    bVar = bVar2;
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new c.a(trackGroup, i);
    }

    private static void b(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                list.remove(size);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02cf  */
    @Override // com.google.android.exoplayer2.trackselection.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final android.util.Pair<com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.c[]> a(com.google.android.exoplayer2.trackselection.e.a r15, int[][][] r16, int[] r17) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a(com.google.android.exoplayer2.trackselection.e$a, int[][][], int[]):android.util.Pair");
    }

    public final Parameters a() {
        return this.f.get();
    }

    public final void a(c cVar) {
        Parameters a2 = cVar.b();
        com.google.android.exoplayer2.util.a.b(a2);
        if (!this.f.getAndSet(a2).equals(a2)) {
            d();
        }
    }
}
