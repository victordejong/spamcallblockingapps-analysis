package p193e.p1577m.p1578a.p1596c.p1622m1.p1624n;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1624n.C24587b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
/* renamed from: e.m.a.c.m1.n.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/n/a.class */
public final class C24586a extends AbstractC24563c {

    /* renamed from: n */
    public final C24587b f68782n;

    public C24586a(List<byte[]> list) {
        super("DvbDecoder");
        byte[] bArr = list.get(0);
        int length = bArr.length;
        int i = 0 + 1;
        byte b = bArr[0];
        int i2 = i + 1;
        this.f68782n = new C24587b(((b & 255) << 8) | (bArr[i] & 255), (bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) {
        C24596c c24596c;
        List list;
        C24587b.C24593f c24593f;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (z) {
            C24587b.C24595h c24595h = this.f68782n.f68791f;
            c24595h.f68826c.clear();
            c24595h.f68827d.clear();
            c24595h.f68828e.clear();
            c24595h.f68829f.clear();
            c24595h.f68830g.clear();
            c24595h.f68831h = null;
            c24595h.f68832i = null;
        }
        C24596c c24596c2 = c24596c;
        C24587b c24587b = this.f68782n;
        Objects.requireNonNull(c24587b);
        C24797s c24797s = new C24797s(bArr, i);
        while (c24797s.m4560b() >= 48 && c24797s.m4556f(8) == 15) {
            C24587b.C24595h c24595h2 = c24587b.f68791f;
            int m4556f = c24797s.m4556f(8);
            int m4556f2 = c24797s.m4556f(16);
            int m4556f3 = c24797s.m4556f(16);
            C26232y.m2286x(c24797s.f69502c == 0);
            int i8 = c24797s.f69501b;
            if (m4556f3 * 8 > c24797s.m4560b()) {
                c24797s.m4550l(c24797s.m4560b());
            } else {
                switch (m4556f) {
                    case 16:
                        if (m4556f2 == c24595h2.f68824a) {
                            C24587b.C24591d c24591d = c24595h2.f68832i;
                            int m4556f4 = c24797s.m4556f(8);
                            int m4556f5 = c24797s.m4556f(4);
                            int m4556f6 = c24797s.m4556f(2);
                            c24797s.m4550l(2);
                            int i9 = m4556f3 - 2;
                            SparseArray sparseArray = new SparseArray();
                            while (i9 > 0) {
                                int m4556f7 = c24797s.m4556f(8);
                                c24797s.m4550l(8);
                                i9 -= 6;
                                sparseArray.put(m4556f7, new C24587b.C24592e(c24797s.m4556f(16), c24797s.m4556f(16)));
                            }
                            C24587b.C24591d c24591d2 = new C24587b.C24591d(m4556f4, m4556f5, m4556f6, sparseArray);
                            if (m4556f6 != 0) {
                                c24595h2.f68832i = c24591d2;
                                c24595h2.f68826c.clear();
                                c24595h2.f68827d.clear();
                                c24595h2.f68828e.clear();
                                break;
                            } else if (c24591d != null && c24591d.f68807a != m4556f5) {
                                c24595h2.f68832i = c24591d2;
                                break;
                            }
                        }
                        break;
                    case 17:
                        C24587b.C24591d c24591d3 = c24595h2.f68832i;
                        if (m4556f2 == c24595h2.f68824a && c24591d3 != null) {
                            int m4556f8 = c24797s.m4556f(8);
                            c24797s.m4550l(4);
                            boolean m4557e = c24797s.m4557e();
                            c24797s.m4550l(3);
                            int m4556f9 = c24797s.m4556f(16);
                            int m4556f10 = c24797s.m4556f(16);
                            int m4556f11 = c24797s.m4556f(3);
                            int m4556f12 = c24797s.m4556f(3);
                            c24797s.m4550l(2);
                            int m4556f13 = c24797s.m4556f(8);
                            int m4556f14 = c24797s.m4556f(8);
                            int m4556f15 = c24797s.m4556f(4);
                            int m4556f16 = c24797s.m4556f(2);
                            c24797s.m4550l(2);
                            int i10 = m4556f3 - 10;
                            SparseArray sparseArray2 = new SparseArray();
                            while (i10 > 0) {
                                int m4556f17 = c24797s.m4556f(16);
                                int m4556f18 = c24797s.m4556f(2);
                                int m4556f19 = c24797s.m4556f(2);
                                int m4556f20 = c24797s.m4556f(12);
                                c24797s.m4550l(4);
                                int m4556f21 = c24797s.m4556f(12);
                                i10 -= 6;
                                if (m4556f18 == 1 || m4556f18 == 2) {
                                    int m4556f22 = c24797s.m4556f(8);
                                    i2 = c24797s.m4556f(8);
                                    i3 = m4556f22;
                                    i10 -= 2;
                                } else {
                                    i3 = 0;
                                    i2 = 0;
                                }
                                sparseArray2.put(m4556f17, new C24587b.C24594g(m4556f18, m4556f19, m4556f20, m4556f21, i3, i2));
                            }
                            C24587b.C24593f c24593f2 = new C24587b.C24593f(m4556f8, m4557e, m4556f9, m4556f10, m4556f11, m4556f12, m4556f13, m4556f14, m4556f15, m4556f16, sparseArray2);
                            if (c24591d3.f68808b == 0 && (c24593f = c24595h2.f68826c.get(m4556f8)) != null) {
                                SparseArray<C24587b.C24594g> sparseArray3 = c24593f.f68821j;
                                for (int i11 = 0; i11 < sparseArray3.size(); i11++) {
                                    c24593f2.f68821j.put(sparseArray3.keyAt(i11), sparseArray3.valueAt(i11));
                                }
                            }
                            c24595h2.f68826c.put(c24593f2.f68812a, c24593f2);
                            break;
                        }
                        break;
                    case 18:
                        if (m4556f2 == c24595h2.f68824a) {
                            C24587b.C24588a m4866f = C24587b.m4866f(c24797s, m4556f3);
                            c24595h2.f68827d.put(m4866f.f68793a, m4866f);
                            break;
                        } else if (m4556f2 == c24595h2.f68825b) {
                            C24587b.C24588a m4866f2 = C24587b.m4866f(c24797s, m4556f3);
                            c24595h2.f68829f.put(m4866f2.f68793a, m4866f2);
                            break;
                        }
                        break;
                    case 19:
                        if (m4556f2 == c24595h2.f68824a) {
                            C24587b.C24590c m4865g = C24587b.m4865g(c24797s);
                            c24595h2.f68828e.put(m4865g.f68803a, m4865g);
                            break;
                        } else if (m4556f2 == c24595h2.f68825b) {
                            C24587b.C24590c m4865g2 = C24587b.m4865g(c24797s);
                            c24595h2.f68830g.put(m4865g2.f68803a, m4865g2);
                            break;
                        }
                        break;
                    case 20:
                        if (m4556f2 == c24595h2.f68824a) {
                            c24797s.m4550l(4);
                            boolean m4557e2 = c24797s.m4557e();
                            c24797s.m4550l(3);
                            int m4556f23 = c24797s.m4556f(16);
                            int m4556f24 = c24797s.m4556f(16);
                            if (m4557e2) {
                                int m4556f25 = c24797s.m4556f(16);
                                int m4556f26 = c24797s.m4556f(16);
                                i5 = c24797s.m4556f(16);
                                i6 = c24797s.m4556f(16);
                                i4 = m4556f25;
                                i7 = m4556f26;
                            } else {
                                i7 = m4556f23;
                                i6 = m4556f24;
                                i4 = 0;
                                i5 = 0;
                            }
                            c24595h2.f68831h = new C24587b.C24589b(m4556f23, m4556f24, i4, i7, i5, i6);
                            break;
                        }
                        break;
                }
                C26232y.m2286x(c24797s.f69502c == 0);
                int i12 = c24797s.f69501b;
                C26232y.m2286x(c24797s.f69502c == 0);
                c24797s.f69501b += (i8 + m4556f3) - i12;
                c24797s.m4561a();
            }
        }
        C24587b.C24595h c24595h3 = c24587b.f68791f;
        C24587b.C24591d c24591d4 = c24595h3.f68832i;
        if (c24591d4 == null) {
            list = Collections.emptyList();
        } else {
            C24587b.C24589b c24589b = c24595h3.f68831h;
            if (c24589b == null) {
                c24589b = c24587b.f68789d;
            }
            Bitmap bitmap = c24587b.f68792g;
            if (bitmap == null || c24589b.f68797a + 1 != bitmap.getWidth() || c24589b.f68798b + 1 != c24587b.f68792g.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(c24589b.f68797a + 1, c24589b.f68798b + 1, Bitmap.Config.ARGB_8888);
                c24587b.f68792g = createBitmap;
                c24587b.f68788c.setBitmap(createBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray<C24587b.C24592e> sparseArray4 = c24591d4.f68809c;
            int i13 = 0;
            while (i13 < sparseArray4.size()) {
                c24587b.f68788c.save();
                C24587b.C24592e valueAt = sparseArray4.valueAt(i13);
                C24587b.C24593f c24593f3 = c24587b.f68791f.f68826c.get(sparseArray4.keyAt(i13));
                int i14 = valueAt.f68810a + c24589b.f68799c;
                int i15 = valueAt.f68811b + c24589b.f68801e;
                c24587b.f68788c.clipRect(i14, i15, Math.min(c24593f3.f68814c + i14, c24589b.f68800d), Math.min(c24593f3.f68815d + i15, c24589b.f68802f));
                C24587b.C24588a c24588a = c24587b.f68791f.f68827d.get(c24593f3.f68817f);
                C24587b.C24588a c24588a2 = c24588a;
                if (c24588a == null) {
                    C24587b.C24588a c24588a3 = c24587b.f68791f.f68829f.get(c24593f3.f68817f);
                    c24588a2 = c24588a3;
                    if (c24588a3 == null) {
                        c24588a2 = c24587b.f68790e;
                    }
                }
                SparseArray<C24587b.C24594g> sparseArray5 = c24593f3.f68821j;
                int i16 = i13;
                for (int i17 = 0; i17 < sparseArray5.size(); i17++) {
                    int keyAt = sparseArray5.keyAt(i17);
                    C24587b.C24594g valueAt2 = sparseArray5.valueAt(i17);
                    C24587b.C24590c c24590c = c24587b.f68791f.f68828e.get(keyAt);
                    C24587b.C24590c c24590c2 = c24590c;
                    if (c24590c == null) {
                        c24590c2 = c24587b.f68791f.f68830g.get(keyAt);
                    }
                    if (c24590c2 != null) {
                        Paint paint = c24590c2.f68804b ? null : c24587b.f68786a;
                        int i18 = c24593f3.f68816e;
                        int i19 = valueAt2.f68822a + i14;
                        int i20 = valueAt2.f68823b + i15;
                        Canvas canvas = c24587b.f68788c;
                        int[] iArr = i18 == 3 ? c24588a2.f68796d : i18 == 2 ? c24588a2.f68795c : c24588a2.f68794b;
                        C24587b.m4867e(c24590c2.f68805c, iArr, i18, i19, i20, paint, canvas);
                        C24587b.m4867e(c24590c2.f68806d, iArr, i18, i19, i20 + 1, paint, canvas);
                    }
                }
                if (c24593f3.f68813b) {
                    int i21 = c24593f3.f68816e;
                    c24587b.f68787b.setColor(i21 == 3 ? c24588a2.f68796d[c24593f3.f68818g] : i21 == 2 ? c24588a2.f68795c[c24593f3.f68819h] : c24588a2.f68794b[c24593f3.f68820i]);
                    c24587b.f68788c.drawRect(i14, i15, c24593f3.f68814c + i14, c24593f3.f68815d + i15, c24587b.f68787b);
                }
                Bitmap createBitmap2 = Bitmap.createBitmap(c24587b.f68792g, i14, i15, c24593f3.f68814c, c24593f3.f68815d);
                float f = i14;
                float f2 = c24589b.f68797a;
                float f3 = f / f2;
                float f4 = i15;
                float f5 = c24589b.f68798b;
                arrayList.add(new C24562b(createBitmap2, f3, 0, f4 / f5, 0, c24593f3.f68814c / f2, c24593f3.f68815d / f5));
                c24587b.f68788c.drawColor(0, PorterDuff.Mode.CLEAR);
                c24587b.f68788c.restore();
                i13 = i16 + 1;
            }
            c24596c2 = c24596c2;
            list = Collections.unmodifiableList(arrayList);
        }
        new C24596c(list);
        return c24596c2;
    }
}
