package com.google.android.exoplayer2.trackselection;

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
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p188c.C2955n0;
import p131c.p161d.p170b.p188c.C2961p0;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2777d;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p198d1.C2768a;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector.class */
public class DefaultTrackSelector extends AbstractC2777d {

    /* renamed from: e */
    public static final int[] f22272e = new int[0];

    /* renamed from: b */
    public final AbstractC2780f.AbstractC2782b f22273b;

    /* renamed from: c */
    public final AtomicReference<Parameters> f22274c;

    /* renamed from: d */
    public boolean f22275d;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {
        public static final Parcelable.Creator<Parameters> CREATOR = new C7175a();

        /* renamed from: D */
        public static final Parameters f22276D;
        @Deprecated

        /* renamed from: E */
        public static final Parameters f22277E;
        @Deprecated

        /* renamed from: F */
        public static final Parameters f22278F;

        /* renamed from: A */
        public final int f22279A;

        /* renamed from: B */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f22280B;

        /* renamed from: C */
        public final SparseBooleanArray f22281C;

        /* renamed from: h */
        public final int f22282h;

        /* renamed from: i */
        public final int f22283i;

        /* renamed from: j */
        public final int f22284j;

        /* renamed from: k */
        public final int f22285k;

        /* renamed from: l */
        public final boolean f22286l;

        /* renamed from: m */
        public final boolean f22287m;

        /* renamed from: n */
        public final boolean f22288n;

        /* renamed from: o */
        public final int f22289o;

        /* renamed from: p */
        public final int f22290p;

        /* renamed from: q */
        public final boolean f22291q;

        /* renamed from: r */
        public final int f22292r;

        /* renamed from: s */
        public final int f22293s;

        /* renamed from: t */
        public final boolean f22294t;

        /* renamed from: u */
        public final boolean f22295u;

        /* renamed from: v */
        public final boolean f22296v;

        /* renamed from: w */
        public final boolean f22297w;

        /* renamed from: x */
        public final boolean f22298x;

        /* renamed from: y */
        public final boolean f22299y;

        /* renamed from: z */
        public final boolean f22300z;

        /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$a.class */
        public static final class C7175a implements Parcelable.Creator<Parameters> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters[] newArray(int i) {
                return new Parameters[i];
            }
        }

        static {
            Parameters a = new C7179c().mo18439a();
            f22276D = a;
            f22277E = a;
            f22278F = a;
        }

