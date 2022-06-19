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
import androidx.media2.exoplayer.external.trackselection.AbstractC1938d;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.trackselection.C1929a;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector.class */
public final class DefaultTrackSelector extends AbstractC1938d {

    /* renamed from: d */
    private static final int[] f7730d = new int[0];

    /* renamed from: e */
    private final AbstractC1940e.AbstractC1942b f7731e;

    /* renamed from: f */
    private final AtomicReference<Parameters> f7732f;

    /* renamed from: g */
    private boolean f7733g;

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
            this.exceedVideoConstraintsIfNecessary = C1996ac.m41664a(parcel);
            boolean m41664a = C1996ac.m41664a(parcel);
            this.allowVideoMixedMimeTypeAdaptiveness = m41664a;
            boolean m41664a2 = C1996ac.m41664a(parcel);
            this.allowVideoNonSeamlessAdaptiveness = m41664a2;
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = C1996ac.m41664a(parcel);
            this.maxAudioChannelCount = parcel.readInt();
            this.maxAudioBitrate = parcel.readInt();
            this.exceedAudioConstraintsIfNecessary = C1996ac.m41664a(parcel);
            this.allowAudioMixedMimeTypeAdaptiveness = C1996ac.m41664a(parcel);
            this.allowAudioMixedSampleRateAdaptiveness = C1996ac.m41664a(parcel);
            this.allowAudioMixedChannelCountAdaptiveness = C1996ac.m41664a(parcel);
            this.forceLowestBitrate = C1996ac.m41664a(parcel);
            this.forceHighestSupportedBitrate = C1996ac.m41664a(parcel);
            this.exceedRendererCapabilitiesIfNecessary = C1996ac.m41664a(parcel);
            this.tunnelingAudioSessionId = parcel.readInt();
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = (SparseBooleanArray) C1996ac.m41659a(parcel.readSparseBooleanArray());
            this.allowMixedMimeAdaptiveness = m41664a;
            this.allowNonSeamlessAdaptiveness = m41664a2;
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
                if (r0 == r1) goto L13
                r0 = 0
                return r0
            L13:
                r0 = r4
                java.util.Set r0 = r0.entrySet()
                java.util.Iterator r0 = r0.iterator()
                r4 = r0
            L1f:
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L5e
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
                if (r0 == 0) goto L5c
                r0 = r7
                java.lang.Object r0 = r0.getValue()
                r1 = r5
                r2 = r8
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = androidx.media2.exoplayer.external.util.C1996ac.m41658a(r0, r1)
                if (r0 != 0) goto L1f
            L5c:
                r0 = 0
                return r0
            L5e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
        }

        public static Parameters getDefaults(Context context) {
            C1925b buildUpon = DEFAULT_WITHOUT_VIEWPORT.buildUpon();
            Point m41621d = C1996ac.m41621d(context);
            int i = m41621d.x;
            int i2 = m41621d.y;
            buildUpon.f7745a = i;
            buildUpon.f7746b = i2;
            buildUpon.f7747c = true;
            return buildUpon.m41851a();
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
        public final C1925b buildUpon() {
            return new C1925b(this);
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
            C1996ac.m41663a(parcel, this.exceedVideoConstraintsIfNecessary);
            C1996ac.m41663a(parcel, this.allowVideoMixedMimeTypeAdaptiveness);
            C1996ac.m41663a(parcel, this.allowVideoNonSeamlessAdaptiveness);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            C1996ac.m41663a(parcel, this.viewportOrientationMayChange);
            parcel.writeInt(this.maxAudioChannelCount);
            parcel.writeInt(this.maxAudioBitrate);
            C1996ac.m41663a(parcel, this.exceedAudioConstraintsIfNecessary);
            C1996ac.m41663a(parcel, this.allowAudioMixedMimeTypeAdaptiveness);
            C1996ac.m41663a(parcel, this.allowAudioMixedSampleRateAdaptiveness);
            C1996ac.m41663a(parcel, this.allowAudioMixedChannelCountAdaptiveness);
            C1996ac.m41663a(parcel, this.forceLowestBitrate);
            C1996ac.m41663a(parcel, this.forceHighestSupportedBitrate);
            C1996ac.m41663a(parcel, this.exceedRendererCapabilitiesIfNecessary);
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

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a.class */
    public static final class C1924a implements Comparable<C1924a> {

        /* renamed from: a */
        public final boolean f7734a;

        /* renamed from: b */
        private final String f7735b;

        /* renamed from: c */
        private final Parameters f7736c;

        /* renamed from: d */
        private final boolean f7737d;

        /* renamed from: e */
        private final int f7738e;

        /* renamed from: f */
        private final int f7739f;

        /* renamed from: g */
        private final int f7740g;

        /* renamed from: h */
        private final boolean f7741h;

        /* renamed from: i */
        private final int f7742i;

        /* renamed from: j */
        private final int f7743j;

        /* renamed from: k */
        private final int f7744k;

        /* JADX WARN: Removed duplicated region for block: B:19:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00cf A[EDGE_INSN: B:26:0x00cf->B:23:0x00cf ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1924a(androidx.media2.exoplayer.external.Format r6, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r7, int r8) {
            /*
                Method dump skipped, instructions count: 220
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.C1924a.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public final int compareTo(C1924a c1924a) {
            int m41872a;
            int m41853c;
            boolean z = this.f7737d;
            int i = 1;
            if (z != c1924a.f7737d) {
                return z ? 1 : -1;
            }
            int i2 = this.f7738e;
            int i3 = c1924a.f7738e;
            if (i2 != i3) {
                return DefaultTrackSelector.m41872a(i2, i3);
            }
            boolean z2 = this.f7734a;
            if (z2 != c1924a.f7734a) {
                return z2 ? 1 : -1;
            } else if (this.f7736c.forceLowestBitrate && (m41853c = DefaultTrackSelector.m41853c(this.f7744k, c1924a.f7744k)) != 0) {
                return m41853c > 0 ? -1 : 1;
            } else {
                boolean z3 = this.f7741h;
                if (z3 != c1924a.f7741h) {
                    return z3 ? 1 : -1;
                }
                int i4 = this.f7739f;
                int i5 = c1924a.f7739f;
                if (i4 != i5) {
                    return -DefaultTrackSelector.m41872a(i4, i5);
                }
                int i6 = this.f7740g;
                int i7 = c1924a.f7740g;
                if (i6 != i7) {
                    return DefaultTrackSelector.m41872a(i6, i7);
                }
                if (!this.f7734a || !this.f7737d) {
                    i = -1;
                }
                int i8 = this.f7742i;
                int i9 = c1924a.f7742i;
                if (i8 != i9) {
                    m41872a = DefaultTrackSelector.m41872a(i8, i9);
                } else {
                    int i10 = this.f7743j;
                    int i11 = c1924a.f7743j;
                    if (i10 != i11) {
                        m41872a = DefaultTrackSelector.m41872a(i10, i11);
                    } else if (!C1996ac.m41658a((Object) this.f7735b, (Object) c1924a.f7735b)) {
                        return 0;
                    } else {
                        m41872a = DefaultTrackSelector.m41872a(this.f7744k, c1924a.f7744k);
                    }
                }
                return i * m41872a;
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b.class */
    public static final class C1925b extends TrackSelectionParameters.C1928a {

        /* renamed from: a */
        int f7745a;

        /* renamed from: b */
        int f7746b;

        /* renamed from: c */
        boolean f7747c;

        /* renamed from: d */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f7748d;

        /* renamed from: i */
        private int f7749i;

        /* renamed from: j */
        private int f7750j;

        /* renamed from: k */
        private int f7751k;

        /* renamed from: l */
        private int f7752l;

        /* renamed from: m */
        private boolean f7753m;

        /* renamed from: n */
        private boolean f7754n;

        /* renamed from: o */
        private boolean f7755o;

        /* renamed from: p */
        private int f7756p;

        /* renamed from: q */
        private int f7757q;

        /* renamed from: r */
        private boolean f7758r;

        /* renamed from: s */
        private boolean f7759s;

        /* renamed from: t */
        private boolean f7760t;

        /* renamed from: u */
        private boolean f7761u;

        /* renamed from: v */
        private boolean f7762v;

        /* renamed from: w */
        private boolean f7763w;

        /* renamed from: x */
        private boolean f7764x;

        /* renamed from: y */
        private int f7765y;

        /* renamed from: z */
        private final SparseBooleanArray f7766z;

        @Deprecated
        public C1925b() {
            this(Parameters.DEFAULT_WITHOUT_VIEWPORT);
        }

        public C1925b(Context context) {
            this(Parameters.getDefaults(context));
        }

        private C1925b(Parameters parameters) {
            super(parameters);
            this.f7749i = parameters.maxVideoWidth;
            this.f7750j = parameters.maxVideoHeight;
            this.f7751k = parameters.maxVideoFrameRate;
            this.f7752l = parameters.maxVideoBitrate;
            this.f7753m = parameters.exceedVideoConstraintsIfNecessary;
            this.f7754n = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.f7755o = parameters.allowVideoNonSeamlessAdaptiveness;
            this.f7745a = parameters.viewportWidth;
            this.f7746b = parameters.viewportHeight;
            this.f7747c = parameters.viewportOrientationMayChange;
            this.f7756p = parameters.maxAudioChannelCount;
            this.f7757q = parameters.maxAudioBitrate;
            this.f7758r = parameters.exceedAudioConstraintsIfNecessary;
            this.f7759s = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.f7760t = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.f7761u = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.f7762v = parameters.forceLowestBitrate;
            this.f7763w = parameters.forceHighestSupportedBitrate;
            this.f7764x = parameters.exceedRendererCapabilitiesIfNecessary;
            this.f7765y = parameters.tunnelingAudioSessionId;
            SparseArray sparseArray = parameters.selectionOverrides;
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
            }
            this.f7748d = sparseArray2;
            this.f7766z = parameters.rendererDisabledFlags.clone();
        }

        /* renamed from: a */
        public final Parameters m41851a() {
            return new Parameters(this.f7749i, this.f7750j, this.f7751k, this.f7752l, this.f7753m, this.f7754n, this.f7755o, this.f7745a, this.f7746b, this.f7747c, this.f7773e, this.f7756p, this.f7757q, this.f7758r, this.f7759s, this.f7760t, this.f7761u, this.f7774f, this.f7775g, this.f7776h, this.f7762v, this.f7763w, this.f7764x, this.f7765y, this.f7748d, this.f7766z);
        }

        /* renamed from: a */
        public final C1925b m41850a(int i, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.f7748d.get(i);
            HashMap hashMap = map;
            if (map == null) {
                hashMap = new HashMap();
                this.f7748d.put(i, hashMap);
            }
            if (!hashMap.containsKey(trackGroupArray) || !C1996ac.m41658a(hashMap.get(trackGroupArray), selectionOverride)) {
                hashMap.put(trackGroupArray, selectionOverride);
                return this;
            }
            return this;
        }

        /* renamed from: a */
        public final C1925b m41849a(boolean z) {
            super.mo41846c(true);
            return this;
        }

        /* renamed from: b */
        public final C1925b m41848b(boolean z) {
            if (this.f7766z.get(3) == z) {
                return this;
            }
            if (z) {
                this.f7766z.put(3, true);
            } else {
                this.f7766z.delete(3);
            }
            return this;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.C1928a
        /* renamed from: c */
        public final /* bridge */ /* synthetic */ TrackSelectionParameters.C1928a mo41846c(boolean z) {
            super.mo41846c(z);
            return this;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c.class */
    public static final class C1926c implements Comparable<C1926c> {

        /* renamed from: a */
        public final boolean f7767a;

        /* renamed from: b */
        private final boolean f7768b;

        /* renamed from: c */
        private final boolean f7769c;

        /* renamed from: d */
        private final boolean f7770d;

        /* renamed from: e */
        private final int f7771e;

        /* renamed from: f */
        private final int f7772f;

        /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
            if (r0 > 0) goto L32;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1926c(androidx.media2.exoplayer.external.Format r5, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r6, int r7, java.lang.String r8) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = 0
                r9 = r0
                r0 = r4
                r1 = r7
                r2 = 0
                boolean r1 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41871a(r1, r2)
                r0.f7768b = r1
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
                if (r0 == 0) goto L28
                r0 = 1
                r10 = r0
                goto L2b
            L28:
                r0 = 0
                r10 = r0
            L2b:
                r0 = r4
                r1 = r10
                r0.f7769c = r1
                r0 = r7
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L3c
                r0 = 1
                r7 = r0
                goto L3e
            L3c:
                r0 = 0
                r7 = r0
            L3e:
                r0 = r5
                r1 = r6
                java.lang.String r1 = r1.preferredTextLanguage
                r2 = r6
                boolean r2 = r2.selectUndeterminedTextLanguage
                int r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41868a(r0, r1, r2)
                r11 = r0
                r0 = r4
                r1 = r11
                r0.f7771e = r1
                r0 = r11
                if (r0 <= 0) goto L5b
                r0 = r7
                if (r0 == 0) goto L64
            L5b:
                r0 = r11
                if (r0 != 0) goto L6a
                r0 = r7
                if (r0 == 0) goto L6a
            L64:
                r0 = 1
                r12 = r0
                goto L6d
            L6a:
                r0 = 0
                r12 = r0
            L6d:
                r0 = r4
                r1 = r12
                r0.f7770d = r1
                r0 = r8
                java.lang.String r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41858a(r0)
                if (r0 != 0) goto L81
                r0 = 1
                r12 = r0
                goto L84
            L81:
                r0 = 0
                r12 = r0
            L84:
                r0 = r5
                r1 = r8
                r2 = r12
                int r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41868a(r0, r1, r2)
                r13 = r0
                r0 = r4
                r1 = r13
                r0.f7772f = r1
                r0 = r11
                if (r0 > 0) goto Laf
                r0 = r10
                if (r0 != 0) goto Laf
                r0 = r9
                r10 = r0
                r0 = r7
                if (r0 == 0) goto Lb2
                r0 = r9
                r10 = r0
                r0 = r13
                if (r0 <= 0) goto Lb2
            Laf:
                r0 = 1
                r10 = r0
            Lb2:
                r0 = r4
                r1 = r10
                r0.f7767a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.C1926c.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public final int compareTo(C1926c c1926c) {
            boolean z = this.f7768b;
            if (z != c1926c.f7768b) {
                return z ? 1 : -1;
            }
            int i = this.f7771e;
            int i2 = c1926c.f7771e;
            if (i != i2) {
                return DefaultTrackSelector.m41872a(i, i2);
            }
            boolean z2 = this.f7769c;
            if (z2 != c1926c.f7769c) {
                return z2 ? 1 : -1;
            }
            boolean z3 = this.f7770d;
            return z3 != c1926c.f7770d ? z3 ? 1 : -1 : DefaultTrackSelector.m41872a(this.f7772f, c1926c.f7772f);
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(new C1929a.C1933c());
    }

    public DefaultTrackSelector(Context context) {
        this(context, new C1929a.C1933c());
    }

    public DefaultTrackSelector(Context context, AbstractC1940e.AbstractC1942b abstractC1942b) {
        this(Parameters.getDefaults(context), abstractC1942b);
    }

    public DefaultTrackSelector(Parameters parameters, AbstractC1940e.AbstractC1942b abstractC1942b) {
        this.f7731e = abstractC1942b;
        this.f7732f = new AtomicReference<>(parameters);
    }

    @Deprecated
    public DefaultTrackSelector(AbstractC1940e.AbstractC1942b abstractC1942b) {
        this(Parameters.DEFAULT_WITHOUT_VIEWPORT, abstractC1942b);
    }

    @Deprecated
    public DefaultTrackSelector(AbstractC1964c abstractC1964c) {
        this(new C1929a.C1933c(abstractC1964c));
    }

    /* renamed from: a */
    static /* synthetic */ int m41872a(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i2 > i ? -1 : 0;
    }

    /* renamed from: a */
    protected static int m41868a(Format format, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(format.language)) {
            String m41858a = m41858a(str);
            String m41858a2 = m41858a(format.language);
            if (m41858a2 == null || m41858a == null) {
                return (!z || m41858a2 != null) ? 0 : 1;
            } else if (m41858a2.startsWith(m41858a) || m41858a.startsWith(m41858a2)) {
                return 3;
            } else {
                return C1996ac.m41630b(m41858a2, VerificationLanguage.REGION_PREFIX)[0].equals(C1996ac.m41630b(m41858a, VerificationLanguage.REGION_PREFIX)[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    /* renamed from: a */
    private static int m41866a(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 < list.size()) {
                int intValue = list.get(i6).intValue();
                int i9 = i8;
                if (m41869a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                    i9 = i8 + 1;
                }
                i6++;
                i7 = i9;
            } else {
                return i8;
            }
        }
    }

    /* renamed from: a */
    private static int m41865a(TrackGroup trackGroup, int[] iArr, AudioConfigurationTuple audioConfigurationTuple, int i, boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < trackGroup.length) {
                int i5 = i4;
                if (m41870a(trackGroup.getFormat(i2), iArr[i2], audioConfigurationTuple, i, z, z2, z3)) {
                    i5 = i4 + 1;
                }
                i2++;
                i3 = i5;
            } else {
                return i4;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point m41857a(boolean r6, int r7, int r8, int r9, int r10) {
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
            r11 = r0
            r0 = r10
            r1 = r8
            int r0 = r0 * r1
            r12 = r0
            r0 = r11
            r1 = r12
            if (r0 < r1) goto L54
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r8
            r3 = r12
            r4 = r9
            int r3 = androidx.media2.exoplayer.external.util.C1996ac.m41675a(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L54:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r11
            r3 = r10
            int r2 = androidx.media2.exoplayer.external.util.C1996ac.m41675a(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41857a(boolean, int, int, int, int):android.graphics.Point");
    }

    /* renamed from: a */
    private static Pair<AbstractC1940e.C1941a, C1926c> m41863a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) throws ExoPlaybackException {
        int i = -1;
        TrackGroup trackGroup = null;
        C1926c c1926c = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i3 = 0;
            while (i3 < trackGroup2.length) {
                int i4 = i;
                TrackGroup trackGroup3 = trackGroup;
                C1926c c1926c2 = c1926c;
                if (m41871a(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    C1926c c1926c3 = new C1926c(trackGroup2.getFormat(i3), parameters, iArr2[i3], str);
                    i4 = i;
                    trackGroup3 = trackGroup;
                    c1926c2 = c1926c;
                    if (c1926c3.f7767a) {
                        if (c1926c != null) {
                            i4 = i;
                            trackGroup3 = trackGroup;
                            c1926c2 = c1926c;
                            if (c1926c3.compareTo(c1926c) <= 0) {
                            }
                        }
                        trackGroup3 = trackGroup2;
                        i4 = i3;
                        c1926c2 = c1926c3;
                    }
                }
                i3++;
                i = i4;
                trackGroup = trackGroup3;
                c1926c = c1926c2;
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new AbstractC1940e.C1941a(trackGroup, i), (C1926c) C1993a.m41690a(c1926c));
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01d4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<androidx.media2.exoplayer.external.trackselection.AbstractC1940e.C1941a, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.C1924a> m41862a(androidx.media2.exoplayer.external.source.TrackGroupArray r8, int[][] r9, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r10, boolean r11) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41862a(androidx.media2.exoplayer.external.source.TrackGroupArray, int[][], androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, boolean):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x013a, code lost:
        if (r0 < 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x013d, code lost:
        r23 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.trackselection.AbstractC1940e.C1941a m41864a(androidx.media2.exoplayer.external.source.TrackGroupArray r8, int[][] r9, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r10) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41864a(androidx.media2.exoplayer.external.source.TrackGroupArray, int[][], androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters):androidx.media2.exoplayer.external.trackselection.e$a");
    }

    /* renamed from: a */
    protected static String m41858a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* renamed from: a */
    private static List<Integer> m41867a(TrackGroup trackGroup, int i, int i2, boolean z) {
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
                        Point m41857a = m41857a(z, i, i2, format.width, format.height);
                        int i8 = format.width * format.height;
                        i7 = i3;
                        if (format.width >= ((int) (m41857a.x * 0.98f))) {
                            i7 = i3;
                            if (format.height >= ((int) (m41857a.y * 0.98f))) {
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

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e0 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m41859a(androidx.media2.exoplayer.external.trackselection.AbstractC1938d.C1939a r4, int[][][] r5, androidx.media2.exoplayer.external.RendererConfiguration[] r6, androidx.media2.exoplayer.external.trackselection.AbstractC1940e[] r7, int r8) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m41859a(androidx.media2.exoplayer.external.trackselection.d$a, int[][][], androidx.media2.exoplayer.external.RendererConfiguration[], androidx.media2.exoplayer.external.trackselection.e[], int):void");
    }

    /* renamed from: a */
    protected static boolean m41871a(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m41870a(Format format, int i, AudioConfigurationTuple audioConfigurationTuple, int i2, boolean z, boolean z2, boolean z3) {
        if (m41871a(i, false)) {
            if (format.bitrate != -1 && format.bitrate > i2) {
                return false;
            }
            if (!z3 && (format.channelCount == -1 || format.channelCount != audioConfigurationTuple.channelCount)) {
                return false;
            }
            if (!z && (format.sampleMimeType == null || !TextUtils.equals(format.sampleMimeType, audioConfigurationTuple.mimeType))) {
                return false;
            }
            if (z2) {
                return true;
            }
            return format.sampleRate != -1 && format.sampleRate == audioConfigurationTuple.sampleRate;
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m41869a(Format format, String str, int i, int i2, int i3, int i4, int i5, int i6) {
        if (!m41871a(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !C1996ac.m41658a((Object) format.sampleMimeType, (Object) str)) {
            return false;
        }
        if (format.width != -1 && format.width > i3) {
            return false;
        }
        if (format.height != -1 && format.height > i4) {
            return false;
        }
        if (format.frameRate != -1.0f && format.frameRate > i5) {
            return false;
        }
        return format.bitrate == -1 || format.bitrate <= i6;
    }

    /* renamed from: b */
    private static AbstractC1940e.C1941a m41854b(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i3);
            int[] iArr2 = iArr[i3];
            int i4 = 0;
            while (i4 < trackGroup2.length) {
                TrackGroup trackGroup3 = trackGroup;
                int i5 = i;
                int i6 = i2;
                if (m41871a(iArr2[i4], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    int i7 = (trackGroup2.getFormat(i4).selectionFlags & 1) != 0 ? 2 : 1;
                    int i8 = i7;
                    if (m41871a(iArr2[i4], false)) {
                        i8 = i7 + 1000;
                    }
                    trackGroup3 = trackGroup;
                    i5 = i;
                    i6 = i2;
                    if (i8 > i2) {
                        trackGroup3 = trackGroup2;
                        i5 = i4;
                        i6 = i8;
                    }
                }
                i4++;
                trackGroup = trackGroup3;
                i = i5;
                i2 = i6;
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new AbstractC1940e.C1941a(trackGroup, i);
    }

    /* renamed from: b */
    private static void m41855b(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!m41869a(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                list.remove(size);
            }
        }
    }

    /* renamed from: c */
    public static int m41853c(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        } else if (i2 != -1) {
            return i - i2;
        } else {
            return 1;
        }
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1938d
    /* renamed from: a */
    protected final Pair<RendererConfiguration[], AbstractC1940e[]> mo41838a(AbstractC1938d.C1939a c1939a, int[][][] iArr, int[] iArr2) throws ExoPlaybackException {
        AbstractC1940e.C1941a c1941a;
        int i;
        int i2;
        int i3;
        int i4;
        AbstractC1940e.C1941a c1941a2;
        int[] iArr3;
        String str;
        int i5;
        AbstractC1938d.C1939a c1939a2 = c1939a;
        Parameters parameters = this.f7732f.get();
        int i6 = c1939a2.f7810b;
        int i7 = c1939a2.f7810b;
        AbstractC1940e.C1941a[] c1941aArr = new AbstractC1940e.C1941a[i7];
        int i8 = 0;
        boolean z = false;
        boolean z2 = false;
        while (i8 < i7) {
            if (2 == c1939a2.f7811c[i8]) {
                if (!z) {
                    TrackGroupArray trackGroupArray = c1939a2.f7812d[i8];
                    int[][] iArr4 = iArr[i8];
                    int i9 = iArr2[i8];
                    int i10 = i6;
                    int i11 = i7;
                    AbstractC1940e.C1941a[] c1941aArr2 = c1941aArr;
                    int i12 = i8;
                    boolean z3 = z2;
                    if (!parameters.forceHighestSupportedBitrate) {
                        i10 = i6;
                        i11 = i7;
                        c1941aArr2 = c1941aArr;
                        i12 = i8;
                        z3 = z2;
                        if (!parameters.forceLowestBitrate) {
                            int i13 = parameters.allowVideoNonSeamlessAdaptiveness ? 24 : 16;
                            boolean z4 = parameters.allowVideoMixedMimeTypeAdaptiveness && (i9 & i13) != 0;
                            int i14 = 0;
                            while (true) {
                                i10 = i6;
                                i11 = i7;
                                c1941aArr2 = c1941aArr;
                                i12 = i8;
                                z3 = z2;
                                if (i14 >= trackGroupArray.length) {
                                    break;
                                }
                                TrackGroup trackGroup = trackGroupArray.get(i14);
                                int[] iArr5 = iArr4[i14];
                                int i15 = parameters.maxVideoWidth;
                                int i16 = parameters.maxVideoHeight;
                                int i17 = parameters.maxVideoFrameRate;
                                int i18 = parameters.maxVideoBitrate;
                                int i19 = parameters.viewportWidth;
                                int i20 = parameters.viewportHeight;
                                boolean z5 = parameters.viewportOrientationMayChange;
                                c1941aArr2 = c1941aArr;
                                if (trackGroup.length < 2) {
                                    iArr3 = f7730d;
                                } else {
                                    List<Integer> m41867a = m41867a(trackGroup, i19, i20, z5);
                                    if (m41867a.size() < 2) {
                                        iArr3 = f7730d;
                                    } else {
                                        if (!z4) {
                                            HashSet hashSet = new HashSet();
                                            int i21 = 0;
                                            int i22 = 0;
                                            str = null;
                                            while (i21 < m41867a.size()) {
                                                String str2 = trackGroup.getFormat(m41867a.get(i21).intValue()).sampleMimeType;
                                                if (hashSet.add(str2)) {
                                                    int m41866a = m41866a(trackGroup, iArr5, i13, str2, i15, i16, i17, i18, m41867a);
                                                    i5 = i22;
                                                    if (m41866a > i22) {
                                                        i5 = m41866a;
                                                        str = str2;
                                                    }
                                                } else {
                                                    i5 = i22;
                                                }
                                                i21++;
                                                i22 = i5;
                                            }
                                        } else {
                                            str = null;
                                        }
                                        m41855b(trackGroup, iArr5, i13, str, i15, i16, i17, i18, m41867a);
                                        iArr3 = m41867a.size() < 2 ? f7730d : C1996ac.m41652a(m41867a);
                                    }
                                }
                                if (iArr3.length > 0) {
                                    c1941a2 = new AbstractC1940e.C1941a(trackGroup, iArr3);
                                    i4 = i6;
                                    i3 = i8;
                                    break;
                                }
                                i14++;
                                c1941aArr = c1941aArr2;
                            }
                        }
                    }
                    i7 = i11;
                    i3 = i12;
                    z2 = z3;
                    c1941a2 = null;
                    i4 = i10;
                    AbstractC1940e.C1941a c1941a3 = c1941a2;
                    if (c1941a2 == null) {
                        c1941a3 = m41864a(trackGroupArray, iArr4, parameters);
                    }
                    c1941aArr2[i3] = c1941a3;
                    z = c1941aArr2[i3] != null;
                    i2 = i4;
                    c1941aArr = c1941aArr2;
                } else {
                    int i23 = i6;
                    i3 = i8;
                    i2 = i23;
                }
                c1939a2 = c1939a;
                z2 |= c1939a2.f7812d[i3].length > 0;
                i = i3;
            } else {
                i = i8;
                i2 = i6;
            }
            i6 = i2;
            i8 = i + 1;
        }
        String str3 = null;
        C1924a c1924a = null;
        int i24 = -1;
        for (int i25 = 0; i25 < i7; i25++) {
            if (1 == c1939a2.f7811c[i25]) {
                Pair<AbstractC1940e.C1941a, C1924a> m41862a = m41862a(c1939a2.f7812d[i25], iArr[i25], parameters, this.f7733g || !z2);
                if (m41862a != null && (c1924a == null || ((C1924a) m41862a.second).compareTo(c1924a) > 0)) {
                    if (i24 != -1) {
                        c1941aArr[i24] = null;
                    }
                    AbstractC1940e.C1941a c1941a4 = (AbstractC1940e.C1941a) m41862a.first;
                    c1941aArr[i25] = c1941a4;
                    str3 = c1941a4.f7816a.getFormat(c1941a4.f7817b[0]).language;
                    c1924a = (C1924a) m41862a.second;
                    i24 = i25;
                }
            }
        }
        C1926c c1926c = null;
        int i26 = -1;
        for (int i27 = 0; i27 < i7; i27++) {
            int i28 = c1939a2.f7811c[i27];
            if (i28 != 1 && i28 != 2) {
                if (i28 != 3) {
                    c1941aArr[i27] = m41854b(c1939a2.f7812d[i27], iArr[i27], parameters);
                } else {
                    Pair<AbstractC1940e.C1941a, C1926c> m41863a = m41863a(c1939a2.f7812d[i27], iArr[i27], parameters, str3);
                    if (m41863a != null && (c1926c == null || ((C1926c) m41863a.second).compareTo(c1926c) > 0)) {
                        if (i26 != -1) {
                            c1941aArr[i26] = null;
                        }
                        c1941aArr[i27] = (AbstractC1940e.C1941a) m41863a.first;
                        c1926c = (C1926c) m41863a.second;
                        i26 = i27;
                    }
                }
            }
        }
        for (int i29 = 0; i29 < i6; i29++) {
            if (!parameters.getRendererDisabled(i29)) {
                TrackGroupArray trackGroupArray2 = c1939a2.f7812d[i29];
                if (parameters.hasSelectionOverride(i29, trackGroupArray2)) {
                    SelectionOverride selectionOverride = parameters.getSelectionOverride(i29, trackGroupArray2);
                    if (selectionOverride != null) {
                        c1941a = new AbstractC1940e.C1941a(trackGroupArray2.get(selectionOverride.groupIndex), selectionOverride.tracks, selectionOverride.reason, Integer.valueOf(selectionOverride.data));
                        c1941aArr[i29] = c1941a;
                    }
                }
            }
            c1941a = null;
            c1941aArr[i29] = c1941a;
        }
        AbstractC1940e[] mo41822a = this.f7731e.mo41822a(c1941aArr, (AbstractC1964c) C1993a.m41690a(this.f7824c));
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[i6];
        for (int i30 = 0; i30 < i6; i30++) {
            rendererConfigurationArr[i30] = !parameters.getRendererDisabled(i30) && (c1939a2.f7811c[i30] == 6 || mo41822a[i30] != null) ? RendererConfiguration.DEFAULT : null;
        }
        m41859a(c1939a2, iArr, rendererConfigurationArr, mo41822a, parameters.tunnelingAudioSessionId);
        return Pair.create(rendererConfigurationArr, mo41822a);
    }

    /* renamed from: a */
    public final C1925b m41873a() {
        return this.f7732f.get().buildUpon();
    }

    /* renamed from: a */
    public final void m41861a(Parameters parameters) {
        C1993a.m41690a(parameters);
        if (this.f7732f.getAndSet(parameters).equals(parameters) || this.f7823b == null) {
            return;
        }
        this.f7823b.mo41790b();
    }

    /* renamed from: a */
    public final void m41860a(C1925b c1925b) {
        m41861a(c1925b.m41851a());
    }
}
