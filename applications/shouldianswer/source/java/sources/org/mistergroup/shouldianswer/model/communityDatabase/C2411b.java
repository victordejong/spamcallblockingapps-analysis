package org.mistergroup.shouldianswer.model.communityDatabase;

import android.content.Context;
import android.util.SparseArray;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3132v;
/* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/b.class */
public final class C2411b {

    /* renamed from: a */
    private int f6981a;

    /* renamed from: b */
    private int f6982b;

    /* renamed from: c */
    private long f6983c;

    /* renamed from: d */
    private long[] f6984d = new long[0];

    /* renamed from: e */
    private byte[] f6985e = new byte[0];

    /* renamed from: f */
    private byte[] f6986f = new byte[0];

    /* renamed from: g */
    private byte[] f6987g = new byte[0];

    /* renamed from: h */
    private byte[] f6988h = new byte[0];

    /* renamed from: i */
    private byte[] f6989i = new byte[0];

    /* renamed from: j */
    private long[] f6990j = new long[0];

    /* renamed from: k */
    private SparseArray<List<Integer>> f6991k;

    /* renamed from: l */
    private SparseArray<List<Integer>> f6992l;

    /* renamed from: b */
    private final int m1122b(long j) {
        int i = this.f6981a;
        if (i > 0) {
            int i2 = i / 2;
            int max = Math.max(i / 4, 1);
            for (int i3 = 0; i3 <= 999; i3++) {
                long[] jArr = this.f6984d;
                if (j == jArr[i2]) {
                    return i2;
                }
                if (j > jArr[i2]) {
                    int i4 = i2 + max;
                    if (i4 >= this.f6981a) {
                        return -1;
                    }
                    i2 = i4;
                    if (max == 1) {
                        i2 = i4;
                        if (j < jArr[i4]) {
                            return -1;
                        }
                    }
                } else {
                    int i5 = i2 - max;
                    if (i5 < 0) {
                        return -1;
                    }
                    i2 = i5;
                    if (max == 1) {
                        i2 = i5;
                        if (j > jArr[i5]) {
                            return -1;
                        }
                    }
                }
                int i6 = max / 2;
                max = i6;
                if (i6 == 0) {
                    max = 1;
                }
            }
            C3104j.m152c(C3104j.f9124a, "CommunityDatabaseDataSlice.indexOf Maximum 1000 iterations reached!", null, 2, null);
            return -1;
        }
        return -1;
    }

    /* renamed from: a */
    public final int m1130a() {
        return this.f6981a;
    }

    /* renamed from: a */
    public final C2408a.C2409a m1129a(long j) {
        this.f6983c = System.currentTimeMillis();
        int m1122b = m1122b(j);
        C2408a.C2409a c2409a = null;
        if (m1122b >= 0) {
            c2409a = new C2408a.C2409a();
            c2409a.m1138a(this.f6984d[m1122b]);
            c2409a.m1139a(this.f6985e[m1122b] & 255);
            c2409a.m1136b(this.f6986f[m1122b] & 255);
            c2409a.m1134c(this.f6987g[m1122b] & 255);
            c2409a.m1132d(this.f6988h[m1122b] & 255);
            c2409a.m1131e(this.f6989i[m1122b] & 255);
        }
        return c2409a;
    }