        public Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, String str, int i7, int i8, boolean z5, boolean z6, boolean z7, boolean z8, String str2, int i9, boolean z9, int i10, boolean z10, boolean z11, boolean z12, int i11, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, i9, z9, i10);
            this.f22282h = i;
            this.f22283i = i2;
            this.f22284j = i3;
            this.f22285k = i4;
            this.f22286l = z;
            this.f22287m = z2;
            this.f22288n = z3;
            this.f22289o = i5;
            this.f22290p = i6;
            this.f22291q = z4;
            this.f22292r = i7;
            this.f22293s = i8;
            this.f22294t = z5;
            this.f22295u = z6;
            this.f22296v = z7;
            this.f22297w = z8;
            this.f22298x = z10;
            this.f22299y = z11;
            this.f22300z = z12;
            this.f22279A = i11;
            this.f22280B = sparseArray;
            this.f22281C = sparseBooleanArray;
        }

        public Parameters(Parcel parcel) {
            super(parcel);
            this.f22282h = parcel.readInt();
            this.f22283i = parcel.readInt();
            this.f22284j = parcel.readInt();
            this.f22285k = parcel.readInt();
            this.f22286l = C2885h0.m28675a(parcel);
            this.f22287m = C2885h0.m28675a(parcel);
            this.f22288n = C2885h0.m28675a(parcel);
            this.f22289o = parcel.readInt();
            this.f22290p = parcel.readInt();
            this.f22291q = C2885h0.m28675a(parcel);
            this.f22292r = parcel.readInt();
            this.f22293s = parcel.readInt();
            this.f22294t = C2885h0.m28675a(parcel);
            this.f22295u = C2885h0.m28675a(parcel);
            this.f22296v = C2885h0.m28675a(parcel);
            this.f22297w = C2885h0.m28675a(parcel);
            this.f22298x = C2885h0.m28675a(parcel);
            this.f22299y = C2885h0.m28675a(parcel);
            this.f22300z = C2885h0.m28675a(parcel);
            this.f22279A = parcel.readInt();
            this.f22280B = m18449a(parcel);
            SparseBooleanArray readSparseBooleanArray = parcel.readSparseBooleanArray();
            C2885h0.m28670a(readSparseBooleanArray);
            this.f22281C = readSparseBooleanArray;
        }

        /* renamed from: a */
        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> m18449a(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    Parcelable readParcelable = parcel.readParcelable(TrackGroupArray.class.getClassLoader());
                    C2877e.m28737a(readParcelable);
                    hashMap.put((TrackGroupArray) readParcelable, (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            return sparseArray;
        }

        /* renamed from: a */
        public static void m18448a(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
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

        /* renamed from: a */
        public static boolean m18447a(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (indexOfKey < 0 || !m18445a(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: a */
        public static boolean m18446a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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

        /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m18445a(java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
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
                r4 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                com.google.android.exoplayer2.source.TrackGroupArray r0 = (com.google.android.exoplayer2.source.TrackGroupArray) r0
                r8 = r0
                r0 = r5
                r1 = r8
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L_0x005c
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                r1 = r5
                r2 = r8
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28669a(r0, r1)
                if (r0 != 0) goto L_0x001f
            L_0x005c:
                r0 = 0
                return r0
            L_0x005e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.m18445a(java.util.Map, java.util.Map):boolean");
        }

        /* renamed from: a */
        public final SelectionOverride m18450a(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f22280B.get(i);
            return map != null ? map.get(trackGroupArray) : null;
        }

        /* renamed from: a */
        public final boolean m18451a(int i) {
            return this.f22281C.get(i);
        }

        /* renamed from: b */
        public final boolean m18444b(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f22280B.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public int describeContents() {
            return 0;
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
            if (!(super.equals(obj) && this.f22282h == parameters.f22282h && this.f22283i == parameters.f22283i && this.f22284j == parameters.f22284j && this.f22285k == parameters.f22285k && this.f22286l == parameters.f22286l && this.f22287m == parameters.f22287m && this.f22288n == parameters.f22288n && this.f22291q == parameters.f22291q && this.f22289o == parameters.f22289o && this.f22290p == parameters.f22290p && this.f22292r == parameters.f22292r && this.f22293s == parameters.f22293s && this.f22294t == parameters.f22294t && this.f22295u == parameters.f22295u && this.f22296v == parameters.f22296v && this.f22297w == parameters.f22297w && this.f22298x == parameters.f22298x && this.f22299y == parameters.f22299y && this.f22300z == parameters.f22300z && this.f22279A == parameters.f22279A && m18446a(this.f22281C, parameters.f22281C) && m18447a(this.f22280B, parameters.f22280B))) {
                z = false;
            }
            return z;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f22282h) * 31) + this.f22283i) * 31) + this.f22284j) * 31) + this.f22285k) * 31) + (this.f22286l ? 1 : 0)) * 31) + (this.f22287m ? 1 : 0)) * 31) + (this.f22288n ? 1 : 0)) * 31) + (this.f22291q ? 1 : 0)) * 31) + this.f22289o) * 31) + this.f22290p) * 31) + this.f22292r) * 31) + this.f22293s) * 31) + (this.f22294t ? 1 : 0)) * 31) + (this.f22295u ? 1 : 0)) * 31) + (this.f22296v ? 1 : 0)) * 31) + (this.f22297w ? 1 : 0)) * 31) + (this.f22298x ? 1 : 0)) * 31) + (this.f22299y ? 1 : 0)) * 31) + (this.f22300z ? 1 : 0)) * 31) + this.f22279A;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f22282h);
            parcel.writeInt(this.f22283i);
            parcel.writeInt(this.f22284j);
            parcel.writeInt(this.f22285k);
            C2885h0.m28674a(parcel, this.f22286l);
            C2885h0.m28674a(parcel, this.f22287m);
            C2885h0.m28674a(parcel, this.f22288n);
            parcel.writeInt(this.f22289o);
            parcel.writeInt(this.f22290p);
            C2885h0.m28674a(parcel, this.f22291q);
            parcel.writeInt(this.f22292r);
            parcel.writeInt(this.f22293s);
            C2885h0.m28674a(parcel, this.f22294t);
            C2885h0.m28674a(parcel, this.f22295u);
            C2885h0.m28674a(parcel, this.f22296v);
            C2885h0.m28674a(parcel, this.f22297w);
            C2885h0.m28674a(parcel, this.f22298x);
            C2885h0.m28674a(parcel, this.f22299y);
            C2885h0.m28674a(parcel, this.f22300z);
            parcel.writeInt(this.f22279A);
            m18448a(parcel, this.f22280B);
            parcel.writeSparseBooleanArray(this.f22281C);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new C7176a();

        /* renamed from: a */
        public final int f22301a;

        /* renamed from: b */
        public final int[] f22302b;

        /* renamed from: c */
        public final int f22303c;

        /* renamed from: d */
        public final int f22304d;

        /* renamed from: e */
        public final int f22305e;

        /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$a.class */
        public static final class C7176a implements Parcelable.Creator<SelectionOverride> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride[] newArray(int i) {
                return new SelectionOverride[i];
            }
        }

        public SelectionOverride(int i, int... iArr) {
            this(i, iArr, 2, 0);
        }

        public SelectionOverride(int i, int[] iArr, int i2, int i3) {
            this.f22301a = i;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f22302b = copyOf;
            this.f22303c = iArr.length;
            this.f22304d = i2;
            this.f22305e = i3;
            Arrays.sort(copyOf);
        }

        public SelectionOverride(Parcel parcel) {
            this.f22301a = parcel.readInt();
            int readByte = parcel.readByte();
            this.f22303c = readByte;
            int[] iArr = new int[readByte];
            this.f22302b = iArr;
            parcel.readIntArray(iArr);
            this.f22304d = parcel.readInt();
            this.f22305e = parcel.readInt();
        }

        /* renamed from: a */
        public boolean m18443a(int i) {
            for (int i2 : this.f22302b) {
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
            if (!(this.f22301a == selectionOverride.f22301a && Arrays.equals(this.f22302b, selectionOverride.f22302b) && this.f22304d == selectionOverride.f22304d && this.f22305e == selectionOverride.f22305e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f22301a * 31) + Arrays.hashCode(this.f22302b)) * 31) + this.f22304d) * 31) + this.f22305e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f22301a);
            parcel.writeInt(this.f22302b.length);
            parcel.writeIntArray(this.f22302b);
            parcel.writeInt(this.f22304d);
            parcel.writeInt(this.f22305e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$a.class */
    public static final class C7177a {

        /* renamed from: a */
        public final int f22306a;

        /* renamed from: b */
        public final int f22307b;

        /* renamed from: c */
        public final String f22308c;

        public C7177a(int i, int i2, String str) {
            this.f22306a = i;
            this.f22307b = i2;
            this.f22308c = str;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C7177a.class != obj.getClass()) {
                return false;
            }
            C7177a aVar = (C7177a) obj;
            if (!(this.f22306a == aVar.f22306a && this.f22307b == aVar.f22307b && TextUtils.equals(this.f22308c, aVar.f22308c))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f22306a;
            int i2 = this.f22307b;
            String str = this.f22308c;
            return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$b.class */
    public static final class C7178b implements Comparable<C7178b> {

        /* renamed from: a */
        public final boolean f22309a;

        /* renamed from: b */
        public final String f22310b;

        /* renamed from: c */
        public final Parameters f22311c;

        /* renamed from: d */
        public final boolean f22312d;

        /* renamed from: e */
        public final int f22313e;

        /* renamed from: f */
        public final int f22314f;

        /* renamed from: g */
        public final int f22315g;

        /* renamed from: h */
        public final boolean f22316h;

        /* renamed from: i */
        public final int f22317i;

        /* renamed from: j */
        public final int f22318j;

        /* renamed from: k */
        public final int f22319k;

        /* JADX WARN: Removed duplicated region for block: B:19:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00ca A[EDGE_INSN: B:26:0x00ca->B:23:0x00ca ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7178b(com.google.android.exoplayer2.Format r6, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r7, int r8) {
            /*
                Method dump skipped, instructions count: 215
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C7178b.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public int compareTo(C7178b bVar) {
            int d;
            int c;
            boolean z = this.f22312d;
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            int i4 = 1;
            int i5 = 1;
            if (z != bVar.f22312d) {
                if (!z) {
                    i5 = -1;
                }
                return i5;
            }
            int i6 = this.f22313e;
            int i7 = bVar.f22313e;
            if (i6 != i7) {
                return DefaultTrackSelector.m18452d(i6, i7);
            }
            boolean z2 = this.f22309a;
            if (z2 != bVar.f22309a) {
                if (!z2) {
                    i = -1;
                }
                return i;
            } else if (!this.f22311c.f22298x || (c = DefaultTrackSelector.m18453c(this.f22319k, bVar.f22319k)) == 0) {
                boolean z3 = this.f22316h;
                if (z3 != bVar.f22316h) {
                    if (!z3) {
                        i3 = -1;
                    }
                    return i3;
                }
                int i8 = this.f22314f;
                int i9 = bVar.f22314f;
                if (i8 != i9) {
                    return -DefaultTrackSelector.m18452d(i8, i9);
                }
                int i10 = this.f22315g;
                int i11 = bVar.f22315g;
                if (i10 != i11) {
                    return DefaultTrackSelector.m18452d(i10, i11);
                }
                if (!this.f22309a || !this.f22312d) {
                    i4 = -1;
                }
                int i12 = this.f22317i;
                int i13 = bVar.f22317i;
                if (i12 != i13) {
                    d = DefaultTrackSelector.m18452d(i12, i13);
                } else {
                    int i14 = this.f22318j;
                    int i15 = bVar.f22318j;
                    if (i14 != i15) {
                        d = DefaultTrackSelector.m18452d(i14, i15);
                    } else if (!C2885h0.m28669a((Object) this.f22310b, (Object) bVar.f22310b)) {
                        return 0;
                    } else {
                        d = DefaultTrackSelector.m18452d(this.f22319k, bVar.f22319k);
                    }
                }
                return i4 * d;
            } else {
                if (c > 0) {
                    i2 = -1;
                }
                return i2;
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$c.class */
    public static final class C7179c extends TrackSelectionParameters.C7182b {

        /* renamed from: f */
        public int f22321f;

        /* renamed from: g */
        public int f22322g;

        /* renamed from: h */
        public int f22323h;

        /* renamed from: i */
        public int f22324i;

        /* renamed from: j */
        public boolean f22325j;

        /* renamed from: k */
        public boolean f22326k;

        /* renamed from: l */
        public boolean f22327l;

        /* renamed from: m */
        public int f22328m;

        /* renamed from: n */
        public int f22329n;

        /* renamed from: o */
        public boolean f22330o;

        /* renamed from: p */
        public int f22331p;

        /* renamed from: q */
        public int f22332q;

        /* renamed from: r */
        public boolean f22333r;

        /* renamed from: s */
        public boolean f22334s;

        /* renamed from: t */
        public boolean f22335t;

        /* renamed from: u */
        public boolean f22336u;

        /* renamed from: v */
        public boolean f22337v;

        /* renamed from: w */
        public boolean f22338w;

        /* renamed from: x */
        public boolean f22339x;

        /* renamed from: y */
        public int f22340y;

        /* renamed from: z */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f22341z = new SparseArray<>();

        /* renamed from: A */
        public final SparseBooleanArray f22320A = new SparseBooleanArray();

        @Deprecated
        public C7179c() {
            m18441b();
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.C7182b
        /* renamed from: a */
        public Parameters mo18439a() {
            return new Parameters(this.f22321f, this.f22322g, this.f22323h, this.f22324i, this.f22325j, this.f22326k, this.f22327l, this.f22328m, this.f22329n, this.f22330o, this.f22357a, this.f22331p, this.f22332q, this.f22333r, this.f22334s, this.f22335t, this.f22336u, this.f22358b, this.f22359c, this.f22360d, this.f22361e, this.f22337v, this.f22338w, this.f22339x, this.f22340y, this.f22341z, this.f22320A);
        }

        /* renamed from: b */
        public final void m18441b() {
            this.f22321f = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22322g = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22323h = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22324i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22325j = true;
            this.f22326k = false;
            this.f22327l = true;
            this.f22328m = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22329n = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22330o = true;
            this.f22331p = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22332q = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f22333r = true;
            this.f22334s = false;
            this.f22335t = false;
            this.f22336u = false;
            this.f22337v = false;
            this.f22338w = false;
            this.f22339x = true;
            this.f22340y = 0;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$d.class */
    public static final class C7180d implements Comparable<C7180d> {

        /* renamed from: a */
        public final boolean f22342a;

        /* renamed from: b */
        public final boolean f22343b;

        /* renamed from: c */
        public final boolean f22344c;

        /* renamed from: d */
        public final boolean f22345d;

        /* renamed from: e */
        public final int f22346e;

        /* renamed from: f */
        public final int f22347f;

        /* renamed from: g */
        public final int f22348g;

        /* renamed from: h */
        public final boolean f22349h;

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e6, code lost:
            if (r5.f22348g > 0) goto L_0x00e9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7180d(com.google.android.exoplayer2.Format r6, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r7, int r8, java.lang.String r9) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C7180d.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
        }

        /* renamed from: a */
        public int compareTo(C7180d dVar) {
            boolean z;
            boolean z2 = this.f22343b;
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            int i4 = 1;
            if (z2 != dVar.f22343b) {
                if (!z2) {
                    i4 = -1;
                }
                return i4;
            }
            int i5 = this.f22346e;
            int i6 = dVar.f22346e;
            if (i5 != i6) {
                return DefaultTrackSelector.m18452d(i5, i6);
            }
            int i7 = this.f22347f;
            int i8 = dVar.f22347f;
            if (i7 != i8) {
                return DefaultTrackSelector.m18452d(i7, i8);
            }
            boolean z3 = this.f22344c;
            if (z3 != dVar.f22344c) {
                if (!z3) {
                    i = -1;
                }
                return i;
            }
            boolean z4 = this.f22345d;
            if (z4 != dVar.f22345d) {
                if (!z4) {
                    i2 = -1;
                }
                return i2;
            }
            int i9 = this.f22348g;
            int i10 = dVar.f22348g;
            if (i9 != i10) {
                return DefaultTrackSelector.m18452d(i9, i10);
            }
            if (i7 != 0 || (z = this.f22349h) == dVar.f22349h) {
                return 0;
            }
            if (z) {
                i3 = -1;
            }
            return i3;
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(new C2768a.C2772d());
    }

    @Deprecated
    public DefaultTrackSelector(AbstractC2780f.AbstractC2782b bVar) {
        this(Parameters.f22276D, bVar);
    }

    public DefaultTrackSelector(Parameters parameters, AbstractC2780f.AbstractC2782b bVar) {
        this.f22273b = bVar;
        this.f22274c = new AtomicReference<>(parameters);
    }

    /* renamed from: a */
    public static int m18469a(Format format, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(format.f21940A)) {
            return 4;
        }
        String a = m18459a(str);
        String a2 = m18459a(format.f21940A);
        if (a2 == null || a == null) {
            int i = 0;
            if (z) {
                i = 0;
                if (a2 == null) {
                    i = 1;
                }
            }
            return i;
        } else if (a2.startsWith(a) || a.startsWith(a2)) {
            return 3;
        } else {
            return C2885h0.m28646b(a2, "-")[0].equals(C2885h0.m28646b(a, "-")[0]) ? 2 : 0;
        }
    }

    /* renamed from: a */
    public static int m18465a(TrackGroup trackGroup, int[] iArr, C7177a aVar, int i, boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.f22257a; i3++) {
            i2 = i2;
            if (m18471a(trackGroup.m18482a(i3), iArr[i3], aVar, i, z, z2, z3)) {
                i2++;
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L_0x0033;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point m18458a(boolean r6, int r7, int r8, int r9, int r10) {
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
            int r3 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28686a(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L_0x0054:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r12
            r3 = r10
            int r2 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28686a(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m18458a(boolean, int, int, int, int):android.graphics.Point");
    }

    /* renamed from: a */
    public static AbstractC2780f.C2781a m18463a(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters) {
        int i2 = parameters.f22288n ? 24 : 16;
        boolean z = parameters.f22287m && (i & i2) != 0;
        for (int i3 = 0; i3 < trackGroupArray.f22261a; i3++) {
            TrackGroup a = trackGroupArray.m18479a(i3);
            int[] a2 = m18464a(a, iArr[i3], z, i2, parameters.f22282h, parameters.f22283i, parameters.f22284j, parameters.f22285k, parameters.f22289o, parameters.f22290p, parameters.f22291q);
            if (a2.length > 0) {
                return new AbstractC2780f.C2781a(a, a2);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0140, code lost:
        if (r0 < 0) goto L_0x0143;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p161d.p170b.p188c.p198d1.AbstractC2780f.C2781a m18461a(com.google.android.exoplayer2.source.TrackGroupArray r8, int[][] r9, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r10) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m18461a(com.google.android.exoplayer2.source.TrackGroupArray, int[][], com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters):c.d.b.c.d1.f$a");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (android.text.TextUtils.equals(r3, "und") != false) goto L_0x0012;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m18459a(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0012
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String r1 = "und"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x0014
        L_0x0012:
            r0 = 0
            r4 = r0
        L_0x0014:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m18459a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static List<Integer> m18468a(TrackGroup trackGroup, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.f22257a);
        for (int i3 = 0; i3 < trackGroup.f22257a; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (!(i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE)) {
            int i4 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            for (int i5 = 0; i5 < trackGroup.f22257a; i5++) {
                Format a = trackGroup.m18482a(i5);
                int i6 = a.f21957n;
                i4 = i4;
                if (i6 > 0) {
                    int i7 = a.f21958o;
                    i4 = i4;
                    if (i7 > 0) {
                        Point a2 = m18458a(z, i, i2, i6, i7);
                        int i8 = a.f21957n;
                        int i9 = a.f21958o;
                        int i10 = i8 * i9;
                        i4 = i4;
                        if (i8 >= ((int) (a2.x * 0.98f))) {
                            i4 = i4;
                            if (i9 >= ((int) (a2.y * 0.98f))) {
                                i4 = i4;
                                if (i10 < i4) {
                                    i4 = i10;
                                }
                            }
                        }
                    }
                }
            }
            if (i4 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int a3 = trackGroup.m18482a(((Integer) arrayList.get(size)).intValue()).m18714a();
                    if (a3 == -1 || a3 > i4) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m18472a(AbstractC2777d.C2778a aVar, int[][][] iArr, C2961p0[] p0VarArr, AbstractC2780f[] fVarArr, int i) {
        boolean z;
        if (i != 0) {
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < aVar.m29037a(); i4++) {
                int a = aVar.m29036a(i4);
                AbstractC2780f fVar = fVarArr[i4];
                if (a != 1) {
                    i2 = i2;
                    i3 = i3;
                    if (a != 2) {
                        continue;
                    }
                }
                i2 = i2;
                i3 = i3;
                if (fVar != null) {
                    i2 = i2;
                    i3 = i3;
                    if (!m18457a(iArr[i4], aVar.m29032b(i4), fVar)) {
                        continue;
                    } else if (a == 1) {
                        if (i3 != -1) {
                            z = false;
                            break;
                        } else {
                            i3 = i4;
                            i2 = i2;
                        }
                    } else if (i2 != -1) {
                        z = false;
                        break;
                    } else {
                        i2 = i4;
                        i3 = i3;
                    }
                } else {
                    continue;
                }
            }
            z = true;
            boolean z2 = false;
            if (i3 != -1) {
                z2 = false;
                if (i2 != -1) {
                    z2 = true;
                }
            }
            if (z && z2) {
                C2961p0 p0Var = new C2961p0(i);
                p0VarArr[i3] = p0Var;
                p0VarArr[i2] = p0Var;
            }
        }
    }

    /* renamed from: a */
    public static void m18467a(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!m18470a(trackGroup.m18482a(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                list.remove(size);
            }
        }
    }

    /* renamed from: a */
    public static boolean m18475a(int i, boolean z) {
        int c = C2955n0.m28394c(i);
        return c == 4 || (z && c == 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        if (r0 == r5.f22306a) goto L_0x0041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (android.text.TextUtils.equals(r0, r5.f22308c) != false) goto L_0x0065;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
        if (r0 == r5.f22307b) goto L_0x0084;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
        if (r0 <= r6) goto L_0x0022;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18471a(com.google.android.exoplayer2.Format r3, int r4, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C7177a r5, int r6, boolean r7, boolean r8, boolean r9) {
        /*
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = 0
            boolean r0 = m18475a(r0, r1)
            if (r0 == 0) goto L_0x0087
            r0 = r3
            int r0 = r0.f21948e
            r4 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x0022
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r6
            if (r0 > r1) goto L_0x0087
        L_0x0022:
            r0 = r9
            if (r0 != 0) goto L_0x0041
            r0 = r3
            int r0 = r0.f21965v
            r4 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x0087
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f22306a
            if (r0 != r1) goto L_0x0087
        L_0x0041:
            r0 = r7
            if (r0 != 0) goto L_0x0065
            r0 = r3
            java.lang.String r0 = r0.f21952i
            r12 = r0
            r0 = r10
            r11 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0087
            r0 = r10
            r11 = r0
            r0 = r12
            r1 = r5
            java.lang.String r1 = r1.f22308c
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x0087
        L_0x0065:
            r0 = r8
            if (r0 != 0) goto L_0x0084
            r0 = r3
            int r0 = r0.f21966w
            r4 = r0
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x0087
            r0 = r10
            r11 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f22307b
            if (r0 != r1) goto L_0x0087
        L_0x0084:
            r0 = 1
            r11 = r0
        L_0x0087:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m18471a(com.google.android.exoplayer2.Format, int, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$a, int, boolean, boolean, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 <= r7) goto L_0x0040;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r0 <= r8) goto L_0x0054;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
        if (r0 <= r9) goto L_0x006f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
        if (r0 <= r10) goto L_0x0083;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        if (p131c.p161d.p170b.p188c.p203g1.C2885h0.m28669a((java.lang.Object) r3.f21952i, (java.lang.Object) r4) != false) goto L_0x002c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18470a(com.google.android.exoplayer2.Format r3, java.lang.String r4, int r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = 0
            boolean r0 = m18475a(r0, r1)
            if (r0 == 0) goto L_0x0086
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r6
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0086
            r0 = r4
            if (r0 == 0) goto L_0x002c
            r0 = r11
            r12 = r0
            r0 = r3
            java.lang.String r0 = r0.f21952i
            r1 = r4
            boolean r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28669a(r0, r1)
            if (r0 == 0) goto L_0x0086
        L_0x002c:
            r0 = r3
            int r0 = r0.f21957n
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x0040
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r7
            if (r0 > r1) goto L_0x0086
        L_0x0040:
            r0 = r3
            int r0 = r0.f21958o
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x0054
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r8
            if (r0 > r1) goto L_0x0086
        L_0x0054:
            r0 = r3
            float r0 = r0.f21959p
            r13 = r0
            r0 = r13
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006f
            r0 = r11
            r12 = r0
            r0 = r13
            r1 = r9
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0086
        L_0x006f:
            r0 = r3
            int r0 = r0.f21948e
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x0083
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r10
            if (r0 > r1) goto L_0x0086
        L_0x0083:
            r0 = 1
            r12 = r0
        L_0x0086:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m18470a(com.google.android.exoplayer2.Format, java.lang.String, int, int, int, int, int, int):boolean");
    }

    /* renamed from: a */
    public static boolean m18457a(int[][] iArr, TrackGroupArray trackGroupArray, AbstractC2780f fVar) {
        if (fVar == null) {
            return false;
        }
        int a = trackGroupArray.m18478a(fVar.mo29030a());
        for (int i = 0; i < fVar.length(); i++) {
            if (C2955n0.m28392e(iArr[a][fVar.mo29026b(i)]) != 32) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static int[] m18466a(TrackGroup trackGroup, int[] iArr, int i, boolean z, boolean z2, boolean z3) {
        HashSet hashSet = new HashSet();
        C7177a aVar = null;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.f22257a; i3++) {
            Format a = trackGroup.m18482a(i3);
            C7177a aVar2 = new C7177a(a.f21965v, a.f21966w, a.f21952i);
            i2 = i2;
            aVar = aVar;
            if (hashSet.add(aVar2)) {
                int a2 = m18465a(trackGroup, iArr, aVar2, i, z, z2, z3);
                i2 = i2;
                aVar = aVar;
                if (a2 > i2) {
                    i2 = a2;
                    aVar = aVar2;
                }
            }
        }
        if (i2 <= 1) {
            return f22272e;
        }
        C2877e.m28737a(aVar);
        int[] iArr2 = new int[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < trackGroup.f22257a; i5++) {
            i4 = i4;
            if (m18471a(trackGroup.m18482a(i5), iArr[i5], aVar, i, z, z2, z3)) {
                iArr2[i4] = i5;
                i4++;
            }
        }
        return iArr2;
    }

    /* renamed from: a */
    public static int[] m18464a(TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2) {
        String str;
        if (trackGroup.f22257a < 2) {
            return f22272e;
        }
        List<Integer> a = m18468a(trackGroup, i6, i7, z2);
        if (a.size() < 2) {
            return f22272e;
        }
        if (!z) {
            HashSet hashSet = new HashSet();
            str = null;
            int i8 = 0;
            for (int i9 = 0; i9 < a.size(); i9++) {
                String str2 = trackGroup.m18482a(a.get(i9).intValue()).f21952i;
                str = str;
                i8 = i8;
                if (hashSet.add(str2)) {
                    int b = m18455b(trackGroup, iArr, i, str2, i2, i3, i4, i5, a);
                    str = str;
                    i8 = i8;
                    if (b > i8) {
                        i8 = b;
                        str = str2;
                    }
                }
            }
        } else {
            str = null;
        }
        m18467a(trackGroup, iArr, i, str, i2, i3, i4, i5, a);
        return a.size() < 2 ? f22272e : C2885h0.m28662a(a);
    }

    /* renamed from: b */
    public static int m18455b(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            int intValue = list.get(i7).intValue();
            i6 = i6;
            if (m18470a(trackGroup.m18482a(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                i6++;
            }
        }
        return i6;
    }

    /* renamed from: c */
    public static int m18453c(int i, int i2) {
        int i3 = -1;
        if (i != -1) {
            i3 = i2 == -1 ? 1 : i - i2;
        } else if (i2 == -1) {
            i3 = 0;
        }
        return i3;
    }

    /* renamed from: d */
    public static int m18452d(int i, int i2) {
        return i > i2 ? 1 : i2 > i ? -1 : 0;
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2777d
    /* renamed from: a */
    public final Pair<C2961p0[], AbstractC2780f[]> mo18474a(AbstractC2777d.C2778a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException {
        Parameters parameters = this.f22274c.get();
        int a = aVar.m29037a();
        AbstractC2780f.C2781a[] a2 = m18473a(aVar, iArr, iArr2, parameters);
        int i = 0;
        while (true) {
            AbstractC2780f.C2781a aVar2 = null;
            if (i >= a) {
                break;
            }
            if (parameters.m18451a(i)) {
                a2[i] = null;
            } else {
                TrackGroupArray b = aVar.m29032b(i);
                if (parameters.m18444b(i, b)) {
                    SelectionOverride a3 = parameters.m18450a(i, b);
                    if (a3 != null) {
                        aVar2 = new AbstractC2780f.C2781a(b.m18479a(a3.f22301a), a3.f22302b, a3.f22304d, Integer.valueOf(a3.f22305e));
                    }
                    a2[i] = aVar2;
                }
            }
            i++;
        }
        AbstractC2780f[] a4 = this.f22273b.mo29021a(a2, m29018a());
        C2961p0[] p0VarArr = new C2961p0[a];
        for (int i2 = 0; i2 < a; i2++) {
            p0VarArr[i2] = !parameters.m18451a(i2) && (aVar.m29036a(i2) == 6 || a4[i2] != null) ? C2961p0.f10657b : null;
        }
        m18472a(aVar, iArr, p0VarArr, a4, parameters.f22279A);
        return Pair.create(p0VarArr, a4);
    }

    /* renamed from: a */
    public Pair<AbstractC2780f.C2781a, C7178b> m18462a(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) throws ExoPlaybackException {
        C7178b bVar = null;
        int i2 = 0;
        int i3 = -1;
        int i4 = -1;
        while (i2 < trackGroupArray.f22261a) {
            TrackGroup a = trackGroupArray.m18479a(i2);
            int[] iArr2 = iArr[i2];
            for (int i5 = 0; i5 < a.f22257a; i5++) {
                i3 = i3;
                i4 = i4;
                bVar = bVar;
                if (m18475a(iArr2[i5], parameters.f22300z)) {
                    C7178b bVar2 = new C7178b(a.m18482a(i5), parameters, iArr2[i5]);
                    if (bVar2.f22309a || parameters.f22294t) {
                        if (bVar != null) {
                            i3 = i3;
                            i4 = i4;
                            bVar = bVar;
                            if (bVar2.compareTo(bVar) <= 0) {
                            }
                        }
                        i3 = i2;
                        i4 = i5;
                        bVar = bVar2;
                    } else {
                        i3 = i3;
                        i4 = i4;
                        bVar = bVar;
                    }
                }
            }
            i2++;
            bVar = bVar;
        }
        if (i3 == -1) {
            return null;
        }
        TrackGroup a2 = trackGroupArray.m18479a(i3);
        AbstractC2780f.C2781a aVar = null;
        if (!parameters.f22299y) {
            aVar = null;
            if (!parameters.f22298x) {
                aVar = null;
                if (z) {
                    int[] a3 = m18466a(a2, iArr[i3], parameters.f22293s, parameters.f22295u, parameters.f22296v, parameters.f22297w);
                    aVar = null;
                    if (a3.length > 0) {
                        aVar = new AbstractC2780f.C2781a(a2, a3);
                    }
                }
            }
        }
        AbstractC2780f.C2781a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new AbstractC2780f.C2781a(a2, i4);
        }
        C2877e.m28737a(bVar);
        return Pair.create(aVar2, bVar);
    }

    /* renamed from: a */
    public Pair<AbstractC2780f.C2781a, C7180d> m18460a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) throws ExoPlaybackException {
        Pair<AbstractC2780f.C2781a, C7180d> pair = null;
        int i = -1;
        TrackGroup trackGroup = null;
        C7180d dVar = null;
        for (int i2 = 0; i2 < trackGroupArray.f22261a; i2++) {
            TrackGroup a = trackGroupArray.m18479a(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < a.f22257a; i3++) {
                if (m18475a(iArr2[i3], parameters.f22300z)) {
                    C7180d dVar2 = new C7180d(a.m18482a(i3), parameters, iArr2[i3], str);
                    i = i;
                    trackGroup = trackGroup;
                    dVar = dVar;
                    if (dVar2.f22342a) {
                        if (dVar != null) {
                            i = i;
                            trackGroup = trackGroup;
                            dVar = dVar;
                            if (dVar2.compareTo(dVar) <= 0) {
                            }
                        }
                        trackGroup = a;
                        i = i3;
                        dVar = dVar2;
                    }
                } else {
                    dVar = dVar;
                    trackGroup = trackGroup;
                    i = i;
                }
            }
        }
        if (trackGroup != null) {
            AbstractC2780f.C2781a aVar = new AbstractC2780f.C2781a(trackGroup, i);
            C2877e.m28737a(dVar);
            pair = Pair.create(aVar, dVar);
        }
        return pair;
    }

    /* renamed from: a */
    public AbstractC2780f.C2781a m18476a(int i, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        AbstractC2780f.C2781a aVar = null;
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroupArray.f22261a; i4++) {
            TrackGroup a = trackGroupArray.m18479a(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < a.f22257a; i5++) {
                trackGroup = trackGroup;
                i2 = i2;
                i3 = i3;
                if (m18475a(iArr2[i5], parameters.f22300z)) {
                    int i6 = (a.m18482a(i5).f21946c & 1) != 0 ? 2 : 1;
                    int i7 = i6;
                    if (m18475a(iArr2[i5], false)) {
                        i7 = i6 + 1000;
                    }
                    trackGroup = trackGroup;
                    i2 = i2;
                    i3 = i3;
                    if (i7 > i3) {
                        trackGroup = a;
                        i2 = i5;
                        i3 = i7;
                    }
                }
            }
        }
        if (trackGroup != null) {
            aVar = new AbstractC2780f.C2781a(trackGroup, i2);
        }
        return aVar;
    }

    /* renamed from: a */
    public AbstractC2780f.C2781a[] m18473a(AbstractC2777d.C2778a aVar, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        int a = aVar.m29037a();
        AbstractC2780f.C2781a[] aVarArr = new AbstractC2780f.C2781a[a];
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            if (i >= a) {
                break;
            }
            z = z;
            z2 = z2;
            if (2 == aVar.m29036a(i)) {
                z = z;
                if (!z) {
                    aVarArr[i] = m18454b(aVar.m29032b(i), iArr[i], iArr2[i], parameters, true);
                    z = aVarArr[i] != null;
                }
                if (aVar.m29032b(i).f22261a <= 0) {
                    z3 = false;
                }
                z2 |= z3;
            }
            i++;
        }
        C7178b bVar = null;
        String str = null;
        int i2 = -1;
        for (int i3 = 0; i3 < a; i3++) {
            if (1 == aVar.m29036a(i3)) {
                Pair<AbstractC2780f.C2781a, C7178b> a2 = m18462a(aVar.m29032b(i3), iArr[i3], iArr2[i3], parameters, this.f22275d || !z2);
                if (a2 != null && (bVar == null || ((C7178b) a2.second).compareTo(bVar) > 0)) {
                    if (i2 != -1) {
                        aVarArr[i2] = null;
                    }
                    AbstractC2780f.C2781a aVar2 = (AbstractC2780f.C2781a) a2.first;
                    aVarArr[i3] = aVar2;
                    str = aVar2.f10129a.m18482a(aVar2.f10130b[0]).f21940A;
                    bVar = (C7178b) a2.second;
                    i2 = i3;
                }
            }
        }
        C7180d dVar = null;
        int i4 = -1;
        for (int i5 = 0; i5 < a; i5++) {
            int a3 = aVar.m29036a(i5);
            if (a3 != 1) {
                if (a3 != 2) {
                    if (a3 != 3) {
                        aVarArr[i5] = m18476a(a3, aVar.m29032b(i5), iArr[i5], parameters);
                    } else {
                        Pair<AbstractC2780f.C2781a, C7180d> a4 = m18460a(aVar.m29032b(i5), iArr[i5], parameters, str);
                        dVar = dVar;
                        i4 = i4;
                        if (a4 != null) {
                            if (dVar != null) {
                                dVar = dVar;
                                i4 = i4;
                                if (((C7180d) a4.second).compareTo(dVar) <= 0) {
                                }
                            }
                            if (i4 != -1) {
                                aVarArr[i4] = null;
                            }
                            aVarArr[i5] = (AbstractC2780f.C2781a) a4.first;
                            dVar = (C7180d) a4.second;
                            i4 = i5;
                        }
                    }
                }
                dVar = dVar;
                i4 = i4;
            } else {
                i4 = i4;
                dVar = dVar;
            }
        }
        return aVarArr;
    }

    /* renamed from: b */
    public AbstractC2780f.C2781a m18454b(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) throws ExoPlaybackException {
        AbstractC2780f.C2781a a = (parameters.f22299y || parameters.f22298x || !z) ? null : m18463a(trackGroupArray, iArr, i, parameters);
        AbstractC2780f.C2781a aVar = a;
        if (a == null) {
            aVar = m18461a(trackGroupArray, iArr, parameters);
        }
        return aVar;
    }
}
