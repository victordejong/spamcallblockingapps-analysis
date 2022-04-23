package androidx.media2.exoplayer.external.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters;
import androidx.media2.exoplayer.external.trackselection.a;
import androidx.media2.exoplayer.external.trackselection.d;
import androidx.media2.exoplayer.external.trackselection.e;
import androidx.media2.exoplayer.external.util.ac;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector.class */
public final class DefaultTrackSelector extends d {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f3947d = new int[0];
    private final e.b e;
    private final AtomicReference<Parameters> f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple.class */
    public static final class AudioConfigurationTuple {
        public final int channelCount;
        public final String mimeType;
        public final int sampleRate;

        public AudioConfigurationTuple(int i, int i2, String str) {
            this.channelCount = i;
            this.sampleRate = i2;
            this.mimeType = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AudioConfigurationTuple audioConfigurationTuple = (AudioConfigurationTuple) obj;
            return this.channelCount == audioConfigurationTuple.channelCount && this.sampleRate == audioConfigurationTuple.sampleRate && TextUtils.equals(this.mimeType, audioConfigurationTuple.mimeType);
        }

        public final int hashCode() {
            int i = this.channelCount;
            int i2 = this.sampleRate;
            String str = this.mimeType;
            return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {
        public static final Parcelable.Creator<Parameters> CREATOR = new Parcelable.Creator<Parameters>() { // from class: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Parameters[] newArray(int i) {
                return new Parameters[i];
            }
        };
        @Deprecated
        public static final Parameters DEFAULT;
        public static final Parameters DEFAULT_WITHOUT_VIEWPORT;
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        @Deprecated
        public final boolean allowMixedMimeAdaptiveness;
        @Deprecated
        public final boolean allowNonSeamlessAdaptiveness;
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
        private final SparseBooleanArray rendererDisabledFlags;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final int tunnelingAudioSessionId;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;

        static {
            Parameters parameters = new Parameters();
            DEFAULT_WITHOUT_VIEWPORT = parameters;
            DEFAULT = parameters;
        }

        private Parameters() {
            this(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true, TrackSelectionParameters.DEFAULT.preferredAudioLanguage, Integer.MAX_VALUE, Integer.MAX_VALUE, true, false, false, false, TrackSelectionParameters.DEFAULT.preferredTextLanguage, TrackSelectionParameters.DEFAULT.selectUndeterminedTextLanguage, TrackSelectionParameters.DEFAULT.disabledTextTrackSelectionFlags, false, false, true, 0, new SparseArray(), new SparseBooleanArray());
        }

        Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, String str, int i7, int i8, boolean z5, boolean z6, boolean z7, boolean z8, String str2, boolean z9, int i9, boolean z10, boolean z11, boolean z12, int i10, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, z9, i9);
            this.maxVideoWidth = i;
            this.maxVideoHeight = i2;
            this.maxVideoFrameRate = i3;
            this.maxVideoBitrate = i4;
            this.exceedVideoConstraintsIfNecessary = z;
            this.allowVideoMixedMimeTypeAdaptiveness = z2;
            this.allowVideoNonSeamlessAdaptiveness = z3;
            this.viewportWidth = i5;
            this.viewportHeight = i6;
            this.viewportOrientationMayChange = z4;
            this.maxAudioChannelCount = i7;
            this.maxAudioBitrate = i8;
            this.exceedAudioConstraintsIfNecessary = z5;
            this.allowAudioMixedMimeTypeAdaptiveness = z6;
            this.allowAudioMixedSampleRateAdaptiveness = z7;
            this.allowAudioMixedChannelCountAdaptiveness = z8;
            this.forceLowestBitrate = z10;
            this.forceHighestSupportedBitrate = z11;
            this.exceedRendererCapabilitiesIfNecessary = z12;
            this.tunnelingAudioSessionId = i10;
            this.allowMixedMimeAdaptiveness = z2;
            this.allowNonSeamlessAdaptiveness = z3;
            this.selectionOverrides = sparseArray;
            this.rendererDisabledFlags = sparseBooleanArray;
        }

