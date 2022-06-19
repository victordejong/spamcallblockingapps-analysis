package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
/* renamed from: n3.y.b.a.q0.w.b0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/b0.class */
public final class C27256b0 implements AbstractC27179g {

    /* renamed from: a */
    public final int f76489a;

    /* renamed from: b */
    public final List<C27443v> f76490b;

    /* renamed from: c */
    public final C27434m f76491c;

    /* renamed from: d */
    public final SparseIntArray f76492d;

    /* renamed from: e */
    public final AbstractC27260c0.AbstractC27263c f76493e;

    /* renamed from: f */
    public final SparseArray<AbstractC27260c0> f76494f;

    /* renamed from: g */
    public final SparseBooleanArray f76495g;

    /* renamed from: h */
    public final SparseBooleanArray f76496h;

    /* renamed from: i */
    public final C27254a0 f76497i;

    /* renamed from: j */
    public C27296z f76498j;

    /* renamed from: k */
    public AbstractC27180h f76499k;

    /* renamed from: l */
    public int f76500l;

    /* renamed from: m */
    public boolean f76501m;

    /* renamed from: n */
    public boolean f76502n;

    /* renamed from: o */
    public boolean f76503o;

    /* renamed from: p */
    public AbstractC27260c0 f76504p;

    /* renamed from: q */
    public int f76505q;

    /* renamed from: r */
    public int f76506r;

    /* renamed from: n3.y.b.a.q0.w.b0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/b0$a.class */
    public class C27257a implements AbstractC27292v {

        /* renamed from: a */
        public final C27433l f76507a = new C27433l(new byte[4]);

