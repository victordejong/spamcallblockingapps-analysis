package androidx.media2.exoplayer.external.trackselection;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p012b.p076s.p078b.p079a.C1240j0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1662d;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p110y0.C1653a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector.class */
public class DefaultTrackSelector extends AbstractC1662d {

    /* renamed from: g */
    public static final int[] f1893g = new int[0];

    /* renamed from: d */
    public final AbstractC1668i.AbstractC1670b f1894d;

    /* renamed from: e */
    public final AtomicReference<Parameters> f1895e;

    /* renamed from: f */
    public boolean f1896f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {

        /* renamed from: A */
        public static final Parameters f1897A = new Parameters();
        public static final Parcelable.Creator<Parameters> CREATOR = new C0336a();

        /* renamed from: f */
        public final int f1898f;

        /* renamed from: g */
        public final int f1899g;

        /* renamed from: h */
        public final int f1900h;

        /* renamed from: i */
        public final int f1901i;

        /* renamed from: j */
        public final boolean f1902j;

        /* renamed from: k */
        public final boolean f1903k;

        /* renamed from: l */
        public final boolean f1904l;

        /* renamed from: m */
        public final int f1905m;

        /* renamed from: n */
        public final int f1906n;

        /* renamed from: o */
        public final boolean f1907o;

        /* renamed from: p */
        public final int f1908p;

        /* renamed from: q */
        public final int f1909q;

        /* renamed from: r */
        public final boolean f1910r;

        /* renamed from: s */
        public final boolean f1911s;

        /* renamed from: t */
        public final boolean f1912t;

        /* renamed from: u */
        public final boolean f1913u;

        /* renamed from: v */
        public final boolean f1914v;

        /* renamed from: w */
        public final boolean f1915w;

        /* renamed from: x */
        public final int f1916x;

        /* renamed from: y */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f1917y;

        /* renamed from: z */
        public final SparseBooleanArray f1918z;

        /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters$a.class */
        public class C0336a implements Parcelable.Creator<Parameters> {
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

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Parameters() {
            /*
                r28 = this;
                androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters r0 = androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.f1958e
                r29 = r0
                r0 = r28
                r1 = 2147483647(0x7fffffff, float:NaN)
                r2 = 2147483647(0x7fffffff, float:NaN)
                r3 = 2147483647(0x7fffffff, float:NaN)
                r4 = 2147483647(0x7fffffff, float:NaN)
                r5 = 1
                r6 = 0
                r7 = 1
                r8 = 2147483647(0x7fffffff, float:NaN)
                r9 = 2147483647(0x7fffffff, float:NaN)
                r10 = 1
                r11 = r29
                java.lang.String r11 = r11.f1959a
                r12 = 2147483647(0x7fffffff, float:NaN)
                r13 = 2147483647(0x7fffffff, float:NaN)
                r14 = 1
                r15 = 0
                r16 = 0
                r17 = r29
                java.lang.String r17 = r17.f1960b
                r18 = r29
                boolean r18 = r18.f1961c
                r19 = r29
                int r19 = r19.f1962d
                r20 = 0
                r21 = 0
                r22 = 1
                r23 = 0
                android.util.SparseArray r24 = new android.util.SparseArray
                r25 = r24
                r25.<init>()
                android.util.SparseBooleanArray r25 = new android.util.SparseBooleanArray
                r26 = r25
                r26.<init>()
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.<init>():void");
        }

        public Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, String str, int i7, int i8, boolean z5, boolean z6, boolean z7, String str2, boolean z8, int i9, boolean z9, boolean z10, boolean z11, int i10, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, z8, i9);
            this.f1898f = i;
            this.f1899g = i2;
            this.f1900h = i3;
            this.f1901i = i4;
            this.f1902j = z;
            this.f1903k = z2;
            this.f1904l = z3;
            this.f1905m = i5;
            this.f1906n = i6;
            this.f1907o = z4;
            this.f1908p = i7;
            this.f1909q = i8;
            this.f1910r = z5;
            this.f1911s = z6;
            this.f1912t = z7;
            this.f1913u = z9;
            this.f1914v = z10;
            this.f1915w = z11;
            this.f1916x = i10;
            this.f1917y = sparseArray;
            this.f1918z = sparseBooleanArray;
        }

        public Parameters(Parcel parcel) {
            super(parcel);
            this.f1898f = parcel.readInt();
            this.f1899g = parcel.readInt();
            this.f1900h = parcel.readInt();
            this.f1901i = parcel.readInt();
            this.f1902j = C1167d0.m34483a(parcel);
            this.f1903k = C1167d0.m34483a(parcel);
            this.f1904l = C1167d0.m34483a(parcel);
            this.f1905m = parcel.readInt();
            this.f1906n = parcel.readInt();
            this.f1907o = C1167d0.m34483a(parcel);
            this.f1908p = parcel.readInt();
            this.f1909q = parcel.readInt();
            this.f1910r = C1167d0.m34483a(parcel);
            this.f1911s = C1167d0.m34483a(parcel);
            this.f1912t = C1167d0.m34483a(parcel);
            this.f1913u = C1167d0.m34483a(parcel);
            this.f1914v = C1167d0.m34483a(parcel);
            this.f1915w = C1167d0.m34483a(parcel);
            this.f1916x = parcel.readInt();
            this.f1917y = m37937a(parcel);
            SparseBooleanArray readSparseBooleanArray = parcel.readSparseBooleanArray();
            C1167d0.m34479a(readSparseBooleanArray);
            this.f1918z = readSparseBooleanArray;
        }

        /* renamed from: a */
        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> m37937a(Parcel parcel) {
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

        /* renamed from: a */
        public static void m37936a(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
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
        public static boolean m37935a(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (indexOfKey < 0 || !m37932a(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: a */
        public static boolean m37934a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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
        public static boolean m37932a(java.util.Map<androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
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
                androidx.media2.exoplayer.external.source.TrackGroupArray r0 = (androidx.media2.exoplayer.external.source.TrackGroupArray) r0
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
                boolean r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34478a(r0, r1)
                if (r0 != 0) goto L_0x001f
            L_0x005c:
                r0 = 0
                return r0
            L_0x005e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.m37932a(java.util.Map, java.util.Map):boolean");
        }

        /* renamed from: a */
        public final SelectionOverride m37938a(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f1917y.get(i);
            return map != null ? map.get(trackGroupArray) : null;
        }

        /* renamed from: a */
        public C0341d m37940a() {
            return new C0341d(this);
        }

        /* renamed from: a */
        public final boolean m37939a(int i) {
            return this.f1918z.get(i);
        }

        /* renamed from: b */
        public final boolean m37931b(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f1917y.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            if (!(super.equals(obj) && this.f1898f == parameters.f1898f && this.f1899g == parameters.f1899g && this.f1900h == parameters.f1900h && this.f1901i == parameters.f1901i && this.f1902j == parameters.f1902j && this.f1903k == parameters.f1903k && this.f1904l == parameters.f1904l && this.f1907o == parameters.f1907o && this.f1905m == parameters.f1905m && this.f1906n == parameters.f1906n && this.f1908p == parameters.f1908p && this.f1909q == parameters.f1909q && this.f1910r == parameters.f1910r && this.f1911s == parameters.f1911s && this.f1912t == parameters.f1912t && this.f1913u == parameters.f1913u && this.f1914v == parameters.f1914v && this.f1915w == parameters.f1915w && this.f1916x == parameters.f1916x && m37934a(this.f1918z, parameters.f1918z) && m37935a(this.f1917y, parameters.f1917y))) {
                z = false;
            }
            return z;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f1898f) * 31) + this.f1899g) * 31) + this.f1900h) * 31) + this.f1901i) * 31) + (this.f1902j ? 1 : 0)) * 31) + (this.f1903k ? 1 : 0)) * 31) + (this.f1904l ? 1 : 0)) * 31) + (this.f1907o ? 1 : 0)) * 31) + this.f1905m) * 31) + this.f1906n) * 31) + this.f1908p) * 31) + this.f1909q) * 31) + (this.f1910r ? 1 : 0)) * 31) + (this.f1911s ? 1 : 0)) * 31) + (this.f1912t ? 1 : 0)) * 31) + (this.f1913u ? 1 : 0)) * 31) + (this.f1914v ? 1 : 0)) * 31) + (this.f1915w ? 1 : 0)) * 31) + this.f1916x;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1898f);
            parcel.writeInt(this.f1899g);
            parcel.writeInt(this.f1900h);
            parcel.writeInt(this.f1901i);
            C1167d0.m34482a(parcel, this.f1902j);
            C1167d0.m34482a(parcel, this.f1903k);
            C1167d0.m34482a(parcel, this.f1904l);
            parcel.writeInt(this.f1905m);
            parcel.writeInt(this.f1906n);
            C1167d0.m34482a(parcel, this.f1907o);
            parcel.writeInt(this.f1908p);
            parcel.writeInt(this.f1909q);
            C1167d0.m34482a(parcel, this.f1910r);
            C1167d0.m34482a(parcel, this.f1911s);
            C1167d0.m34482a(parcel, this.f1912t);
            C1167d0.m34482a(parcel, this.f1913u);
            C1167d0.m34482a(parcel, this.f1914v);
            C1167d0.m34482a(parcel, this.f1915w);
            parcel.writeInt(this.f1916x);
            m37936a(parcel, this.f1917y);
            parcel.writeSparseBooleanArray(this.f1918z);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new C0337a();

        /* renamed from: a */
        public final int f1919a;

        /* renamed from: b */
        public final int[] f1920b;

        /* renamed from: c */
        public final int f1921c;

        /* renamed from: d */
        public final int f1922d;

        /* renamed from: e */
        public final int f1923e;

        /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$SelectionOverride$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride$a.class */
        public class C0337a implements Parcelable.Creator<SelectionOverride> {
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
            this.f1919a = i;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f1920b = copyOf;
            this.f1921c = iArr.length;
            this.f1922d = i2;
            this.f1923e = i3;
            Arrays.sort(copyOf);
        }

        public SelectionOverride(Parcel parcel) {
            this.f1919a = parcel.readInt();
            int readByte = parcel.readByte();
            this.f1921c = readByte;
            int[] iArr = new int[readByte];
            this.f1920b = iArr;
            parcel.readIntArray(iArr);
            this.f1922d = parcel.readInt();
            this.f1923e = parcel.readInt();
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
            if (!(this.f1919a == selectionOverride.f1919a && Arrays.equals(this.f1920b, selectionOverride.f1920b) && this.f1922d == selectionOverride.f1922d && this.f1923e == selectionOverride.f1923e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f1919a * 31) + Arrays.hashCode(this.f1920b)) * 31) + this.f1922d) * 31) + this.f1923e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1919a);
            parcel.writeInt(this.f1920b.length);
            parcel.writeIntArray(this.f1920b);
            parcel.writeInt(this.f1922d);
            parcel.writeInt(this.f1923e);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b.class */
    public static final class C0339b {

        /* renamed from: a */
        public final int f1924a;

        /* renamed from: b */
        public final int f1925b;

        /* renamed from: c */
        public final String f1926c;

        public C0339b(int i, int i2, String str) {
            this.f1924a = i;
            this.f1925b = i2;
            this.f1926c = str;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0339b.class != obj.getClass()) {
                return false;
            }
            C0339b bVar = (C0339b) obj;
            if (!(this.f1924a == bVar.f1924a && this.f1925b == bVar.f1925b && TextUtils.equals(this.f1926c, bVar.f1926c))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f1924a;
            int i2 = this.f1925b;
            String str = this.f1926c;
            return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c.class */
    public static final class C0340c implements Comparable<C0340c> {

        /* renamed from: a */
        public final boolean f1927a;

        /* renamed from: b */
        public final Parameters f1928b;

        /* renamed from: c */
        public final boolean f1929c;

        /* renamed from: d */
        public final int f1930d;

        /* renamed from: e */
        public final int f1931e;

        /* renamed from: f */
        public final int f1932f;

        /* renamed from: g */
        public final boolean f1933g;

        /* renamed from: h */
        public final int f1934h;

        /* renamed from: i */
        public final int f1935i;

        /* renamed from: j */
        public final int f1936j;

        /* JADX WARN: Removed duplicated region for block: B:19:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00bd A[EDGE_INSN: B:25:0x00bd->B:23:0x00bd ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0340c(androidx.media2.exoplayer.external.Format r5, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r6, int r7) {
            /*
                Method dump skipped, instructions count: 202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.C0340c.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public int compareTo(C0340c cVar) {
            int d;
            int c;
            boolean z = this.f1929c;
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            int i4 = 1;
            int i5 = 1;
            if (z != cVar.f1929c) {
                if (!z) {
                    i5 = -1;
                }
                return i5;
            }
            int i6 = this.f1930d;
            int i7 = cVar.f1930d;
            if (i6 != i7) {
                return DefaultTrackSelector.m37942d(i6, i7);
            }
            boolean z2 = this.f1927a;
            if (z2 != cVar.f1927a) {
                if (!z2) {
                    i = -1;
                }
                return i;
            } else if (!this.f1928b.f1913u || (c = DefaultTrackSelector.m37944c(this.f1936j, cVar.f1936j)) == 0) {
                boolean z3 = this.f1933g;
                if (z3 != cVar.f1933g) {
                    if (!z3) {
                        i3 = -1;
                    }
                    return i3;
                }
                int i8 = this.f1931e;
                int i9 = cVar.f1931e;
                if (i8 != i9) {
                    return -DefaultTrackSelector.m37942d(i8, i9);
                }
                int i10 = this.f1932f;
                int i11 = cVar.f1932f;
                if (i10 != i11) {
                    return DefaultTrackSelector.m37942d(i10, i11);
                }
                if (!this.f1927a || !this.f1929c) {
                    i4 = -1;
                }
                int i12 = this.f1934h;
                int i13 = cVar.f1934h;
                if (i12 != i13) {
                    d = DefaultTrackSelector.m37942d(i12, i13);
                } else {
                    int i14 = this.f1935i;
                    int i15 = cVar.f1935i;
                    d = i14 != i15 ? DefaultTrackSelector.m37942d(i14, i15) : DefaultTrackSelector.m37942d(this.f1936j, cVar.f1936j);
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

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d.class */
    public static final class C0341d extends TrackSelectionParameters.C0343b {

        /* renamed from: e */
        public int f1937e;

        /* renamed from: f */
        public int f1938f;

        /* renamed from: g */
        public int f1939g;

        /* renamed from: h */
        public int f1940h;

        /* renamed from: i */
        public boolean f1941i;

        /* renamed from: j */
        public boolean f1942j;

        /* renamed from: k */
        public boolean f1943k;

        /* renamed from: l */
        public int f1944l;

        /* renamed from: m */
        public int f1945m;

        /* renamed from: n */
        public boolean f1946n;

        /* renamed from: o */
        public int f1947o;

        /* renamed from: p */
        public int f1948p;

        /* renamed from: q */
        public boolean f1949q;

        /* renamed from: r */
        public boolean f1950r;

        /* renamed from: s */
        public boolean f1951s;

        /* renamed from: t */
        public boolean f1952t;

        /* renamed from: u */
        public boolean f1953u;

        /* renamed from: v */
        public boolean f1954v;

        /* renamed from: w */
        public int f1955w;

        /* renamed from: x */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f1956x;

        /* renamed from: y */
        public final SparseBooleanArray f1957y;

        public C0341d() {
            this(Parameters.f1897A);
        }

        public C0341d(Parameters parameters) {
            super(parameters);
            this.f1937e = parameters.f1898f;
            this.f1938f = parameters.f1899g;
            this.f1939g = parameters.f1900h;
            this.f1940h = parameters.f1901i;
            this.f1941i = parameters.f1902j;
            this.f1942j = parameters.f1903k;
            this.f1943k = parameters.f1904l;
            this.f1944l = parameters.f1905m;
            this.f1945m = parameters.f1906n;
            this.f1946n = parameters.f1907o;
            this.f1947o = parameters.f1908p;
            this.f1948p = parameters.f1909q;
            this.f1949q = parameters.f1910r;
            this.f1950r = parameters.f1911s;
            this.f1951s = parameters.f1912t;
            this.f1952t = parameters.f1913u;
            this.f1953u = parameters.f1914v;
            this.f1954v = parameters.f1915w;
            this.f1955w = parameters.f1916x;
            this.f1956x = m37925a(parameters.f1917y);
            this.f1957y = parameters.f1918z.clone();
        }

        /* renamed from: a */
        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> m37925a(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
            }
            return sparseArray2;
        }

        /* renamed from: a */
        public Parameters m37928a() {
            return new Parameters(this.f1937e, this.f1938f, this.f1939g, this.f1940h, this.f1941i, this.f1942j, this.f1943k, this.f1944l, this.f1945m, this.f1946n, this.f1963a, this.f1947o, this.f1948p, this.f1949q, this.f1950r, this.f1951s, this.f1964b, this.f1965c, this.f1966d, this.f1952t, this.f1953u, this.f1954v, this.f1955w, this.f1956x, this.f1957y);
        }

        /* renamed from: a */
        public final C0341d m37927a(int i, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.f1956x.get(i);
            Map<TrackGroupArray, SelectionOverride> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.f1956x.put(i, map2);
            }
            if (map2.containsKey(trackGroupArray) && C1167d0.m34478a(map2.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map2.put(trackGroupArray, selectionOverride);
            return this;
        }

        /* renamed from: a */
        public final C0341d m37926a(int i, boolean z) {
            if (this.f1957y.get(i) == z) {
                return this;
            }
            if (z) {
                this.f1957y.put(i, true);
            } else {
                this.f1957y.delete(i);
            }
            return this;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.C0343b
        /* renamed from: a */
        public C0341d mo37923a(boolean z) {
            super.mo37923a(z);
            return this;
        }

        /* renamed from: b */
        public final C0341d m37924b() {
            if (this.f1956x.size() == 0) {
                return this;
            }
            this.f1956x.clear();
            return this;
        }
    }

    public DefaultTrackSelector() {
        this(new C1653a.C1657d());
    }

    public DefaultTrackSelector(AbstractC1668i.AbstractC1670b bVar) {
        this.f1894d = bVar;
        this.f1895e = new AtomicReference<>(Parameters.f1897A);
    }

    /* renamed from: a */
    public static int m37965a(Format format, String str) {
        String str2 = format.f1551A;
        if (str2 == null || str == null) {
            return 0;
        }
        if (TextUtils.equals(str2, str)) {
            return 3;
        }
        if (format.f1551A.startsWith(str) || str.startsWith(format.f1551A)) {
            return 2;
        }
        return (format.f1551A.length() < 3 || str.length() < 3 || !format.f1551A.substring(0, 3).equals(str.substring(0, 3))) ? 0 : 1;
    }

    /* renamed from: a */
    public static int m37961a(TrackGroup trackGroup, int[] iArr, C0339b bVar, boolean z, boolean z2) {
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.f1855a; i2++) {
            i = i;
            if (m37966a(trackGroup.m37992a(i2), iArr[i2], bVar, z, z2)) {
                i++;
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L_0x0033;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point m37949a(boolean r6, int r7, int r8, int r9, int r10) {
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
            int r3 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34494a(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L_0x0054:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r11
            r3 = r10
            int r2 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34494a(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m37949a(boolean, int, int, int, int):android.graphics.Point");
    }

    /* renamed from: a */
    public static AbstractC1668i.C1669a m37958a(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters) {
        int i2 = parameters.f1904l ? 24 : 16;
        boolean z = parameters.f1903k && (i & i2) != 0;
        for (int i3 = 0; i3 < trackGroupArray.f1859a; i3++) {
            TrackGroup a = trackGroupArray.m37990a(i3);
            int[] a2 = m37960a(a, iArr[i3], z, i2, parameters.f1898f, parameters.f1899g, parameters.f1900h, parameters.f1901i, parameters.f1905m, parameters.f1906n, parameters.f1907o);
            if (a2.length > 0) {
                return new AbstractC1668i.C1669a(a, a2);
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
    public static p012b.p076s.p078b.p079a.p110y0.AbstractC1668i.C1669a m37956a(androidx.media2.exoplayer.external.source.TrackGroupArray r8, int[][] r9, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r10) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m37956a(androidx.media2.exoplayer.external.source.TrackGroupArray, int[][], androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters):b.s.b.a.y0.i$a");
    }

    /* renamed from: a */
    public static List<Integer> m37963a(TrackGroup trackGroup, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.f1855a);
        for (int i3 = 0; i3 < trackGroup.f1855a; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (!(i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE)) {
            int i4 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            for (int i5 = 0; i5 < trackGroup.f1855a; i5++) {
                Format a = trackGroup.m37992a(i5);
                int i6 = a.f1567n;
                i4 = i4;
                if (i6 > 0) {
                    int i7 = a.f1568o;
                    i4 = i4;
                    if (i7 > 0) {
                        Point a2 = m37949a(z, i, i2, i6, i7);
                        int i8 = a.f1567n;
                        int i9 = a.f1568o;
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
                    int a3 = trackGroup.m37992a(((Integer) arrayList.get(size)).intValue()).m38195a();
                    if (a3 == -1 || a3 > i4) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m37962a(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!m37964a(trackGroup.m37992a(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                list.remove(size);
            }
        }
    }

    /* renamed from: a */
    public static void m37951a(AbstractC1662d.C1663a aVar, int[][][] iArr, C1240j0[] j0VarArr, AbstractC1668i[] iVarArr, int i) {
        boolean z;
        if (i != 0) {
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < aVar.m32433a(); i4++) {
                int a = aVar.m32432a(i4);
                AbstractC1668i iVar = iVarArr[i4];
                if (a != 1) {
                    i2 = i2;
                    i3 = i3;
                    if (a != 2) {
                        continue;
                    }
                }
                i2 = i2;
                i3 = i3;
                if (iVar != null) {
                    i2 = i2;
                    i3 = i3;
                    if (!m37948a(iArr[i4], aVar.m32431b(i4), iVar)) {
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
                C1240j0 j0Var = new C1240j0(i);
                j0VarArr[i3] = j0Var;
                j0VarArr[i2] = j0Var;
            }
        }
    }

    /* renamed from: a */
    public static boolean m37968a(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    /* renamed from: a */
    public static boolean m37967a(Format format) {
        return m37950a(format.f1551A);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (android.text.TextUtils.equals(r0, r5.f1926c) != false) goto L_0x004c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
        if (r0 == r5.f1925b) goto L_0x006b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m37966a(androidx.media2.exoplayer.external.Format r3, int r4, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.C0339b r5, boolean r6, boolean r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = 0
            boolean r0 = m37968a(r0, r1)
            if (r0 == 0) goto L_0x006e
            r0 = r3
            int r0 = r0.f1575v
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x006e
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f1924a
            if (r0 != r1) goto L_0x006e
            r0 = r6
            if (r0 != 0) goto L_0x004c
            r0 = r3
            java.lang.String r0 = r0.f1562i
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            if (r0 == 0) goto L_0x006e
            r0 = r8
            r9 = r0
            r0 = r10
            r1 = r5
            java.lang.String r1 = r1.f1926c
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x006e
        L_0x004c:
            r0 = r7
            if (r0 != 0) goto L_0x006b
            r0 = r3
            int r0 = r0.f1576w
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x006e
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.f1925b
            if (r0 != r1) goto L_0x006e
        L_0x006b:
            r0 = 1
            r9 = r0
        L_0x006e:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m37966a(androidx.media2.exoplayer.external.Format, int, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$b, boolean, boolean):boolean");
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
        if (p012b.p076s.p078b.p079a.p080a1.C1167d0.m34478a((java.lang.Object) r3.f1562i, (java.lang.Object) r4) != false) goto L_0x002c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m37964a(androidx.media2.exoplayer.external.Format r3, java.lang.String r4, int r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = 0
            boolean r0 = m37968a(r0, r1)
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
            java.lang.String r0 = r0.f1562i
            r1 = r4
            boolean r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34478a(r0, r1)
            if (r0 == 0) goto L_0x0086
        L_0x002c:
            r0 = r3
            int r0 = r0.f1567n
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
            int r0 = r0.f1568o
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
            float r0 = r0.f1569p
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
            int r0 = r0.f1558e
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.m37964a(androidx.media2.exoplayer.external.Format, java.lang.String, int, int, int, int, int, int):boolean");
    }

    /* renamed from: a */
    public static boolean m37950a(String str) {
        return TextUtils.isEmpty(str) || TextUtils.equals(str, "und");
    }

    /* renamed from: a */
    public static boolean m37948a(int[][] iArr, TrackGroupArray trackGroupArray, AbstractC1668i iVar) {
        if (iVar == null) {
            return false;
        }
        int a = trackGroupArray.m37989a(iVar.mo32425a());
        for (int i = 0; i < iVar.length(); i++) {
            if ((iArr[a][iVar.mo32418b(i)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static int[] m37960a(TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2) {
        String str;
        if (trackGroup.f1855a < 2) {
            return f1893g;
        }
        List<Integer> a = m37963a(trackGroup, i6, i7, z2);
        if (a.size() < 2) {
            return f1893g;
        }
        if (!z) {
            HashSet hashSet = new HashSet();
            str = null;
            int i8 = 0;
            for (int i9 = 0; i9 < a.size(); i9++) {
                String str2 = trackGroup.m37992a(a.get(i9).intValue()).f1562i;
                str = str;
                i8 = i8;
                if (hashSet.add(str2)) {
                    int b = m37946b(trackGroup, iArr, i, str2, i2, i3, i4, i5, a);
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
        m37962a(trackGroup, iArr, i, str, i2, i3, i4, i5, a);
        return a.size() < 2 ? f1893g : C1167d0.m34472a(a);
    }

    /* renamed from: a */
    public static int[] m37959a(TrackGroup trackGroup, int[] iArr, boolean z, boolean z2) {
        HashSet hashSet = new HashSet();
        C0339b bVar = null;
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.f1855a; i2++) {
            Format a = trackGroup.m37992a(i2);
            C0339b bVar2 = new C0339b(a.f1575v, a.f1576w, a.f1562i);
            bVar = bVar;
            i = i;
            if (hashSet.add(bVar2)) {
                int a2 = m37961a(trackGroup, iArr, bVar2, z, z2);
                bVar = bVar;
                i = i;
                if (a2 > i) {
                    i = a2;
                    bVar = bVar2;
                }
            }
        }
        if (i <= 1) {
            return f1893g;
        }
        int[] iArr2 = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroup.f1855a; i4++) {
            Format a3 = trackGroup.m37992a(i4);
            int i5 = iArr[i4];
            C1160a.m34522a(bVar);
            i3 = i3;
            if (m37966a(a3, i5, bVar, z, z2)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return iArr2;
    }

    /* renamed from: b */
    public static int m37946b(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            int intValue = list.get(i7).intValue();
            i6 = i6;
            if (m37964a(trackGroup.m37992a(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                i6++;
            }
        }
        return i6;
    }

    /* renamed from: c */
    public static int m37944c(int i, int i2) {
        int i3 = -1;
        if (i != -1) {
            i3 = i2 == -1 ? 1 : i - i2;
        } else if (i2 == -1) {
            i3 = 0;
        }
        return i3;
    }

    /* renamed from: d */
    public static int m37942d(int i, int i2) {
        return i > i2 ? 1 : i2 > i ? -1 : 0;
    }

    /* renamed from: a */
    public Pair<AbstractC1668i.C1669a, C0340c> m37957a(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) throws ExoPlaybackException {
        C0340c cVar = null;
        int i2 = 0;
        int i3 = -1;
        int i4 = -1;
        while (i2 < trackGroupArray.f1859a) {
            TrackGroup a = trackGroupArray.m37990a(i2);
            int[] iArr2 = iArr[i2];
            for (int i5 = 0; i5 < a.f1855a; i5++) {
                i3 = i3;
                i4 = i4;
                cVar = cVar;
                if (m37968a(iArr2[i5], parameters.f1915w)) {
                    C0340c cVar2 = new C0340c(a.m37992a(i5), parameters, iArr2[i5]);
                    if (cVar2.f1927a || parameters.f1910r) {
                        if (cVar != null) {
                            i3 = i3;
                            i4 = i4;
                            cVar = cVar;
                            if (cVar2.compareTo(cVar) <= 0) {
                            }
                        }
                        i3 = i2;
                        i4 = i5;
                        cVar = cVar2;
                    } else {
                        i3 = i3;
                        i4 = i4;
                        cVar = cVar;
                    }
                }
            }
            i2++;
            cVar = cVar;
        }
        if (i3 == -1) {
            return null;
        }
        TrackGroup a2 = trackGroupArray.m37990a(i3);
        AbstractC1668i.C1669a aVar = null;
        if (!parameters.f1914v) {
            aVar = null;
            if (!parameters.f1913u) {
                aVar = null;
                if (z) {
                    int[] a3 = m37959a(a2, iArr[i3], parameters.f1911s, parameters.f1912t);
                    aVar = null;
                    if (a3.length > 0) {
                        aVar = new AbstractC1668i.C1669a(a2, a3);
                    }
                }
            }
        }
        AbstractC1668i.C1669a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new AbstractC1668i.C1669a(a2, i4);
        }
        C1160a.m34522a(cVar);
        return Pair.create(aVar2, cVar);
    }

    /* renamed from: a */
    public Pair<AbstractC1668i.C1669a, Integer> m37955a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) throws ExoPlaybackException {
        int i;
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroupArray.f1859a; i4++) {
            TrackGroup a = trackGroupArray.m37990a(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < a.f1855a; i5++) {
                if (m37968a(iArr2[i5], parameters.f1915w)) {
                    Format a2 = a.m37992a(i5);
                    int i6 = a2.f1556c & (parameters.f1962d ^ (-1));
                    boolean z = (i6 & 1) != 0;
                    boolean z2 = (i6 & 2) != 0;
                    int a3 = m37965a(a2, parameters.f1960b);
                    boolean a4 = m37967a(a2);
                    if (a3 > 0 || (parameters.f1961c && a4)) {
                        i = (z ? 11 : !z2 ? 7 : 3) + a3;
                    } else if (z) {
                        i = 2;
                    } else if (z2) {
                        if (m37965a(a2, str) <= 0) {
                            trackGroup = trackGroup;
                            i2 = i2;
                            i3 = i3;
                            if (a4) {
                                trackGroup = trackGroup;
                                i2 = i2;
                                i3 = i3;
                                if (!m37950a(str)) {
                                }
                            }
                        }
                        i = 1;
                    }
                    int i7 = i;
                    if (m37968a(iArr2[i5], false)) {
                        i7 = i + 1000;
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
                i3 = i3;
                i2 = i2;
                trackGroup = trackGroup;
            }
        }
        return trackGroup == null ? null : Pair.create(new AbstractC1668i.C1669a(trackGroup, i2), Integer.valueOf(i3));
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1662d
    /* renamed from: a */
    public final Pair<C1240j0[], AbstractC1668i[]> mo32437a(AbstractC1662d.C1663a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException {
        Parameters parameters = this.f1895e.get();
        int a = aVar.m32433a();
        AbstractC1668i.C1669a[] a2 = m37952a(aVar, iArr, iArr2, parameters);
        int i = 0;
        while (true) {
            AbstractC1668i.C1669a aVar2 = null;
            if (i >= a) {
                break;
            }
            if (parameters.m37939a(i)) {
                a2[i] = null;
            } else {
                TrackGroupArray b = aVar.m32431b(i);
                if (parameters.m37931b(i, b)) {
                    SelectionOverride a3 = parameters.m37938a(i, b);
                    if (a3 != null) {
                        aVar2 = new AbstractC1668i.C1669a(b.m37990a(a3.f1919a), a3.f1920b, a3.f1922d, Integer.valueOf(a3.f1923e));
                    }
                    a2[i] = aVar2;
                }
            }
            i++;
        }
        AbstractC1668i[] a4 = this.f1894d.mo32409a(a2, m32405a());
        C1240j0[] j0VarArr = new C1240j0[a];
        for (int i2 = 0; i2 < a; i2++) {
            j0VarArr[i2] = !parameters.m37939a(i2) && (aVar.m32432a(i2) == 6 || a4[i2] != null) ? C1240j0.f4934b : null;
        }
        m37951a(aVar, iArr, j0VarArr, a4, parameters.f1916x);
        return Pair.create(j0VarArr, a4);
    }

    /* renamed from: a */
    public AbstractC1668i.C1669a m37969a(int i, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        AbstractC1668i.C1669a aVar = null;
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroupArray.f1859a; i4++) {
            TrackGroup a = trackGroupArray.m37990a(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < a.f1855a; i5++) {
                trackGroup = trackGroup;
                i2 = i2;
                i3 = i3;
                if (m37968a(iArr2[i5], parameters.f1915w)) {
                    int i6 = (a.m37992a(i5).f1556c & 1) != 0 ? 2 : 1;
                    int i7 = i6;
                    if (m37968a(iArr2[i5], false)) {
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
            aVar = new AbstractC1668i.C1669a(trackGroup, i2);
        }
        return aVar;
    }

    /* renamed from: a */
    public void m37954a(Parameters parameters) {
        C1160a.m34522a(parameters);
        if (!this.f1895e.getAndSet(parameters).equals(parameters)) {
            m32401b();
        }
    }

    /* renamed from: a */
    public void m37953a(C0341d dVar) {
        m37954a(dVar.m37928a());
    }

    /* renamed from: a */
    public AbstractC1668i.C1669a[] m37952a(AbstractC1662d.C1663a aVar, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        int a = aVar.m32433a();
        AbstractC1668i.C1669a[] aVarArr = new AbstractC1668i.C1669a[a];
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
            if (2 == aVar.m32432a(i)) {
                z = z;
                if (!z) {
                    aVarArr[i] = m37945b(aVar.m32431b(i), iArr[i], iArr2[i], parameters, true);
                    z = aVarArr[i] != null;
                }
                if (aVar.m32431b(i).f1859a <= 0) {
                    z3 = false;
                }
                z2 |= z3;
            }
            i++;
        }
        C0340c cVar = null;
        String str = null;
        int i2 = -1;
        for (int i3 = 0; i3 < a; i3++) {
            if (1 == aVar.m32432a(i3)) {
                Pair<AbstractC1668i.C1669a, C0340c> a2 = m37957a(aVar.m32431b(i3), iArr[i3], iArr2[i3], parameters, this.f1896f || !z2);
                if (a2 != null && (cVar == null || ((C0340c) a2.second).compareTo(cVar) > 0)) {
                    if (i2 != -1) {
                        aVarArr[i2] = null;
                    }
                    AbstractC1668i.C1669a aVar2 = (AbstractC1668i.C1669a) a2.first;
                    aVarArr[i3] = aVar2;
                    str = aVar2.f6847a.m37992a(aVar2.f6848b[0]).f1551A;
                    cVar = (C0340c) a2.second;
                    i2 = i3;
                }
            }
        }
        int i4 = Integer.MIN_VALUE;
        int i5 = -1;
        for (int i6 = 0; i6 < a; i6++) {
            int a3 = aVar.m32432a(i6);
            if (a3 != 1) {
                if (a3 != 2) {
                    if (a3 != 3) {
                        aVarArr[i6] = m37969a(a3, aVar.m32431b(i6), iArr[i6], parameters);
                    } else {
                        Pair<AbstractC1668i.C1669a, Integer> a4 = m37955a(aVar.m32431b(i6), iArr[i6], parameters, str);
                        i4 = i4;
                        i5 = i5;
                        if (a4 != null) {
                            i4 = i4;
                            i5 = i5;
                            if (((Integer) a4.second).intValue() > i4) {
                                if (i5 != -1) {
                                    aVarArr[i5] = null;
                                }
                                aVarArr[i6] = (AbstractC1668i.C1669a) a4.first;
                                i4 = ((Integer) a4.second).intValue();
                                i5 = i6;
                            }
                        }
                    }
                }
                i4 = i4;
                i5 = i5;
            } else {
                i5 = i5;
                i4 = i4;
            }
        }
        return aVarArr;
    }

    /* renamed from: b */
    public AbstractC1668i.C1669a m37945b(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) throws ExoPlaybackException {
        AbstractC1668i.C1669a a = (parameters.f1914v || parameters.f1913u || !z) ? null : m37958a(trackGroupArray, iArr, i, parameters);
        AbstractC1668i.C1669a aVar = a;
        if (a == null) {
            aVar = m37956a(trackGroupArray, iArr, parameters);
        }
        return aVar;
    }

    /* renamed from: d */
    public C0341d m37943d() {
        return m37941e().m37940a();
    }

    /* renamed from: e */
    public Parameters m37941e() {
        return this.f1895e.get();
    }
}