    /* renamed from: a */
    public final void m1128a(Context context, int i) {
        C1694h.m3117b(context, "context");
        try {
            InputStream open = context.getAssets().open("data_slice_" + String.valueOf(i) + ".dat");
            C1694h.m3122a((Object) open, "context.assets.open(fileName)");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(open);
            if (!m1126a(bufferedInputStream)) {
                throw new Exception("Load from assets " + String.valueOf(i) + " failed!");
            }
            try {
                bufferedInputStream.close();
                open.close();
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m1127a(Context context, String str) {
        synchronized (this) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(str, "fileName");
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "CommunityDatabaseDataSlice.loadFromFile " + str, (String) null, 2, (Object) null);
            FileInputStream fileInputStream = new FileInputStream(str);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            if (!m1126a(bufferedInputStream)) {
                throw new Exception("CommunityDatabaseDataSlice loadFromFile failed name=" + str);
            }
            try {
                bufferedInputStream.close();
                fileInputStream.close();
            } catch (FileNotFoundException e) {
                C3104j c3104j2 = C3104j.f9124a;
                C3104j.m152c(c3104j2, "CommunityDatabaseDataSlice file not found " + str, null, 2, null);
            } catch (Exception e2) {
                C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: a */
    public final boolean m1126a(BufferedInputStream bufferedInputStream) {
        synchronized (this) {
            C1694h.m3117b(bufferedInputStream, "stream");
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f6982b = 0;
                String m37a = C3132v.f9266a.m37a(bufferedInputStream, 4);
                if (!C1747g.m3036a(m37a, "MTZF", true) && !C1747g.m3036a(m37a, "MTZD", true)) {
                    C3104j.m157a(C3104j.f9124a, "CommunityDatabaseDataSlice.Load Error Invalid header! " + m37a, (String) null, 2, (Object) null);
                    throw new InvalidObjectException("Invalid header!");
                }
                C3132v.f9266a.m31c(bufferedInputStream);
                this.f6982b = C3132v.f9266a.m38a(bufferedInputStream);
                C3132v.f9266a.m37a(bufferedInputStream, 2);
                C3132v.f9266a.m38a(bufferedInputStream);
                this.f6981a = C3132v.f9266a.m38a(bufferedInputStream);
                this.f6984d = new long[this.f6981a];
                this.f6985e = new byte[this.f6981a];
                this.f6986f = new byte[this.f6981a];
                this.f6987g = new byte[this.f6981a];
                this.f6988h = new byte[this.f6981a];
                this.f6989i = new byte[this.f6981a];
                byte[] bArr = new byte[13000];
                int i = this.f6981a;
                int i2 = 0;
                while (i > 0) {
                    int i3 = 1000 > i ? i : 1000;
                    int i4 = i3 * 13;
                    if (bufferedInputStream.read(bArr, 0, i4) != i4) {
                        throw new IOException("Unexpected end of file!");
                    }
                    int i5 = 0;
                    for (int i6 = 0; i6 < i3; i6++) {
                        int i7 = i5 + 7;
                        int i8 = i7 - 1;
                        long j = bArr[i7] & 255;
                        int i9 = i8 - 1;
                        long j2 = bArr[i8] & 255;
                        int i10 = i9 - 1;
                        long j3 = bArr[i9] & 255;
                        int i11 = i10 - 1;
                        long j4 = bArr[i10] & 255;
                        int i12 = i11 - 1;
                        long j5 = bArr[i11] & 255;
                        int i13 = i12 - 1;
                        int i14 = i5 + 8;
                        this.f6984d[i2] = (((((((((((((j << 8) | j2) << 8) | j3) << 8) | j4) << 8) | j5) << 8) | (bArr[i12] & 255)) << 8) | (bArr[i13] & 255)) << 8) | (bArr[i13 - 1] & 255);
                        int i15 = i14 + 1;
                        this.f6985e[i2] = bArr[i14];
                        int i16 = i15 + 1;
                        this.f6986f[i2] = bArr[i15];
                        int i17 = i16 + 1;
                        this.f6987g[i2] = bArr[i16];
                        int i18 = i17 + 1;
                        this.f6988h[i2] = bArr[i17];
                        i5 = i18 + 1;
                        this.f6989i[i2] = bArr[i18];
                        i2++;
                    }
                    i -= i3;
                }
                String m37a2 = C3132v.f9266a.m37a(bufferedInputStream, 2);
                if (!C1747g.m3036a(m37a2, "CP", true)) {
                    throw new Exception("CP not found! readed " + m37a2);
                }
                int m38a = C3132v.f9266a.m38a(bufferedInputStream);
                this.f6990j = new long[m38a];
                for (int i19 = 0; i19 < m38a; i19++) {
                    this.f6990j[i19] = C3132v.f9266a.m32b(bufferedInputStream);
                }
                String m37a3 = C3132v.f9266a.m37a(bufferedInputStream, 6);
                if (!C1747g.m3036a(m37a3, "MTZEND", true)) {
                    throw new Exception("DB Endmark not found! readed " + m37a3);
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                C3104j.m157a(C3104j.f9124a, "Loaded CommunityDatabaseDataSlice with " + String.valueOf(this.f6981a) + " items and " + String.valueOf(m38a) + " deleted items in " + String.valueOf(currentTimeMillis2 - currentTimeMillis) + " ms", (String) null, 2, (Object) null);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m1125a(C2411b c2411b, int i) {
        C1694h.m3117b(c2411b, FirebaseAnalytics.Param.SOURCE);
        boolean z = false;
        try {
            if (c2411b.f6991k == null) {
                c2411b.f6991k = new SparseArray<>();
                c2411b.f6992l = new SparseArray<>();
                for (int i2 = 0; i2 <= 99; i2++) {
                    SparseArray<List<Integer>> sparseArray = c2411b.f6991k;
                    if (sparseArray == null) {
                        C1694h.m3124a();
                    }
                    sparseArray.put(i2, new ArrayList());
                    SparseArray<List<Integer>> sparseArray2 = c2411b.f6992l;
                    if (sparseArray2 == null) {
                        C1694h.m3124a();
                    }
                    sparseArray2.put(i2, new ArrayList());
                }
                int length = c2411b.f6984d.length;
                for (int i3 = 0; i3 < length; i3++) {
                    String valueOf = String.valueOf(c2411b.f6984d[i3]);
                    if (valueOf.length() > 1) {
                        if (valueOf == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        String substring = valueOf.substring(0, 2);
                        C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        Integer valueOf2 = Integer.valueOf(substring);
                        C1694h.m3122a((Object) valueOf2, "Integer.valueOf(number.substring(0, 2))");
                        int intValue = valueOf2.intValue();
                        SparseArray<List<Integer>> sparseArray3 = c2411b.f6991k;
                        if (sparseArray3 == null) {
                            C1694h.m3124a();
                        }
                        sparseArray3.get(intValue).add(Integer.valueOf(i3));
                    }
                }
                int length2 = c2411b.f6990j.length;
                for (int i4 = 0; i4 < length2; i4++) {
                    String valueOf3 = String.valueOf(c2411b.f6990j[i4]);
                    if (valueOf3.length() > 1) {
                        if (valueOf3 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        String substring2 = valueOf3.substring(0, 2);
                        C1694h.m3122a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        Integer valueOf4 = Integer.valueOf(substring2);
                        C1694h.m3122a((Object) valueOf4, "Integer.valueOf(number.substring(0, 2))");
                        int intValue2 = valueOf4.intValue();
                        SparseArray<List<Integer>> sparseArray4 = c2411b.f6992l;
                        if (sparseArray4 == null) {
                            C1694h.m3124a();
                        }
                        sparseArray4.get(intValue2).add(Integer.valueOf(i4));
                    }
                }
            }
            SparseArray<List<Integer>> sparseArray5 = c2411b.f6991k;
            if (sparseArray5 == null) {
                C1694h.m3124a();
            }
            List<Integer> list = sparseArray5.get(i);
            this.f6981a = list.size();
            this.f6982b = c2411b.f6982b;
            this.f6984d = new long[this.f6981a];
            this.f6985e = new byte[this.f6981a];
            this.f6986f = new byte[this.f6981a];
            this.f6987g = new byte[this.f6981a];
            this.f6988h = new byte[this.f6981a];
            this.f6989i = new byte[this.f6981a];
            int i5 = this.f6981a;
            for (int i6 = 0; i6 < i5; i6++) {
                this.f6984d[i6] = c2411b.f6984d[list.get(i6).intValue()];
                this.f6985e[i6] = c2411b.f6985e[list.get(i6).intValue()];
                this.f6986f[i6] = c2411b.f6986f[list.get(i6).intValue()];
                this.f6987g[i6] = c2411b.f6987g[list.get(i6).intValue()];
                this.f6988h[i6] = c2411b.f6988h[list.get(i6).intValue()];
                this.f6989i[i6] = c2411b.f6989i[list.get(i6).intValue()];
            }
            SparseArray<List<Integer>> sparseArray6 = c2411b.f6992l;
            if (sparseArray6 == null) {
                C1694h.m3124a();
            }
            List<Integer> list2 = sparseArray6.get(i);
            int size = list2.size();
            this.f6990j = new long[size];
            for (int i7 = 0; i7 < size; i7++) {
                this.f6990j[i7] = c2411b.f6990j[list2.get(i7).intValue()];
            }
            if (this.f6981a > 0 || size > 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v113 */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* renamed from: a */
    public final boolean m1124a(C2411b c2411b, BufferedOutputStream bufferedOutputStream) {
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        C1694h.m3117b(bufferedOutputStream, "stream");
        System.currentTimeMillis();
        try {
            int i4 = this.f6981a;
            int i5 = i4;
            if (c2411b != null) {
                if (this.f6981a > 0) {
                    long[] jArr = c2411b.f6984d;
                    int length = jArr.length;
                    i5 = i4;
                    int i6 = 0;
                    while (i6 < length) {
                        int i7 = i5;
                        if (m1122b(jArr[i6]) == -1) {
                            i7 = i5 + 1;
                        }
                        i6++;
                        i5 = i7;
                    }
                    long[] jArr2 = c2411b.f6990j;
                    int length2 = jArr2.length;
                    int i8 = 0;
                    while (i8 < length2) {
                        int i9 = i5;
                        if (m1122b(jArr2[i8]) == -1) {
                            i9 = i5 + 1;
                        }
                        i8++;
                        i5 = i9;
                    }
                } else {
                    i5 = c2411b.f6981a + c2411b.f6990j.length;
                }
            }
            int i10 = c2411b != null ? c2411b.f6982b : this.f6982b;
            C3132v.f9266a.m33a(bufferedOutputStream, "MTZF");
            C3132v.f9266a.m36a(bufferedOutputStream, (byte) 1);
            C3132v.f9266a.m35a(bufferedOutputStream, i10);
            C3132v.f9266a.m33a(bufferedOutputStream, "ww");
            C3132v.f9266a.m35a(bufferedOutputStream, 0);
            C3132v.f9266a.m35a(bufferedOutputStream, i5);
            int i11 = this.f6981a;
            if (i11 >= 0) {
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                i2 = i5;
                while (true) {
                    char c = i15 < this.f6981a ? this.f6984d[i15] : (char) 65535;
                    int i16 = i12;
                    boolean z3 = false;
                    while (true) {
                        z = z3;
                        if (c2411b == null) {
                            break;
                        }
                        char c2 = (i14 >= c2411b.f6984d.length || c2411b.f6984d[i14] > c) ? (char) 0 : c2411b.f6984d[i14];
                        char c3 = (i13 >= c2411b.f6990j.length || c2411b.f6990j[i13] > c) ? (char) 0 : c2411b.f6990j[i13];
                        if (c2 > 0 && (c3 == 0 || c2 < c3)) {
                            C3132v.f9266a.m34a(bufferedOutputStream, c2411b.f6984d[i14]);
                            C3132v.f9266a.m36a(bufferedOutputStream, c2411b.f6985e[i14]);
                            C3132v.f9266a.m36a(bufferedOutputStream, c2411b.f6986f[i14]);
                            C3132v.f9266a.m36a(bufferedOutputStream, c2411b.f6987g[i14]);
                            C3132v.f9266a.m36a(bufferedOutputStream, c2411b.f6988h[i14]);
                            C3132v.f9266a.m36a(bufferedOutputStream, c2411b.f6989i[i14]);
                            z2 = c2411b.f6984d[i14] == c;
                            i14++;
                        } else if (c3 <= 0) {
                            break;
                        } else {
                            C3132v.f9266a.m34a(bufferedOutputStream, c2411b.f6990j[i13]);
                            byte b = (byte) 0;
                            C3132v.f9266a.m36a(bufferedOutputStream, b);
                            C3132v.f9266a.m36a(bufferedOutputStream, b);
                            C3132v.f9266a.m36a(bufferedOutputStream, b);
                            C3132v.f9266a.m36a(bufferedOutputStream, b);
                            C3132v.f9266a.m36a(bufferedOutputStream, b);
                            z2 = c2411b.f6990j[i13] == c;
                            i13++;
                        }
                        i16++;
                        z3 = z2;
                    }
                    int i17 = i16;
                    if (!z) {
                        i17 = i16;
                        if (i15 < this.f6981a) {
                            C3132v.f9266a.m34a(bufferedOutputStream, this.f6984d[i15]);
                            C3132v.f9266a.m36a(bufferedOutputStream, this.f6985e[i15]);
                            C3132v.f9266a.m36a(bufferedOutputStream, this.f6986f[i15]);
                            C3132v.f9266a.m36a(bufferedOutputStream, this.f6987g[i15]);
                            C3132v.f9266a.m36a(bufferedOutputStream, this.f6988h[i15]);
                            C3132v.f9266a.m36a(bufferedOutputStream, this.f6989i[i15]);
                            i17 = i16 + 1;
                        }
                    }
                    i3 = i17;
                    if (i15 == i11) {
                        break;
                    }
                    i15++;
                    i12 = i3;
                }
                i = i3;
            } else {
                i = 0;
                i2 = i5;
            }
            if (i != i2) {
                C3104j.f9124a.m160a("realCount", String.valueOf(i));
                C3104j.f9124a.m160a("newCount", String.valueOf(i2));
                C3104j.f9124a.m160a("actDB", String.valueOf(this.f6982b));
                C3104j.f9124a.m160a("newDB", String.valueOf(c2411b != null ? c2411b.f6982b : 0));
                throw new Exception("updateAndSave results in invalid realCount!");
            }
            C3132v.f9266a.m33a(bufferedOutputStream, "CP");
            C3132v.f9266a.m35a(bufferedOutputStream, 0);
            C3132v.f9266a.m33a(bufferedOutputStream, "MTZEND");
            System.currentTimeMillis();
            return true;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* renamed from: b */
    public final int m1123b() {
        return this.f6982b;
    }

    /* renamed from: c */
    public final long m1121c() {
        return this.f6983c;
    }
}