        public C27257a() {
            C27256b0.this = r6;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27292v
        /* renamed from: b */
        public void mo610b(C27443v c27443v, AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27292v
        /* renamed from: d */
        public void mo609d(C27434m c27434m) {
            if (c27434m.m326o() != 0) {
                return;
            }
            c27434m.m341A(7);
            int m340a = c27434m.m340a() / 4;
            for (int i = 0; i < m340a; i++) {
                c27434m.m339b(this.f76507a, 4);
                int m347e = this.f76507a.m347e(16);
                this.f76507a.m342j(3);
                if (m347e == 0) {
                    this.f76507a.m342j(13);
                } else {
                    int m347e2 = this.f76507a.m347e(13);
                    C27256b0 c27256b0 = C27256b0.this;
                    c27256b0.f76494f.put(m347e2, new C27293w(new C27258b(m347e2)));
                    C27256b0.this.f76500l++;
                }
            }
            C27256b0 c27256b02 = C27256b0.this;
            if (c27256b02.f76489a == 2) {
                return;
            }
            c27256b02.f76494f.remove(0);
        }
    }

    /* renamed from: n3.y.b.a.q0.w.b0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/b0$b.class */
    public class C27258b implements AbstractC27292v {

        /* renamed from: a */
        public final C27433l f76509a = new C27433l(new byte[5]);

        /* renamed from: b */
        public final SparseArray<AbstractC27260c0> f76510b = new SparseArray<>();

        /* renamed from: c */
        public final SparseIntArray f76511c = new SparseIntArray();

        /* renamed from: d */
        public final int f76512d;

        public C27258b(int i) {
            C27256b0.this = r6;
            this.f76512d = i;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27292v
        /* renamed from: b */
        public void mo610b(C27443v c27443v, AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x0233, code lost:
            if (r10.m326o() == r25) goto L45;
         */
        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27292v
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo609d(p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m r10) {
            /*
                Method dump skipped, instructions count: 1238
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27256b0.C27258b.mo609d(n3.y.b.a.x0.m):void");
        }
    }

    public C27256b0(int i, C27443v c27443v, AbstractC27260c0.AbstractC27263c abstractC27263c) {
        this.f76493e = abstractC27263c;
        this.f76489a = i;
        if (i == 1 || i == 2) {
            this.f76490b = Collections.singletonList(c27443v);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f76490b = arrayList;
            arrayList.add(c27443v);
        }
        this.f76491c = new C27434m(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f76495g = sparseBooleanArray;
        this.f76496h = new SparseBooleanArray();
        SparseArray<AbstractC27260c0> sparseArray = new SparseArray<>();
        this.f76494f = sparseArray;
        this.f76492d = new SparseIntArray();
        this.f76497i = new C27254a0();
        this.f76506r = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f76494f.put(sparseArray2.keyAt(i2), (AbstractC27260c0) sparseArray2.valueAt(i2));
        }
        this.f76494f.put(0, new C27293w(new C27257a()));
        this.f76504p = null;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        C27296z c27296z;
        MediaSessionCompat.m43184y(this.f76489a != 2);
        int size = this.f76490b.size();
        for (int i = 0; i < size; i++) {
            C27443v c27443v = this.f76490b.get(i);
            if ((c27443v.m295c() == -9223372036854775807L) || (c27443v.m295c() != 0 && c27443v.f77225a != j2)) {
                c27443v.f77227c = -9223372036854775807L;
                c27443v.m294d(j2);
            }
        }
        if (j2 != 0 && (c27296z = this.f76498j) != null) {
            c27296z.m766d(j2);
        }
        this.f76491c.m320u();
        this.f76492d.clear();
        for (int i2 = 0; i2 < this.f76494f.size(); i2++) {
            this.f76494f.valueAt(i2).mo614a();
        }
        this.f76505q = 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76499k = abstractC27180h;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f76491c.f77200a;
        c27176d.m757d(bArr, 0, 940, false);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                c27176d.m753h(i);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v253, types: [long] */
    /* JADX WARN: Type inference failed for: r0v288, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        boolean z;
        int i;
        char c;
        char c2;
        long j = c27176d.f76030c;
        if (this.f76501m) {
            if ((j == -1 || this.f76489a == 2) ? false : true) {
                C27254a0 c27254a0 = this.f76497i;
                if (!c27254a0.f76471c) {
                    int i2 = this.f76506r;
                    if (i2 <= 0) {
                        c27254a0.m648a(c27176d);
                        i = 0;
                    } else if (!c27254a0.f76473e) {
                        int min = (int) Math.min(112800L, j);
                        long j2 = j - min;
                        if (c27176d.f76031d != j2) {
                            c27185m.f76055a = j2;
                            i = 1;
                        } else {
                            c27254a0.f76470b.m319v(min);
                            c27176d.f76033f = 0;
                            c27176d.m757d(c27254a0.f76470b.f77200a, 0, min, false);
                            C27434m c27434m = c27254a0.f76470b;
                            int i3 = c27434m.f77201b;
                            int i4 = c27434m.f77202c;
                            while (true) {
                                i4--;
                                if (i4 < i3) {
                                    c2 = 1;
                                    break;
                                } else if (c27434m.f77200a[i4] == 71) {
                                    c2 = MediaSessionCompat.m43227j1(c27434m, i4, i2);
                                    if (c2 != -9223372036854775807L) {
                                        break;
                                    }
                                }
                            }
                            c27254a0.f76475g = c2;
                            c27254a0.f76473e = true;
                            i = 0;
                        }
                    } else if (c27254a0.f76475g == -9223372036854775807L) {
                        c27254a0.m648a(c27176d);
                        i = 0;
                    } else if (!c27254a0.f76472d) {
                        int min2 = (int) Math.min(112800L, j);
                        long j3 = 0;
                        if (c27176d.f76031d != j3) {
                            c27185m.f76055a = j3;
                            i = 1;
                        } else {
                            c27254a0.f76470b.m319v(min2);
                            c27176d.f76033f = 0;
                            c27176d.m757d(c27254a0.f76470b.f77200a, 0, min2, false);
                            C27434m c27434m2 = c27254a0.f76470b;
                            int i5 = c27434m2.f77201b;
                            int i6 = c27434m2.f77202c;
                            while (true) {
                                if (i5 >= i6) {
                                    c = 1;
                                    break;
                                }
                                if (c27434m2.f77200a[i5] == 71) {
                                    c = MediaSessionCompat.m43227j1(c27434m2, i5, i2);
                                    if (c != -9223372036854775807L) {
                                        break;
                                    }
                                }
                                i5++;
                            }
                            c27254a0.f76474f = c;
                            c27254a0.f76472d = true;
                            i = 0;
                        }
                    } else {
                        long j4 = c27254a0.f76474f;
                        if (j4 == -9223372036854775807L) {
                            c27254a0.m648a(c27176d);
                            i = 0;
                        } else {
                            c27254a0.f76476h = c27254a0.f76469a.m296b(c27254a0.f76475g) - c27254a0.f76469a.m296b(j4);
                            c27254a0.m648a(c27176d);
                            i = 0;
                        }
                    }
                    return i;
                }
            }
            if (!this.f76502n) {
                this.f76502n = true;
                C27254a0 c27254a02 = this.f76497i;
                long j5 = c27254a02.f76476h;
                if (j5 != -9223372036854775807L) {
                    C27296z c27296z = new C27296z(c27254a02.f76469a, j5, j, this.f76506r);
                    this.f76498j = c27296z;
                    this.f76499k.m749q(c27296z.f75993a);
                } else {
                    this.f76499k.m749q(new AbstractC27186n.C27188b(j5, 0L));
                }
            }
            if (this.f76503o) {
                this.f76503o = false;
                mo606a(0L, 0L);
                if (c27176d.f76031d != 0) {
                    c27185m.f76055a = 0L;
                    return 1;
                }
            }
            C27296z c27296z2 = this.f76498j;
            if (c27296z2 != null) {
                if (c27296z2.f75995c != null) {
                    return c27296z2.m769a(c27176d, c27185m, null);
                }
            }
        }
        C27434m c27434m3 = this.f76491c;
        byte[] bArr = c27434m3.f77200a;
        if (9400 - c27434m3.f77201b < 188) {
            int m340a = c27434m3.m340a();
            if (m340a > 0) {
                System.arraycopy(bArr, this.f76491c.f77201b, bArr, 0, m340a);
            }
            this.f76491c.m317x(bArr, m340a);
        }
        while (true) {
            if (this.f76491c.m340a() >= 188) {
                z = true;
                break;
            }
            int i7 = this.f76491c.f77202c;
            int m756e = c27176d.m756e(bArr, i7, 9400 - i7);
            if (m756e == -1) {
                z = false;
                break;
            }
            this.f76491c.m316y(i7 + m756e);
        }
        if (!z) {
            return -1;
        }
        C27434m c27434m4 = this.f76491c;
        int i8 = c27434m4.f77201b;
        int i9 = c27434m4.f77202c;
        byte[] bArr2 = c27434m4.f77200a;
        int i10 = i8;
        while (i10 < i9 && bArr2[i10] != 71) {
            i10++;
        }
        this.f76491c.m315z(i10);
        int i11 = i10 + 188;
        if (i11 > i9) {
            int i12 = (i10 - i8) + this.f76505q;
            this.f76505q = i12;
            if (this.f76489a == 2 && i12 > 376) {
                throw new C27074c0("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f76505q = 0;
        }
        C27434m c27434m5 = this.f76491c;
        int i13 = c27434m5.f77202c;
        if (i11 > i13) {
            return 0;
        }
        int m337d = c27434m5.m337d();
        if ((8388608 & m337d) != 0) {
            this.f76491c.m315z(i11);
            return 0;
        }
        int i14 = ((4194304 & m337d) != 0 ? 1 : 0) | 0;
        int i15 = (2096896 & m337d) >> 8;
        boolean z2 = (m337d & 32) != 0;
        AbstractC27260c0 abstractC27260c0 = null;
        if ((m337d & 16) != 0) {
            abstractC27260c0 = this.f76494f.get(i15);
        }
        if (abstractC27260c0 == null) {
            this.f76491c.m315z(i11);
            return 0;
        }
        if (this.f76489a != 2) {
            int i16 = m337d & 15;
            int i17 = this.f76492d.get(i15, i16 - 1);
            this.f76492d.put(i15, i16);
            if (i17 == i16) {
                this.f76491c.m315z(i11);
                return 0;
            } else if (i16 != ((i17 + 1) & 15)) {
                abstractC27260c0.mo614a();
            }
        }
        int i18 = i14;
        if (z2) {
            int m326o = this.f76491c.m326o();
            i18 = i14 | ((this.f76491c.m326o() & 64) != 0 ? 2 : 0);
            this.f76491c.m341A(m326o - 1);
        }
        boolean z3 = this.f76501m;
        if (this.f76489a == 2 || z3 || !this.f76496h.get(i15, false)) {
            this.f76491c.m316y(i11);
            abstractC27260c0.mo612c(this.f76491c, i18);
            this.f76491c.m316y(i13);
        }
        if (this.f76489a != 2 && !z3 && this.f76501m && j != -1) {
            this.f76503o = true;
        }
        this.f76491c.m315z(i11);
        return 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