        Parameters(Parcel parcel) {
            super(parcel);
            this.maxVideoWidth = parcel.readInt();
            this.maxVideoHeight = parcel.readInt();
            this.maxVideoFrameRate = parcel.readInt();
            this.maxVideoBitrate = parcel.readInt();
            this.exceedVideoConstraintsIfNecessary = ac.a(parcel);
            boolean a2 = ac.a(parcel);
            this.allowVideoMixedMimeTypeAdaptiveness = a2;
            boolean a3 = ac.a(parcel);
            this.allowVideoNonSeamlessAdaptiveness = a3;
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = ac.a(parcel);
            this.maxAudioChannelCount = parcel.readInt();
            this.maxAudioBitrate = parcel.readInt();
            this.exceedAudioConstraintsIfNecessary = ac.a(parcel);
            this.allowAudioMixedMimeTypeAdaptiveness = ac.a(parcel);
            this.allowAudioMixedSampleRateAdaptiveness = ac.a(parcel);
            this.allowAudioMixedChannelCountAdaptiveness = ac.a(parcel);
            this.forceLowestBitrate = ac.a(parcel);
            this.forceHighestSupportedBitrate = ac.a(parcel);
            this.exceedRendererCapabilitiesIfNecessary = ac.a(parcel);
            this.tunnelingAudioSessionId = parcel.readInt();
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = (SparseBooleanArray) ac.a(parcel.readSparseBooleanArray());
            this.allowMixedMimeAdaptiveness = a2;
            this.allowNonSeamlessAdaptiveness = a3;
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
        private static boolean areSelectionOverridesEqual(java.util.Map<androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
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
                r4 = r0
            L_0x001f:
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x005e
                r0 = r4
                java.lang.Object r0 = r0.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r7 = r0
                r0 = r7
                java.lang.Object r0 = r0.getKey()
                androidx.media2.exoplayer.external.source.TrackGroupArray r0 = (androidx.media2.exoplayer.external.source.TrackGroupArray) r0
                r8 = r0
                r0 = r5
                r1 = r8
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L_0x005c
                r0 = r7
                java.lang.Object r0 = r0.getValue()
                r1 = r5
                r2 = r8
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = androidx.media2.exoplayer.external.util.ac.a(r0, r1)
                if (r0 != 0) goto L_0x001f
            L_0x005c:
                r0 = 0
                return r0
            L_0x005e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
        }

        public static Parameters getDefaults(Context context) {
            b buildUpon = DEFAULT_WITHOUT_VIEWPORT.buildUpon();
            Point d2 = ac.d(context);
            int i = d2.x;
            int i2 = d2.y;
            buildUpon.f3952a = i;
            buildUpon.f3953b = i2;
            buildUpon.f3954c = true;
            return buildUpon.a();
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    hashMap.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
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

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public final b buildUpon() {
            return new b(this);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return super.equals(obj) && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.maxVideoFrameRate == parameters.maxVideoFrameRate && this.maxVideoBitrate == parameters.maxVideoBitrate && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.maxAudioChannelCount == parameters.maxAudioChannelCount && this.maxAudioBitrate == parameters.maxAudioBitrate && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == parameters.allowAudioMixedChannelCountAdaptiveness && this.forceLowestBitrate == parameters.forceLowestBitrate && this.forceHighestSupportedBitrate == parameters.forceHighestSupportedBitrate && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingAudioSessionId == parameters.tunnelingAudioSessionId && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides);
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

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public final int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + this.tunnelingAudioSessionId;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.maxVideoWidth);
            parcel.writeInt(this.maxVideoHeight);
            parcel.writeInt(this.maxVideoFrameRate);
            parcel.writeInt(this.maxVideoBitrate);
            ac.a(parcel, this.exceedVideoConstraintsIfNecessary);
            ac.a(parcel, this.allowVideoMixedMimeTypeAdaptiveness);
            ac.a(parcel, this.allowVideoNonSeamlessAdaptiveness);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            ac.a(parcel, this.viewportOrientationMayChange);
            parcel.writeInt(this.maxAudioChannelCount);
            parcel.writeInt(this.maxAudioBitrate);
            ac.a(parcel, this.exceedAudioConstraintsIfNecessary);
            ac.a(parcel, this.allowAudioMixedMimeTypeAdaptiveness);
            ac.a(parcel, this.allowAudioMixedSampleRateAdaptiveness);
            ac.a(parcel, this.allowAudioMixedChannelCountAdaptiveness);
            ac.a(parcel, this.forceLowestBitrate);
            ac.a(parcel, this.forceHighestSupportedBitrate);
            ac.a(parcel, this.exceedRendererCapabilitiesIfNecessary);
            parcel.writeInt(this.tunnelingAudioSessionId);
            writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
            parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new Parcelable.Creator<SelectionOverride>() { // from class: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride.1
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
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a.class */
    public static final class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3948a;

        /* renamed from: b  reason: collision with root package name */
        private final String f3949b;

        /* renamed from: c  reason: collision with root package name */
        private final Parameters f3950c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f3951d;
        private final int e;
        private final int f;
        private final int g;
        private final boolean h;
        private final int i;
        private final int j;
        private final int k;

        /* JADX WARN: Removed duplicated region for block: B:19:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00cf A[EDGE_INSN: B:26:0x00cf->B:23:0x00cf ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(androidx.media2.exoplayer.external.Format r6, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r7, int r8) {
            /*
                Method dump skipped, instructions count: 220
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public final int compareTo(a aVar) {
            int a2;
            int c2;
            boolean z = this.f3951d;
            int i = 1;
            if (z != aVar.f3951d) {
                return z ? 1 : -1;
            }
            int i2 = this.e;
            int i3 = aVar.e;
            if (i2 != i3) {
                return DefaultTrackSelector.a(i2, i3);
            }
            boolean z2 = this.f3948a;
            if (z2 != aVar.f3948a) {
                return z2 ? 1 : -1;
            }
            if (this.f3950c.forceLowestBitrate && (c2 = DefaultTrackSelector.c(this.k, aVar.k)) != 0) {
                return c2 > 0 ? -1 : 1;
            }
            boolean z3 = this.h;
            if (z3 != aVar.h) {
                return z3 ? 1 : -1;
            }
            int i4 = this.f;
            int i5 = aVar.f;
            if (i4 != i5) {
                return -DefaultTrackSelector.a(i4, i5);
            }
            int i6 = this.g;
            int i7 = aVar.g;
            if (i6 != i7) {
                return DefaultTrackSelector.a(i6, i7);
            }
            if (!this.f3948a || !this.f3951d) {
                i = -1;
            }
            int i8 = this.i;
            int i9 = aVar.i;
            if (i8 != i9) {
                a2 = DefaultTrackSelector.a(i8, i9);
            } else {
                int i10 = this.j;
                int i11 = aVar.j;
                if (i10 != i11) {
                    a2 = DefaultTrackSelector.a(i10, i11);
                } else if (!ac.a((Object) this.f3949b, (Object) aVar.f3949b)) {
                    return 0;
                } else {
                    a2 = DefaultTrackSelector.a(this.k, aVar.k);
                }
            }
            return i * a2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b.class */
    public static final class b extends TrackSelectionParameters.a {

        /* renamed from: a  reason: collision with root package name */
        int f3952a;

        /* renamed from: b  reason: collision with root package name */
        int f3953b;

        /* renamed from: c  reason: collision with root package name */
        boolean f3954c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f3955d;
        private int i;
        private int j;
        private int k;
        private int l;
        private boolean m;
        private boolean n;
        private boolean o;
        private int p;
        private int q;
        private boolean r;
        private boolean s;
        private boolean t;
        private boolean u;
        private boolean v;
        private boolean w;
        private boolean x;
        private int y;
        private final SparseBooleanArray z;

        @Deprecated
        public b() {
            this(Parameters.DEFAULT_WITHOUT_VIEWPORT);
        }

        public b(Context context) {
            this(Parameters.getDefaults(context));
        }

        private b(Parameters parameters) {
            super(parameters);
            this.i = parameters.maxVideoWidth;
            this.j = parameters.maxVideoHeight;
            this.k = parameters.maxVideoFrameRate;
            this.l = parameters.maxVideoBitrate;
            this.m = parameters.exceedVideoConstraintsIfNecessary;
            this.n = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.o = parameters.allowVideoNonSeamlessAdaptiveness;
            this.f3952a = parameters.viewportWidth;
            this.f3953b = parameters.viewportHeight;
            this.f3954c = parameters.viewportOrientationMayChange;
            this.p = parameters.maxAudioChannelCount;
            this.q = parameters.maxAudioBitrate;
            this.r = parameters.exceedAudioConstraintsIfNecessary;
            this.s = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.t = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.u = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.v = parameters.forceLowestBitrate;
            this.w = parameters.forceHighestSupportedBitrate;
            this.x = parameters.exceedRendererCapabilitiesIfNecessary;
            this.y = parameters.tunnelingAudioSessionId;
            SparseArray sparseArray = parameters.selectionOverrides;
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
            }
            this.f3955d = sparseArray2;
            this.z = parameters.rendererDisabledFlags.clone();
        }

        public final Parameters a() {
            return new Parameters(this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.f3952a, this.f3953b, this.f3954c, this.e, this.p, this.q, this.r, this.s, this.t, this.u, this.f, this.g, this.h, this.v, this.w, this.x, this.y, this.f3955d, this.z);
        }

        public final b a(int i, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.f3955d.get(i);
            Map<TrackGroupArray, SelectionOverride> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.f3955d.put(i, map2);
            }
            if (map2.containsKey(trackGroupArray) && ac.a(map2.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map2.put(trackGroupArray, selectionOverride);
            return this;
        }

        public final b a(boolean z) {
            super.c(true);
            return this;
        }

        public final b b(boolean z) {
            if (this.z.get(3) == z) {
                return this;
            }
            if (z) {
                this.z.put(3, true);
            } else {
                this.z.delete(3);
            }
            return this;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.a
        public final /* bridge */ /* synthetic */ TrackSelectionParameters.a c(boolean z) {
            super.c(z);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c.class */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3956a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3957b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f3958c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f3959d;
        private final int e;
        private final int f;

        /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
            if (r0 > 0) goto L_0x00af;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public c(androidx.media2.exoplayer.external.Format r5, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r6, int r7, java.lang.String r8) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = 0
                r9 = r0
                r0 = r4
                r1 = r7
                r2 = 0
                boolean r1 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(r1, r2)
                r0.f3957b = r1
                r0 = r5
                int r0 = r0.selectionFlags
                r1 = r6
                int r1 = r1.disabledTextTrackSelectionFlags
                r2 = -1
                r1 = r1 ^ r2
                r0 = r0 & r1
                r7 = r0
                r0 = r7
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0028
                r0 = 1
                r10 = r0
                goto L_0x002b
            L_0x0028:
                r0 = 0
                r10 = r0
            L_0x002b:
                r0 = r4
                r1 = r10
                r0.f3958c = r1
                r0 = r7
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x003c
                r0 = 1
                r7 = r0
                goto L_0x003e
            L_0x003c:
                r0 = 0
                r7 = r0
            L_0x003e:
                r0 = r5
                r1 = r6
                java.lang.String r1 = r1.preferredTextLanguage
                r2 = r6
                boolean r2 = r2.selectUndeterminedTextLanguage
                int r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(r0, r1, r2)
                r11 = r0
                r0 = r4
                r1 = r11
                r0.e = r1
                r0 = r11
                if (r0 <= 0) goto L_0x005b
                r0 = r7
                if (r0 == 0) goto L_0x0064
            L_0x005b:
                r0 = r11
                if (r0 != 0) goto L_0x006a
                r0 = r7
                if (r0 == 0) goto L_0x006a
            L_0x0064:
                r0 = 1
                r12 = r0
                goto L_0x006d
            L_0x006a:
                r0 = 0
                r12 = r0
            L_0x006d:
                r0 = r4
                r1 = r12
                r0.f3959d = r1
                r0 = r8
                java.lang.String r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(r0)
                if (r0 != 0) goto L_0x0081
                r0 = 1
                r12 = r0
                goto L_0x0084
            L_0x0081:
                r0 = 0
                r12 = r0
            L_0x0084:
                r0 = r5
                r1 = r8
                r2 = r12
                int r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(r0, r1, r2)
                r13 = r0
                r0 = r4
                r1 = r13
                r0.f = r1
                r0 = r11
                if (r0 > 0) goto L_0x00af
                r0 = r10
                if (r0 != 0) goto L_0x00af
                r0 = r9
                r10 = r0
                r0 = r7
                if (r0 == 0) goto L_0x00b2
                r0 = r9
                r10 = r0
                r0 = r13
                if (r0 <= 0) goto L_0x00b2
            L_0x00af:
                r0 = 1
                r10 = r0
            L_0x00b2:
                r0 = r4
                r1 = r10
                r0.f3956a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.c.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public final int compareTo(c cVar) {
            boolean z = this.f3957b;
            if (z != cVar.f3957b) {
                return z ? 1 : -1;
            }
            int i = this.e;
            int i2 = cVar.e;
            if (i != i2) {
                return DefaultTrackSelector.a(i, i2);
            }
            boolean z2 = this.f3958c;
            if (z2 != cVar.f3958c) {
                return z2 ? 1 : -1;
            }
            boolean z3 = this.f3959d;
            return z3 != cVar.f3959d ? z3 ? 1 : -1 : DefaultTrackSelector.a(this.f, cVar.f);
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(new a.c());
    }

    public DefaultTrackSelector(Context context) {
        this(context, new a.c());
    }

    public DefaultTrackSelector(Context context, e.b bVar) {
        this(Parameters.getDefaults(context), bVar);
    }

    public DefaultTrackSelector(Parameters parameters, e.b bVar) {
        this.e = bVar;
        this.f = new AtomicReference<>(parameters);
    }

    @Deprecated
    public DefaultTrackSelector(e.b bVar) {
        this(Parameters.DEFAULT_WITHOUT_VIEWPORT, bVar);
    }

    @Deprecated
    public DefaultTrackSelector(androidx.media2.exoplayer.external.upstream.c cVar) {
        this(new a.c(cVar));
    }

    static /* synthetic */ int a(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i2 > i ? -1 : 0;
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
        return ac.b(a3, VerificationLanguage.REGION_PREFIX)[0].equals(ac.b(a2, VerificationLanguage.REGION_PREFIX)[0]) ? 2 : 0;
    }

    private static int a(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            int intValue = list.get(i7).intValue();
            i6 = i6;
            if (a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                i6++;
            }
        }
        return i6;
    }

    private static int a(TrackGroup trackGroup, int[] iArr, AudioConfigurationTuple audioConfigurationTuple, int i, boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.length; i3++) {
            i2 = i2;
            if (a(trackGroup.getFormat(i3), iArr[i3], audioConfigurationTuple, i, z, z2, z3)) {
                i2++;
            }
        }
        return i2;
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
            r11 = r0
            r0 = r10
            r1 = r8
            int r0 = r0 * r1
            r12 = r0
            r0 = r11
            r1 = r12
            if (r0 < r1) goto L_0x0054
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r8
            r3 = r12
            r4 = r9
            int r3 = androidx.media2.exoplayer.external.util.ac.a(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L_0x0054:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r11
            r3 = r10
            int r2 = androidx.media2.exoplayer.external.util.ac.a(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(boolean, int, int, int, int):android.graphics.Point");
    }

    private static Pair<e.a, c> a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) throws ExoPlaybackException {
        int i = -1;
        TrackGroup trackGroup = null;
        c cVar = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                i = i;
                trackGroup = trackGroup;
                cVar = cVar;
                if (a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    c cVar2 = new c(trackGroup2.getFormat(i3), parameters, iArr2[i3], str);
                    i = i;
                    trackGroup = trackGroup;
                    cVar = cVar;
                    if (cVar2.f3956a) {
                        if (cVar != null) {
                            i = i;
                            trackGroup = trackGroup;
                            cVar = cVar;
                            if (cVar2.compareTo(cVar) <= 0) {
                            }
                        }
                        trackGroup = trackGroup2;
                        i = i3;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new e.a(trackGroup, i), (c) androidx.media2.exoplayer.external.util.a.a(cVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<androidx.media2.exoplayer.external.trackselection.e.a, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a> a(androidx.media2.exoplayer.external.source.TrackGroupArray r8, int[][] r9, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r10, boolean r11) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(androidx.media2.exoplayer.external.source.TrackGroupArray, int[][], androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, boolean):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x013a, code lost:
        if (r0 < 0) goto L_0x013d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x013d, code lost:
        r23 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.trackselection.e.a a(androidx.media2.exoplayer.external.source.TrackGroupArray r8, int[][] r9, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r10) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(androidx.media2.exoplayer.external.source.TrackGroupArray, int[][], androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters):androidx.media2.exoplayer.external.trackselection.e$a");
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

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(androidx.media2.exoplayer.external.trackselection.d.a r4, int[][][] r5, androidx.media2.exoplayer.external.RendererConfiguration[] r6, androidx.media2.exoplayer.external.trackselection.e[] r7, int r8) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.a(androidx.media2.exoplayer.external.trackselection.d$a, int[][][], androidx.media2.exoplayer.external.RendererConfiguration[], androidx.media2.exoplayer.external.trackselection.e[], int):void");
    }

    protected static boolean a(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    private static boolean a(Format format, int i, AudioConfigurationTuple audioConfigurationTuple, int i2, boolean z, boolean z2, boolean z3) {
        if (!a(i, false)) {
            return false;
        }
        if (format.bitrate != -1 && format.bitrate > i2) {
            return false;
        }
        if (!z3 && (format.channelCount == -1 || format.channelCount != audioConfigurationTuple.channelCount)) {
            return false;
        }
        if (!z && (format.sampleMimeType == null || !TextUtils.equals(format.sampleMimeType, audioConfigurationTuple.mimeType))) {
            return false;
        }
        if (!z2) {
            return format.sampleRate != -1 && format.sampleRate == audioConfigurationTuple.sampleRate;
        }
        return true;
    }

    private static boolean a(Format format, String str, int i, int i2, int i3, int i4, int i5, int i6) {
        if (!a(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !ac.a((Object) format.sampleMimeType, (Object) str)) {
            return false;
        }
        if (format.width != -1 && format.width > i3) {
            return false;
        }
        if (format.height != -1 && format.height > i4) {
            return false;
        }
        if (format.frameRate == -1.0f || format.frameRate <= i5) {
            return format.bitrate == -1 || format.bitrate <= i6;
        }
        return false;
    }

    private static e.a b(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < trackGroup2.length; i4++) {
                trackGroup = trackGroup;
                i = i;
                i2 = i2;
                if (a(iArr2[i4], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    int i5 = (trackGroup2.getFormat(i4).selectionFlags & 1) != 0 ? 2 : 1;
                    int i6 = i5;
                    if (a(iArr2[i4], false)) {
                        i6 = i5 + 1000;
                    }
                    trackGroup = trackGroup;
                    i = i;
                    i2 = i2;
                    if (i6 > i2) {
                        trackGroup = trackGroup2;
                        i = i4;
                        i2 = i6;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new e.a(trackGroup, i);
    }

    private static void b(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                list.remove(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.d
    protected final Pair<RendererConfiguration[], e[]> a(d.a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException {
        e.a aVar2;
        int i;
        int i2;
        e.a aVar3;
        int[] iArr3;
        String str;
        d.a aVar4 = aVar;
        Parameters parameters = this.f.get();
        int i3 = aVar4.f3976b;
        int i4 = aVar4.f3976b;
        e.a[] aVarArr = new e.a[i4];
        int i5 = 0;
        boolean z = false;
        boolean z2 = false;
        while (i5 < i4) {
            if (2 == aVar4.f3977c[i5]) {
                if (!z) {
                    TrackGroupArray trackGroupArray = aVar4.f3978d[i5];
                    int[][] iArr4 = iArr[i5];
                    int i6 = iArr2[i5];
                    i3 = i3;
                    i4 = i4;
                    e.a[] aVarArr2 = aVarArr;
                    i2 = i5;
                    z2 = z2;
                    if (!parameters.forceHighestSupportedBitrate) {
                        i3 = i3;
                        i4 = i4;
                        aVarArr2 = aVarArr;
                        i2 = i5;
                        z2 = z2;
                        if (!parameters.forceLowestBitrate) {
                            int i7 = parameters.allowVideoNonSeamlessAdaptiveness ? 24 : 16;
                            boolean z3 = parameters.allowVideoMixedMimeTypeAdaptiveness && (i6 & i7) != 0;
                            int i8 = 0;
                            while (true) {
                                i3 = i3;
                                i4 = i4;
                                aVarArr2 = aVarArr;
                                i2 = i5;
                                z2 = z2;
                                if (i8 >= trackGroupArray.length) {
                                    break;
                                }
                                TrackGroup trackGroup = trackGroupArray.get(i8);
                                int[] iArr5 = iArr4[i8];
                                int i9 = parameters.maxVideoWidth;
                                int i10 = parameters.maxVideoHeight;
                                int i11 = parameters.maxVideoFrameRate;
                                int i12 = parameters.maxVideoBitrate;
                                int i13 = parameters.viewportWidth;
                                int i14 = parameters.viewportHeight;
                                boolean z4 = parameters.viewportOrientationMayChange;
                                aVarArr2 = aVarArr;
                                if (trackGroup.length < 2) {
                                    iArr3 = f3947d;
                                } else {
                                    List<Integer> a2 = a(trackGroup, i13, i14, z4);
                                    if (a2.size() < 2) {
                                        iArr3 = f3947d;
                                    } else {
                                        if (!z3) {
                                            HashSet hashSet = new HashSet();
                                            int i15 = 0;
                                            str = null;
                                            for (int i16 = 0; i16 < a2.size(); i16++) {
                                                String str2 = trackGroup.getFormat(a2.get(i16).intValue()).sampleMimeType;
                                                if (hashSet.add(str2)) {
                                                    int a3 = a(trackGroup, iArr5, i7, str2, i9, i10, i11, i12, a2);
                                                    i15 = i15;
                                                    if (a3 > i15) {
                                                        i15 = a3;
                                                        str = str2;
                                                    }
                                                } else {
                                                    i15 = i15;
                                                }
                                            }
                                        } else {
                                            str = null;
                                        }
                                        b(trackGroup, iArr5, i7, str, i9, i10, i11, i12, a2);
                                        iArr3 = a2.size() < 2 ? f3947d : ac.a(a2);
                                    }
                                }
                                if (iArr3.length > 0) {
                                    aVar3 = new e.a(trackGroup, iArr3);
                                    i3 = i3;
                                    i2 = i5;
                                    break;
                                }
                                i8++;
                                aVarArr = aVarArr2;
                            }
                        }
                    }
                    aVar3 = null;
                    e.a aVar5 = aVar3;
                    if (aVar3 == null) {
                        aVar5 = a(trackGroupArray, iArr4, parameters);
                    }
                    aVarArr2[i2] = aVar5;
                    z = aVarArr2[i2] != null;
                    aVarArr = aVarArr2;
                } else {
                    i2 = i5;
                    i3 = i3;
                }
                aVar4 = aVar;
                z2 |= aVar4.f3978d[i2].length > 0;
                i = i2;
            } else {
                i = i5;
                i3 = i3;
            }
            i5 = i + 1;
        }
        String str3 = null;
        a aVar6 = null;
        int i17 = -1;
        for (int i18 = 0; i18 < i4; i18++) {
            if (1 == aVar4.f3977c[i18]) {
                Pair<e.a, a> a4 = a(aVar4.f3978d[i18], iArr[i18], parameters, this.g || !z2);
                if (a4 != null && (aVar6 == null || ((a) a4.second).compareTo(aVar6) > 0)) {
                    if (i17 != -1) {
                        aVarArr[i17] = null;
                    }
                    e.a aVar7 = (e.a) a4.first;
                    aVarArr[i18] = aVar7;
                    str3 = aVar7.f3979a.getFormat(aVar7.f3980b[0]).language;
                    aVar6 = (a) a4.second;
                    i17 = i18;
                }
            }
        }
        c cVar = null;
        int i19 = -1;
        for (int i20 = 0; i20 < i4; i20++) {
            int i21 = aVar4.f3977c[i20];
            if (!(i21 == 1 || i21 == 2)) {
                if (i21 != 3) {
                    aVarArr[i20] = b(aVar4.f3978d[i20], iArr[i20], parameters);
                } else {
                    Pair<e.a, c> a5 = a(aVar4.f3978d[i20], iArr[i20], parameters, str3);
                    if (a5 != null && (cVar == null || ((c) a5.second).compareTo(cVar) > 0)) {
                        if (i19 != -1) {
                            aVarArr[i19] = null;
                        }
                        aVarArr[i20] = (e.a) a5.first;
                        cVar = (c) a5.second;
                        i19 = i20;
                    }
                }
            }
        }
        for (int i22 = 0; i22 < i3; i22++) {
            if (!parameters.getRendererDisabled(i22)) {
                TrackGroupArray trackGroupArray2 = aVar4.f3978d[i22];
                if (parameters.hasSelectionOverride(i22, trackGroupArray2)) {
                    SelectionOverride selectionOverride = parameters.getSelectionOverride(i22, trackGroupArray2);
                    if (selectionOverride != null) {
                        aVar2 = new e.a(trackGroupArray2.get(selectionOverride.groupIndex), selectionOverride.tracks, selectionOverride.reason, Integer.valueOf(selectionOverride.data));
                        aVarArr[i22] = aVar2;
                    }
                }
            }
            aVar2 = null;
            aVarArr[i22] = aVar2;
        }
        e[] a6 = this.e.a(aVarArr, (androidx.media2.exoplayer.external.upstream.c) androidx.media2.exoplayer.external.util.a.a(this.f3987c));
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[i3];
        for (int i23 = 0; i23 < i3; i23++) {
            rendererConfigurationArr[i23] = !parameters.getRendererDisabled(i23) && (aVar4.f3977c[i23] == 6 || a6[i23] != null) ? RendererConfiguration.DEFAULT : null;
        }
        a(aVar4, iArr, rendererConfigurationArr, a6, parameters.tunnelingAudioSessionId);
        return Pair.create(rendererConfigurationArr, a6);
    }

    public final b a() {
        return this.f.get().buildUpon();
    }

    public final void a(Parameters parameters) {
        androidx.media2.exoplayer.external.util.a.a(parameters);
        if (!this.f.getAndSet(parameters).equals(parameters) && this.f3986b != null) {
            this.f3986b.b();
        }
    }

    public final void a(b bVar) {
        a(bVar.a());
    }
}
