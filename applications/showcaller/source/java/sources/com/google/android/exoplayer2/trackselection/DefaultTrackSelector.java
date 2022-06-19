package com.google.android.exoplayer2.trackselection;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.C5416u0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC5405d;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector.class */
public class DefaultTrackSelector extends AbstractC5405d {

    /* renamed from: d */
    private static final int[] f17249d = new int[0];

    /* renamed from: e */
    private final AbstractC5408f.AbstractC5410b f17250e;

    /* renamed from: f */
    private final AtomicReference<Parameters> f17251f;

    /* renamed from: g */
    private boolean f17252g;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {
        public static final Parcelable.Creator<Parameters> CREATOR = new C5388a();

        /* renamed from: k */
        public static final Parameters f17253k;
        @Deprecated

        /* renamed from: l */
        public static final Parameters f17254l;
        @Deprecated

        /* renamed from: m */
        public static final Parameters f17255m;

        /* renamed from: A */
        public final boolean f17256A;

        /* renamed from: B */
        public final boolean f17257B;

        /* renamed from: C */
        public final boolean f17258C;

        /* renamed from: D */
        public final boolean f17259D;

        /* renamed from: E */
        public final boolean f17260E;
        @Deprecated

        /* renamed from: F */
        public final boolean f17261F;
        @Deprecated

        /* renamed from: G */
        public final boolean f17262G;

        /* renamed from: H */
        public final boolean f17263H;

        /* renamed from: I */
        public final int f17264I;

        /* renamed from: J */
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> f17265J;

        /* renamed from: K */
        private final SparseBooleanArray f17266K;

        /* renamed from: n */
        public final int f17267n;

        /* renamed from: o */
        public final int f17268o;

        /* renamed from: p */
        public final int f17269p;

        /* renamed from: q */
        public final int f17270q;

        /* renamed from: r */
        public final boolean f17271r;

        /* renamed from: s */
        public final boolean f17272s;

        /* renamed from: t */
        public final boolean f17273t;

        /* renamed from: u */
        public final int f17274u;

        /* renamed from: v */
        public final int f17275v;

        /* renamed from: w */
        public final boolean f17276w;

        /* renamed from: x */
        public final int f17277x;

        /* renamed from: y */
        public final int f17278y;

        /* renamed from: z */
        public final boolean f17279z;

        /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$a.class */
        static final class C5388a implements Parcelable.Creator<Parameters> {
            C5388a() {
            }

            /* renamed from: a */
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            /* renamed from: b */
            public Parameters[] newArray(int i) {
                return new Parameters[i];
            }
        }

        static {
            Parameters mo19323a = new C5392c().mo19323a();
            f17253k = mo19323a;
            f17254l = mo19323a;
            f17255m = mo19323a;
        }

        Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, String str, int i7, int i8, boolean z5, boolean z6, boolean z7, boolean z8, String str2, int i9, boolean z9, int i10, boolean z10, boolean z11, boolean z12, int i11, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, i9, z9, i10);
            this.f17267n = i;
            this.f17268o = i2;
            this.f17269p = i3;
            this.f17270q = i4;
            this.f17271r = z;
            this.f17272s = z2;
            this.f17273t = z3;
            this.f17274u = i5;
            this.f17275v = i6;
            this.f17276w = z4;
            this.f17277x = i7;
            this.f17278y = i8;
            this.f17279z = z5;
            this.f17256A = z6;
            this.f17257B = z7;
            this.f17258C = z8;
            this.f17259D = z10;
            this.f17260E = z11;
            this.f17263H = z12;
            this.f17264I = i11;
            this.f17261F = z2;
            this.f17262G = z3;
            this.f17265J = sparseArray;
            this.f17266K = sparseBooleanArray;
        }

        Parameters(Parcel parcel) {
            super(parcel);
            this.f17267n = parcel.readInt();
            this.f17268o = parcel.readInt();
            this.f17269p = parcel.readInt();
            this.f17270q = parcel.readInt();
            this.f17271r = C5515h0.m18828i0(parcel);
            boolean m18828i0 = C5515h0.m18828i0(parcel);
            this.f17272s = m18828i0;
            boolean m18828i02 = C5515h0.m18828i0(parcel);
            this.f17273t = m18828i02;
            this.f17274u = parcel.readInt();
            this.f17275v = parcel.readInt();
            this.f17276w = C5515h0.m18828i0(parcel);
            this.f17277x = parcel.readInt();
            this.f17278y = parcel.readInt();
            this.f17279z = C5515h0.m18828i0(parcel);
            this.f17256A = C5515h0.m18828i0(parcel);
            this.f17257B = C5515h0.m18828i0(parcel);
            this.f17258C = C5515h0.m18828i0(parcel);
            this.f17259D = C5515h0.m18828i0(parcel);
            this.f17260E = C5515h0.m18828i0(parcel);
            this.f17263H = C5515h0.m18828i0(parcel);
            this.f17264I = parcel.readInt();
            this.f17265J = m19336g(parcel);
            this.f17266K = (SparseBooleanArray) C5515h0.m18833g(parcel.readSparseBooleanArray());
            this.f17261F = m18828i0;
            this.f17262G = m18828i02;
        }

        /* renamed from: a */
        private static boolean m19342a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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

        /* renamed from: b */
        private static boolean m19341b(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (indexOfKey < 0 || !m19340c(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean m19340c(java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
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
                com.google.android.exoplayer2.source.TrackGroupArray r0 = (com.google.android.exoplayer2.source.TrackGroupArray) r0
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
                boolean r0 = com.google.android.exoplayer2.util.C5515h0.m18843b(r0, r1)
                if (r0 != 0) goto L1f
            L5c:
                r0 = 0
                return r0
            L5e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.m19340c(java.util.Map, java.util.Map):boolean");
        }

        /* renamed from: g */
        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> m19336g(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    hashMap.put((TrackGroupArray) C5508e.m18911e(parcel.readParcelable(TrackGroupArray.class.getClassLoader())), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            return sparseArray;
        }

        /* renamed from: h */
        private static void m19335h(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
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

        /* renamed from: d */
        public final boolean m19339d(int i) {
            return this.f17266K.get(i);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: e */
        public final SelectionOverride m19338e(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f17265J.get(i);
            return map != null ? map.get(trackGroupArray) : null;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            if (!super.equals(obj) || this.f17267n != parameters.f17267n || this.f17268o != parameters.f17268o || this.f17269p != parameters.f17269p || this.f17270q != parameters.f17270q || this.f17271r != parameters.f17271r || this.f17272s != parameters.f17272s || this.f17273t != parameters.f17273t || this.f17276w != parameters.f17276w || this.f17274u != parameters.f17274u || this.f17275v != parameters.f17275v || this.f17277x != parameters.f17277x || this.f17278y != parameters.f17278y || this.f17279z != parameters.f17279z || this.f17256A != parameters.f17256A || this.f17257B != parameters.f17257B || this.f17258C != parameters.f17258C || this.f17259D != parameters.f17259D || this.f17260E != parameters.f17260E || this.f17263H != parameters.f17263H || this.f17264I != parameters.f17264I || !m19342a(this.f17266K, parameters.f17266K) || !m19341b(this.f17265J, parameters.f17265J)) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public final boolean m19337f(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f17265J.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f17267n) * 31) + this.f17268o) * 31) + this.f17269p) * 31) + this.f17270q) * 31) + (this.f17271r ? 1 : 0)) * 31) + (this.f17272s ? 1 : 0)) * 31) + (this.f17273t ? 1 : 0)) * 31) + (this.f17276w ? 1 : 0)) * 31) + this.f17274u) * 31) + this.f17275v) * 31) + this.f17277x) * 31) + this.f17278y) * 31) + (this.f17279z ? 1 : 0)) * 31) + (this.f17256A ? 1 : 0)) * 31) + (this.f17257B ? 1 : 0)) * 31) + (this.f17258C ? 1 : 0)) * 31) + (this.f17259D ? 1 : 0)) * 31) + (this.f17260E ? 1 : 0)) * 31) + (this.f17263H ? 1 : 0)) * 31) + this.f17264I;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f17267n);
            parcel.writeInt(this.f17268o);
            parcel.writeInt(this.f17269p);
            parcel.writeInt(this.f17270q);
            C5515h0.m18798x0(parcel, this.f17271r);
            C5515h0.m18798x0(parcel, this.f17272s);
            C5515h0.m18798x0(parcel, this.f17273t);
            parcel.writeInt(this.f17274u);
            parcel.writeInt(this.f17275v);
            C5515h0.m18798x0(parcel, this.f17276w);
            parcel.writeInt(this.f17277x);
            parcel.writeInt(this.f17278y);
            C5515h0.m18798x0(parcel, this.f17279z);
            C5515h0.m18798x0(parcel, this.f17256A);
            C5515h0.m18798x0(parcel, this.f17257B);
            C5515h0.m18798x0(parcel, this.f17258C);
            C5515h0.m18798x0(parcel, this.f17259D);
            C5515h0.m18798x0(parcel, this.f17260E);
            C5515h0.m18798x0(parcel, this.f17263H);
            parcel.writeInt(this.f17264I);
            m19335h(parcel, this.f17265J);
            parcel.writeSparseBooleanArray(this.f17266K);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new C5389a();

        /* renamed from: d */
        public final int f17280d;

        /* renamed from: e */
        public final int[] f17281e;

        /* renamed from: f */
        public final int f17282f;

        /* renamed from: g */
        public final int f17283g;

        /* renamed from: h */
        public final int f17284h;

        /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$a.class */
        static final class C5389a implements Parcelable.Creator<SelectionOverride> {
            C5389a() {
            }

            /* renamed from: a */
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            /* renamed from: b */
            public SelectionOverride[] newArray(int i) {
                return new SelectionOverride[i];
            }
        }

        public SelectionOverride(int i, int... iArr) {
            this(i, iArr, 2, 0);
        }

        public SelectionOverride(int i, int[] iArr, int i2, int i3) {
            this.f17280d = i;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f17281e = copyOf;
            this.f17282f = iArr.length;
            this.f17283g = i2;
            this.f17284h = i3;
            Arrays.sort(copyOf);
        }

        SelectionOverride(Parcel parcel) {
            this.f17280d = parcel.readInt();
            int readByte = parcel.readByte();
            this.f17282f = readByte;
            int[] iArr = new int[readByte];
            this.f17281e = iArr;
            parcel.readIntArray(iArr);
            this.f17283g = parcel.readInt();
            this.f17284h = parcel.readInt();
        }

        /* renamed from: a */
        public boolean m19332a(int i) {
            for (int i2 : this.f17281e) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
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
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            if (this.f17280d != selectionOverride.f17280d || !Arrays.equals(this.f17281e, selectionOverride.f17281e) || this.f17283g != selectionOverride.f17283g || this.f17284h != selectionOverride.f17284h) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f17280d * 31) + Arrays.hashCode(this.f17281e)) * 31) + this.f17283g) * 31) + this.f17284h;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f17280d);
            parcel.writeInt(this.f17281e.length);
            parcel.writeIntArray(this.f17281e);
            parcel.writeInt(this.f17283g);
            parcel.writeInt(this.f17284h);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$a.class */
    public static final class C5390a {

        /* renamed from: a */
        public final int f17285a;

        /* renamed from: b */
        public final int f17286b;

        /* renamed from: c */
        public final String f17287c;

        public C5390a(int i, int i2, String str) {
            this.f17285a = i;
            this.f17286b = i2;
            this.f17287c = str;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C5390a.class != obj.getClass()) {
                return false;
            }
            C5390a c5390a = (C5390a) obj;
            if (this.f17285a != c5390a.f17285a || this.f17286b != c5390a.f17286b || !TextUtils.equals(this.f17287c, c5390a.f17287c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f17285a;
            int i2 = this.f17286b;
            String str = this.f17287c;
            return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$b.class */
    public static final class C5391b implements Comparable<C5391b> {

        /* renamed from: d */
        public final boolean f17288d;

        /* renamed from: e */
        private final String f17289e;

        /* renamed from: f */
        private final Parameters f17290f;

        /* renamed from: g */
        private final boolean f17291g;

        /* renamed from: h */
        private final int f17292h;

        /* renamed from: i */
        private final int f17293i;

        /* renamed from: j */
        private final int f17294j;

        /* renamed from: k */
        private final boolean f17295k;

        /* renamed from: l */
        private final int f17296l;

        /* renamed from: m */
        private final int f17297m;

        /* renamed from: n */
        private final int f17298n;

        /* JADX WARN: Removed duplicated region for block: B:19:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00cb A[EDGE_INSN: B:26:0x00cb->B:23:0x00cb ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C5391b(com.google.android.exoplayer2.Format r6, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r7, int r8) {
            /*
                Method dump skipped, instructions count: 216
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C5391b.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public int compareTo(C5391b c5391b) {
            int m19357l;
            int m19358k;
            boolean z = this.f17291g;
            int i = 1;
            int i2 = 1;
            if (z != c5391b.f17291g) {
                return z ? 1 : -1;
            }
            int i3 = this.f17292h;
            int i4 = c5391b.f17292h;
            if (i3 != i4) {
                return DefaultTrackSelector.m19357l(i3, i4);
            }
            boolean z2 = this.f17288d;
            if (z2 != c5391b.f17288d) {
                return z2 ? 1 : -1;
            } else if (this.f17290f.f17259D && (m19358k = DefaultTrackSelector.m19358k(this.f17298n, c5391b.f17298n)) != 0) {
                if (m19358k > 0) {
                    i = -1;
                }
                return i;
            } else {
                boolean z3 = this.f17295k;
                if (z3 != c5391b.f17295k) {
                    return z3 ? 1 : -1;
                }
                int i5 = this.f17293i;
                int i6 = c5391b.f17293i;
                if (i5 != i6) {
                    return -DefaultTrackSelector.m19357l(i5, i6);
                }
                int i7 = this.f17294j;
                int i8 = c5391b.f17294j;
                if (i7 != i8) {
                    return DefaultTrackSelector.m19357l(i7, i8);
                }
                if (!this.f17288d || !this.f17291g) {
                    i2 = -1;
                }
                int i9 = this.f17296l;
                int i10 = c5391b.f17296l;
                if (i9 != i10) {
                    m19357l = DefaultTrackSelector.m19357l(i9, i10);
                } else {
                    int i11 = this.f17297m;
                    int i12 = c5391b.f17297m;
                    if (i11 != i12) {
                        m19357l = DefaultTrackSelector.m19357l(i11, i12);
                    } else if (!C5515h0.m18843b(this.f17289e, c5391b.f17289e)) {
                        return 0;
                    } else {
                        m19357l = DefaultTrackSelector.m19357l(this.f17298n, c5391b.f17298n);
                    }
                }
                return i2 * m19357l;
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$c.class */
    public static final class C5392c extends TrackSelectionParameters.C5395b {

        /* renamed from: f */
        private int f17300f;

        /* renamed from: g */
        private int f17301g;

        /* renamed from: h */
        private int f17302h;

        /* renamed from: i */
        private int f17303i;

        /* renamed from: j */
        private boolean f17304j;

        /* renamed from: k */
        private boolean f17305k;

        /* renamed from: l */
        private boolean f17306l;

        /* renamed from: m */
        private int f17307m;

        /* renamed from: n */
        private int f17308n;

        /* renamed from: o */
        private boolean f17309o;

        /* renamed from: p */
        private int f17310p;

        /* renamed from: q */
        private int f17311q;

        /* renamed from: r */
        private boolean f17312r;

        /* renamed from: s */
        private boolean f17313s;

        /* renamed from: t */
        private boolean f17314t;

        /* renamed from: u */
        private boolean f17315u;

        /* renamed from: v */
        private boolean f17316v;

        /* renamed from: w */
        private boolean f17317w;

        /* renamed from: x */
        private boolean f17318x;

        /* renamed from: y */
        private int f17319y;

        /* renamed from: z */
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> f17320z = new SparseArray<>();

        /* renamed from: A */
        private final SparseBooleanArray f17299A = new SparseBooleanArray();

        @Deprecated
        public C5392c() {
            m19327c();
        }

        /* renamed from: c */
        private void m19327c() {
            this.f17300f = Integer.MAX_VALUE;
            this.f17301g = Integer.MAX_VALUE;
            this.f17302h = Integer.MAX_VALUE;
            this.f17303i = Integer.MAX_VALUE;
            this.f17304j = true;
            this.f17305k = false;
            this.f17306l = true;
            this.f17307m = Integer.MAX_VALUE;
            this.f17308n = Integer.MAX_VALUE;
            this.f17309o = true;
            this.f17310p = Integer.MAX_VALUE;
            this.f17311q = Integer.MAX_VALUE;
            this.f17312r = true;
            this.f17313s = false;
            this.f17314t = false;
            this.f17315u = false;
            this.f17316v = false;
            this.f17317w = false;
            this.f17318x = true;
            this.f17319y = 0;
        }

        /* renamed from: b */
        public Parameters mo19323a() {
            return new Parameters(this.f17300f, this.f17301g, this.f17302h, this.f17303i, this.f17304j, this.f17305k, this.f17306l, this.f17307m, this.f17308n, this.f17309o, this.f17336a, this.f17310p, this.f17311q, this.f17312r, this.f17313s, this.f17314t, this.f17315u, this.f17337b, this.f17338c, this.f17339d, this.f17340e, this.f17316v, this.f17317w, this.f17318x, this.f17319y, this.f17320z, this.f17299A);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$d.class */
    public static final class C5393d implements Comparable<C5393d> {

        /* renamed from: d */
        public final boolean f17321d;

        /* renamed from: e */
        private final boolean f17322e;

        /* renamed from: f */
        private final boolean f17323f;

        /* renamed from: g */
        private final boolean f17324g;

        /* renamed from: h */
        private final int f17325h;

        /* renamed from: i */
        private final int f17326i;

        /* renamed from: j */
        private final int f17327j;

        /* renamed from: k */
        private final boolean f17328k;

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e6, code lost:
            if (r0 > 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C5393d(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C5393d.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public int compareTo(C5393d c5393d) {
            boolean z;
            boolean z2 = this.f17322e;
            int i = 1;
            if (z2 != c5393d.f17322e) {
                return z2 ? 1 : -1;
            }
            int i2 = this.f17325h;
            int i3 = c5393d.f17325h;
            if (i2 != i3) {
                return DefaultTrackSelector.m19357l(i2, i3);
            }
            int i4 = this.f17326i;
            int i5 = c5393d.f17326i;
            if (i4 != i5) {
                return DefaultTrackSelector.m19357l(i4, i5);
            }
            boolean z3 = this.f17323f;
            if (z3 != c5393d.f17323f) {
                return z3 ? 1 : -1;
            }
            boolean z4 = this.f17324g;
            if (z4 != c5393d.f17324g) {
                return z4 ? 1 : -1;
            }
            int i6 = this.f17327j;
            int i7 = c5393d.f17327j;
            if (i6 != i7) {
                return DefaultTrackSelector.m19357l(i6, i7);
            }
            if (i4 != 0 || (z = this.f17328k) == c5393d.f17328k) {
                return 0;
            }
            if (z) {
                i = -1;
            }
            return i;
        }
    }

    public DefaultTrackSelector(Parameters parameters, AbstractC5408f.AbstractC5410b abstractC5410b) {
        this.f17250e = abstractC5410b;
        this.f17251f = new AtomicReference<>(parameters);
    }

    @Deprecated
    public DefaultTrackSelector(AbstractC5408f.AbstractC5410b abstractC5410b) {
        this(Parameters.f17253k, abstractC5410b);
    }

    /* renamed from: A */
    private static AbstractC5408f.C5409a m19367A(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters) {
        int i2 = parameters.f17273t ? 24 : 16;
        boolean z = parameters.f17272s && (i & i2) != 0;
        for (int i3 = 0; i3 < trackGroupArray.f16308e; i3++) {
            TrackGroup m20155a = trackGroupArray.m20155a(i3);
            int[] m19352q = m19352q(m20155a, iArr[i3], z, i2, parameters.f17267n, parameters.f17268o, parameters.f17269p, parameters.f17270q, parameters.f17274u, parameters.f17275v, parameters.f17276w);
            if (m19352q.length > 0) {
                return new AbstractC5408f.C5409a(m20155a, m19352q);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0140, code lost:
        if (r0 < 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0143, code lost:
        r25 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0194  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.trackselection.AbstractC5408f.C5409a m19364D(com.google.android.exoplayer2.source.TrackGroupArray r8, int[][] r9, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r10) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m19364D(com.google.android.exoplayer2.source.TrackGroupArray, int[][], com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters):com.google.android.exoplayer2.trackselection.f$a");
    }

    /* renamed from: k */
    public static int m19358k(int i, int i2) {
        int i3;
        if (i == -1) {
            i3 = -1;
            if (i2 == -1) {
                i3 = 0;
            }
        } else {
            i3 = i2 == -1 ? 1 : i - i2;
        }
        return i3;
    }

    /* renamed from: l */
    public static int m19357l(int i, int i2) {
        return i > i2 ? 1 : i2 > i ? -1 : 0;
    }

    /* renamed from: m */
    private static void m19356m(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!m19346w(trackGroup.m20159a(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                list.remove(size);
            }
        }
    }

    /* renamed from: n */
    private static int m19355n(TrackGroup trackGroup, int[] iArr, C5390a c5390a, int i, boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < trackGroup.f16304d) {
                int i5 = i4;
                if (m19347v(trackGroup.m20159a(i2), iArr[i2], c5390a, i, z, z2, z3)) {
                    i5 = i4 + 1;
                }
                i2++;
                i3 = i5;
            } else {
                return i4;
            }
        }
    }

    /* renamed from: o */
    private static int[] m19354o(TrackGroup trackGroup, int[] iArr, int i, boolean z, boolean z2, boolean z3) {
        HashSet hashSet = new HashSet();
        C5390a c5390a = null;
        int i2 = 0;
        int i3 = 0;
        while (i2 < trackGroup.f16304d) {
            Format m20159a = trackGroup.m20159a(i2);
            C5390a c5390a2 = new C5390a(m20159a.f14474y, m20159a.f14475z, m20159a.f14461l);
            int i4 = i3;
            C5390a c5390a3 = c5390a;
            if (hashSet.add(c5390a2)) {
                int m19355n = m19355n(trackGroup, iArr, c5390a2, i, z, z2, z3);
                i4 = i3;
                c5390a3 = c5390a;
                if (m19355n > i3) {
                    i4 = m19355n;
                    c5390a3 = c5390a2;
                }
            }
            i2++;
            i3 = i4;
            c5390a = c5390a3;
        }
        if (i3 > 1) {
            C5508e.m18911e(c5390a);
            int[] iArr2 = new int[i3];
            int i5 = 0;
            int i6 = 0;
            while (i6 < trackGroup.f16304d) {
                int i7 = i5;
                if (m19347v(trackGroup.m20159a(i6), iArr[i6], c5390a, i, z, z2, z3)) {
                    iArr2[i5] = i6;
                    i7 = i5 + 1;
                }
                i6++;
                i5 = i7;
            }
            return iArr2;
        }
        return f17249d;
    }

    /* renamed from: p */
    private static int m19353p(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 < list.size()) {
                int intValue = list.get(i6).intValue();
                int i9 = i8;
                if (m19346w(trackGroup.m20159a(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                    i9 = i8 + 1;
                }
                i6++;
                i7 = i9;
            } else {
                return i8;
            }
        }
    }

    /* renamed from: q */
    private static int[] m19352q(TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2) {
        String str;
        if (trackGroup.f16304d < 2) {
            return f17249d;
        }
        List<Integer> m19349t = m19349t(trackGroup, i6, i7, z2);
        if (m19349t.size() < 2) {
            return f17249d;
        }
        if (!z) {
            HashSet hashSet = new HashSet();
            str = null;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                int i10 = i9;
                if (i8 >= m19349t.size()) {
                    break;
                }
                String str2 = trackGroup.m20159a(m19349t.get(i8).intValue()).f14461l;
                String str3 = str;
                int i11 = i10;
                if (hashSet.add(str2)) {
                    int m19353p = m19353p(trackGroup, iArr, i, str2, i2, i3, i4, i5, m19349t);
                    str3 = str;
                    i11 = i10;
                    if (m19353p > i10) {
                        i11 = m19353p;
                        str3 = str2;
                    }
                }
                i8++;
                str = str3;
                i9 = i11;
            }
        } else {
            str = null;
        }
        m19356m(trackGroup, iArr, i, str, i2, i3, i4, i5, m19349t);
        return m19349t.size() < 2 ? f17249d : C5515h0.m18808s0(m19349t);
    }

    /* renamed from: r */
    protected static int m19351r(Format format, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(format.f14449D)) {
            String m19344y = m19344y(str);
            String m19344y2 = m19344y(format.f14449D);
            if (m19344y2 != null && m19344y != null) {
                if (m19344y2.startsWith(m19344y) || m19344y.startsWith(m19344y2)) {
                    return 3;
                }
                return C5515h0.m18816o0(m19344y2, "-")[0].equals(C5515h0.m18816o0(m19344y, "-")[0]) ? 2 : 0;
            }
            int i = 0;
            if (z) {
                i = 0;
                if (m19344y2 == null) {
                    i = 1;
                }
            }
            return i;
        }
        return 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L14;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point m19350s(boolean r6, int r7, int r8, int r9, int r10) {
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
            int r3 = com.google.android.exoplayer2.util.C5515h0.m18829i(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L54:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r11
            r3 = r10
            int r2 = com.google.android.exoplayer2.util.C5515h0.m18829i(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m19350s(boolean, int, int, int, int):android.graphics.Point");
    }

    /* renamed from: t */
    private static List<Integer> m19349t(TrackGroup trackGroup, int i, int i2, boolean z) {
        int i3;
        ArrayList arrayList = new ArrayList(trackGroup.f16304d);
        int i4 = 0;
        for (int i5 = 0; i5 < trackGroup.f16304d; i5++) {
            arrayList.add(Integer.valueOf(i5));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i6 = Integer.MAX_VALUE;
            while (true) {
                i3 = i6;
                if (i4 >= trackGroup.f16304d) {
                    break;
                }
                Format m20159a = trackGroup.m20159a(i4);
                int i7 = m20159a.f14466q;
                int i8 = i3;
                if (i7 > 0) {
                    int i9 = m20159a.f14467r;
                    i8 = i3;
                    if (i9 > 0) {
                        Point m19350s = m19350s(z, i, i2, i7, i9);
                        int i10 = m20159a.f14466q;
                        int i11 = m20159a.f14467r;
                        int i12 = i10 * i11;
                        i8 = i3;
                        if (i10 >= ((int) (m19350s.x * 0.98f))) {
                            i8 = i3;
                            if (i11 >= ((int) (m19350s.y * 0.98f))) {
                                i8 = i3;
                                if (i12 < i3) {
                                    i8 = i12;
                                }
                            }
                        }
                    }
                }
                i4++;
                i6 = i8;
            }
            if (i3 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int m21756F = trackGroup.m20159a(((Integer) arrayList.get(size)).intValue()).m21756F();
                    if (m21756F == -1 || m21756F > i3) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: u */
    protected static boolean m19348u(int i, boolean z) {
        int m20191d = C5191s0.m20191d(i);
        return m20191d == 4 || (z && m20191d == 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        if (r0 == r5.f17285a) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (android.text.TextUtils.equals(r0, r5.f17287c) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
        if (r0 == r5.f17286b) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
        if (r0 <= r6) goto L8;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m19347v(com.google.android.exoplayer2.Format r3, int r4, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C5390a r5, int r6, boolean r7, boolean r8, boolean r9) {
        /*
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = 0
            boolean r0 = m19348u(r0, r1)
            if (r0 == 0) goto L87
            r0 = r3
            int r0 = r0.f14457h
            r4 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L22
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r6
            if (r0 > r1) goto L87
        L22:
            r0 = r9
            if (r0 != 0) goto L41
            r0 = r3
            int r0 = r0.f14474y
            r4 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L87
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f17285a
            if (r0 != r1) goto L87
        L41:
            r0 = r7
            if (r0 != 0) goto L65
            r0 = r3
            java.lang.String r0 = r0.f14461l
            r12 = r0
            r0 = r10
            r11 = r0
            r0 = r12
            if (r0 == 0) goto L87
            r0 = r10
            r11 = r0
            r0 = r12
            r1 = r5
            java.lang.String r1 = r1.f17287c
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L87
        L65:
            r0 = r8
            if (r0 != 0) goto L84
            r0 = r3
            int r0 = r0.f14475z
            r4 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L87
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f17286b
            if (r0 != r1) goto L87
        L84:
            r0 = 1
            r11 = r0
        L87:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m19347v(com.google.android.exoplayer2.Format, int, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a, int, boolean, boolean, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 <= r7) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r0 <= r8) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
        if (r0 <= r9) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
        if (r0 <= r10) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        if (com.google.android.exoplayer2.util.C5515h0.m18843b(r3.f14461l, r4) != false) goto L10;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m19346w(com.google.android.exoplayer2.Format r3, java.lang.String r4, int r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = 0
            boolean r0 = m19348u(r0, r1)
            if (r0 == 0) goto L86
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r6
            r0 = r0 & r1
            if (r0 == 0) goto L86
            r0 = r4
            if (r0 == 0) goto L2c
            r0 = r11
            r12 = r0
            r0 = r3
            java.lang.String r0 = r0.f14461l
            r1 = r4
            boolean r0 = com.google.android.exoplayer2.util.C5515h0.m18843b(r0, r1)
            if (r0 == 0) goto L86
        L2c:
            r0 = r3
            int r0 = r0.f14466q
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L40
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r7
            if (r0 > r1) goto L86
        L40:
            r0 = r3
            int r0 = r0.f14467r
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L54
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r8
            if (r0 > r1) goto L86
        L54:
            r0 = r3
            float r0 = r0.f14468s
            r13 = r0
            r0 = r13
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6f
            r0 = r11
            r12 = r0
            r0 = r13
            r1 = r9
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L86
        L6f:
            r0 = r3
            int r0 = r0.f14457h
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L83
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r10
            if (r0 > r1) goto L86
        L83:
            r0 = 1
            r12 = r0
        L86:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m19346w(com.google.android.exoplayer2.Format, java.lang.String, int, int, int, int, int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0084, code lost:
        r10 = false;
     */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m19345x(com.google.android.exoplayer2.trackselection.AbstractC5405d.C5406a r4, int[][][] r5, com.google.android.exoplayer2.C5416u0[] r6, com.google.android.exoplayer2.trackselection.AbstractC5408f[] r7, int r8) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m19345x(com.google.android.exoplayer2.trackselection.d$a, int[][][], com.google.android.exoplayer2.u0[], com.google.android.exoplayer2.trackselection.f[], int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (android.text.TextUtils.equals(r3, "und") != false) goto L6;
     */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static java.lang.String m19344y(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L13
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String r1 = "und"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L15
        L13:
            r0 = 0
            r4 = r0
        L15:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m19344y(java.lang.String):java.lang.String");
    }

    /* renamed from: z */
    private static boolean m19343z(int[][] iArr, TrackGroupArray trackGroupArray, AbstractC5408f abstractC5408f) {
        if (abstractC5408f == null) {
            return false;
        }
        int m20154b = trackGroupArray.m20154b(abstractC5408f.mo19295a());
        for (int i = 0; i < abstractC5408f.length(); i++) {
            if (C5191s0.m20189f(iArr[m20154b][abstractC5408f.mo19289g(i)]) != 32) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: B */
    protected AbstractC5408f.C5409a[] m19366B(AbstractC5405d.C5406a c5406a, int[][][] iArr, int[] iArr2, Parameters parameters) {
        boolean z;
        C5393d c5393d;
        int i;
        int m19300c = c5406a.m19300c();
        AbstractC5408f.C5409a[] c5409aArr = new AbstractC5408f.C5409a[m19300c];
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z = z3;
            if (i2 >= m19300c) {
                break;
            }
            boolean z4 = z2;
            boolean z5 = z;
            if (2 == c5406a.m19299d(i2)) {
                z4 = z2;
                if (!z2) {
                    c5409aArr[i2] = m19361G(c5406a.m19298e(i2), iArr[i2], iArr2[i2], parameters, true);
                    z4 = c5409aArr[i2] != null;
                }
                z5 = z | (c5406a.m19298e(i2).f16308e > 0);
            }
            i2++;
            z2 = z4;
            z3 = z5;
        }
        C5391b c5391b = null;
        String str = null;
        int i3 = -1;
        for (int i4 = 0; i4 < m19300c; i4++) {
            if (1 == c5406a.m19299d(i4)) {
                int i5 = i3;
                C5391b c5391b2 = c5391b;
                int i6 = i4;
                Pair<AbstractC5408f.C5409a, C5391b> m19365C = m19365C(c5406a.m19298e(i4), iArr[i4], iArr2[i4], parameters, this.f17252g || !z);
                if (m19365C != null && (c5391b2 == null || ((C5391b) m19365C.second).compareTo(c5391b2) > 0)) {
                    if (i5 != -1) {
                        c5409aArr[i5] = null;
                    }
                    AbstractC5408f.C5409a c5409a = (AbstractC5408f.C5409a) m19365C.first;
                    c5409aArr[i6] = c5409a;
                    str = c5409a.f17380a.m20159a(c5409a.f17381b[0]).f14449D;
                    c5391b = (C5391b) m19365C.second;
                    i3 = i6;
                }
            }
        }
        String str2 = str;
        C5393d c5393d2 = null;
        int i7 = -1;
        int i8 = 0;
        while (i8 < m19300c) {
            int m19299d = c5406a.m19299d(i8);
            if (m19299d != 1) {
                if (m19299d != 2) {
                    if (m19299d != 3) {
                        c5409aArr[i8] = m19363E(m19299d, c5406a.m19298e(i8), iArr[i8], parameters);
                    } else {
                        Pair<AbstractC5408f.C5409a, C5393d> m19362F = m19362F(c5406a.m19298e(i8), iArr[i8], parameters, str2);
                        c5393d = c5393d2;
                        i = i7;
                        if (m19362F != null) {
                            if (c5393d2 != null) {
                                c5393d = c5393d2;
                                i = i7;
                                if (((C5393d) m19362F.second).compareTo(c5393d2) <= 0) {
                                }
                            }
                            if (i7 != -1) {
                                c5409aArr[i7] = null;
                            }
                            c5409aArr[i8] = (AbstractC5408f.C5409a) m19362F.first;
                            c5393d = (C5393d) m19362F.second;
                            i = i8;
                        }
                    }
                }
                c5393d = c5393d2;
                i = i7;
            } else {
                i = i7;
                c5393d = c5393d2;
            }
            i8++;
            c5393d2 = c5393d;
            i7 = i;
        }
        return c5409aArr;
    }

    /* renamed from: C */
    protected Pair<AbstractC5408f.C5409a, C5391b> m19365C(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) {
        C5391b c5391b = null;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < trackGroupArray.f16308e; i4++) {
            TrackGroup m20155a = trackGroupArray.m20155a(i4);
            int[] iArr2 = iArr[i4];
            int i5 = 0;
            while (i5 < m20155a.f16304d) {
                int i6 = i2;
                int i7 = i3;
                C5391b c5391b2 = c5391b;
                if (m19348u(iArr2[i5], parameters.f17263H)) {
                    C5391b c5391b3 = new C5391b(m20155a.m20159a(i5), parameters, iArr2[i5]);
                    if (c5391b3.f17288d || parameters.f17279z) {
                        if (c5391b != null) {
                            i6 = i2;
                            i7 = i3;
                            c5391b2 = c5391b;
                            if (c5391b3.compareTo(c5391b) <= 0) {
                            }
                        }
                        i6 = i4;
                        i7 = i5;
                        c5391b2 = c5391b3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        c5391b2 = c5391b;
                    }
                }
                i5++;
                i2 = i6;
                i3 = i7;
                c5391b = c5391b2;
            }
        }
        if (i2 == -1) {
            return null;
        }
        TrackGroup m20155a2 = trackGroupArray.m20155a(i2);
        AbstractC5408f.C5409a c5409a = null;
        if (!parameters.f17260E) {
            c5409a = null;
            if (!parameters.f17259D) {
                c5409a = null;
                if (z) {
                    int[] m19354o = m19354o(m20155a2, iArr[i2], parameters.f17278y, parameters.f17256A, parameters.f17257B, parameters.f17258C);
                    c5409a = null;
                    if (m19354o.length > 0) {
                        c5409a = new AbstractC5408f.C5409a(m20155a2, m19354o);
                    }
                }
            }
        }
        AbstractC5408f.C5409a c5409a2 = c5409a;
        if (c5409a == null) {
            c5409a2 = new AbstractC5408f.C5409a(m20155a2, i3);
        }
        return Pair.create(c5409a2, C5508e.m18911e(c5391b));
    }

    /* renamed from: E */
    protected AbstractC5408f.C5409a m19363E(int i, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroupArray.f16308e; i4++) {
            TrackGroup m20155a = trackGroupArray.m20155a(i4);
            int[] iArr2 = iArr[i4];
            int i5 = 0;
            while (i5 < m20155a.f16304d) {
                TrackGroup trackGroup2 = trackGroup;
                int i6 = i2;
                int i7 = i3;
                if (m19348u(iArr2[i5], parameters.f17263H)) {
                    int i8 = (m20155a.m20159a(i5).f14455f & 1) != 0 ? 2 : 1;
                    int i9 = i8;
                    if (m19348u(iArr2[i5], false)) {
                        i9 = i8 + 1000;
                    }
                    trackGroup2 = trackGroup;
                    i6 = i2;
                    i7 = i3;
                    if (i9 > i3) {
                        trackGroup2 = m20155a;
                        i6 = i5;
                        i7 = i9;
                    }
                }
                i5++;
                trackGroup = trackGroup2;
                i2 = i6;
                i3 = i7;
            }
        }
        return trackGroup == null ? null : new AbstractC5408f.C5409a(trackGroup, i2);
    }

    /* renamed from: F */
    protected Pair<AbstractC5408f.C5409a, C5393d> m19362F(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) {
        C5393d c5393d;
        TrackGroup trackGroup;
        int i;
        int i2 = -1;
        TrackGroup trackGroup2 = null;
        C5393d c5393d2 = null;
        for (int i3 = 0; i3 < trackGroupArray.f16308e; i3++) {
            TrackGroup m20155a = trackGroupArray.m20155a(i3);
            int[] iArr2 = iArr[i3];
            int i4 = 0;
            while (i4 < m20155a.f16304d) {
                if (m19348u(iArr2[i4], parameters.f17263H)) {
                    C5393d c5393d3 = new C5393d(m20155a.m20159a(i4), parameters, iArr2[i4], str);
                    i = i2;
                    trackGroup = trackGroup2;
                    c5393d = c5393d2;
                    if (c5393d3.f17321d) {
                        if (c5393d2 != null) {
                            i = i2;
                            trackGroup = trackGroup2;
                            c5393d = c5393d2;
                            if (c5393d3.compareTo(c5393d2) <= 0) {
                            }
                        }
                        trackGroup = m20155a;
                        i = i4;
                        c5393d = c5393d3;
                    }
                } else {
                    c5393d = c5393d2;
                    trackGroup = trackGroup2;
                    i = i2;
                }
                i4++;
                i2 = i;
                trackGroup2 = trackGroup;
                c5393d2 = c5393d;
            }
        }
        return trackGroup2 == null ? null : Pair.create(new AbstractC5408f.C5409a(trackGroup2, i2), C5508e.m18911e(c5393d2));
    }

    /* renamed from: G */
    protected AbstractC5408f.C5409a m19361G(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) {
        AbstractC5408f.C5409a m19367A = (parameters.f17260E || parameters.f17259D || !z) ? null : m19367A(trackGroupArray, iArr, i, parameters);
        AbstractC5408f.C5409a c5409a = m19367A;
        if (m19367A == null) {
            c5409a = m19364D(trackGroupArray, iArr, parameters);
        }
        return c5409a;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5405d
    /* renamed from: h */
    protected final Pair<C5416u0[], AbstractC5408f[]> mo19303h(AbstractC5405d.C5406a c5406a, int[][][] iArr, int[] iArr2) {
        Parameters parameters = this.f17251f.get();
        int m19300c = c5406a.m19300c();
        AbstractC5408f.C5409a[] m19366B = m19366B(c5406a, iArr, iArr2, parameters);
        int i = 0;
        while (true) {
            AbstractC5408f.C5409a c5409a = null;
            if (i >= m19300c) {
                break;
            }
            if (parameters.m19339d(i)) {
                m19366B[i] = null;
            } else {
                TrackGroupArray m19298e = c5406a.m19298e(i);
                if (parameters.m19337f(i, m19298e)) {
                    SelectionOverride m19338e = parameters.m19338e(i, m19298e);
                    if (m19338e != null) {
                        c5409a = new AbstractC5408f.C5409a(m19298e.m20155a(m19338e.f17280d), m19338e.f17281e, m19338e.f17283g, Integer.valueOf(m19338e.f17284h));
                    }
                    m19366B[i] = c5409a;
                }
            }
            i++;
        }
        AbstractC5408f[] mo19280a = this.f17250e.mo19280a(m19366B, m19277a());
        C5416u0[] c5416u0Arr = new C5416u0[m19300c];
        for (int i2 = 0; i2 < m19300c; i2++) {
            c5416u0Arr[i2] = !parameters.m19339d(i2) && (c5406a.m19299d(i2) == 6 || mo19280a[i2] != null) ? C5416u0.f17404a : null;
        }
        m19345x(c5406a, iArr, c5416u0Arr, mo19280a, parameters.f17264I);
        return Pair.create(c5416u0Arr, mo19280a);
    }
}
