package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
/* renamed from: e.m.a.c.g1.e0.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/g.class */
public final class C24370g implements AbstractC24361c0.AbstractC24364c {

    /* renamed from: a */
    public final int f67839a;

    /* renamed from: b */
    public final List<Format> f67840b;

    public C24370g(int i) {
        List<Format> singletonList = Collections.singletonList(Format.m39249l(null, "application/cea-608", 0, null, null));
        this.f67839a = i;
        this.f67840b = singletonList;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0.AbstractC24364c
    /* renamed from: a */
    public AbstractC24361c0 mo5195a(int i, AbstractC24361c0.C24363b c24363b) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new C24386r(new C24384p(c24363b.f67784b));
            }
            if (i == 15) {
                return m5192d(2) ? null : new C24386r(new C24369f(false, c24363b.f67784b));
            } else if (i == 17) {
                return m5192d(2) ? null : new C24386r(new C24383o(c24363b.f67784b));
            } else if (i == 21) {
                return new C24386r(new C24382n());
            } else {
                if (i == 27) {
                    return m5192d(4) ? null : new C24386r(new C24376l(new C24395x(m5193c(c24363b)), m5192d(1), m5192d(8)));
                } else if (i == 36) {
                    return new C24386r(new C24380m(new C24395x(m5193c(c24363b))));
                } else {
                    if (i == 89) {
                        return new C24386r(new C24372i(c24363b.f67785c));
                    }
                    if (i != 138) {
                        if (i == 172) {
                            return new C24386r(new C24366d(c24363b.f67784b));
                        }
                        if (i != 129) {
                            if (i != 130) {
                                if (i == 134) {
                                    return m5192d(16) ? null : new C24394w(new C24396y());
                                } else if (i != 135) {
                                    return null;
                                }
                            } else if (!m5192d(64)) {
                                return null;
                            }
                        }
                        return new C24386r(new C24356b(c24363b.f67784b));
                    }
                    return new C24386r(new C24371h(c24363b.f67784b));
                }
            }
        }
        return new C24386r(new C24374k(new C24367d0(m5193c(c24363b))));
    }

    /* renamed from: b */
    public SparseArray<AbstractC24361c0> m5194b() {
        return new SparseArray<>();
    }

    /* renamed from: c */
    public final List<Format> m5193c(AbstractC24361c0.C24363b c24363b) {
        int i;
        String str;
        List list;
        if (m5192d(32)) {
            return this.f67840b;
        }
        byte[] bArr = c24363b.f67786d;
        int length = bArr.length;
        ArrayList arrayList = this.f67840b;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (length - i3 <= 0) {
                return arrayList;
            }
            int i4 = i3 + 1;
            byte b = bArr[i3];
            int i5 = i4 + 1;
            int i6 = (bArr[i4] & 255) + i5;
            if ((b & 255) == 134) {
                ArrayList arrayList2 = new ArrayList();
                int i7 = i5 + 1;
                byte b2 = bArr[i5];
                int i8 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i8 >= (b2 & 255 & 31)) {
                        break;
                    }
                    String str2 = new String(bArr, i7, 3, Charset.forName(StringConstant.UTF8));
                    int i9 = i7 + 3;
                    int i10 = i9 + 1;
                    int i11 = bArr[i9] & 255;
                    boolean z = (i11 & 128) != 0;
                    if (z) {
                        i = i11 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte b3 = (byte) (bArr[i10] & 255);
                    int i12 = i10 + 1 + 1;
                    C26232y.m2310r(i12 >= 0 && i12 <= length);
                    if (z) {
                        list = Collections.singletonList(new byte[]{(byte) ((b3 & 64) != 0 ? 1 : 0)});
                    } else {
                        list = null;
                    }
                    arrayList2.add(Format.m39248m(null, str, null, -1, 0, str2, i, null, RecyclerView.FOREVER_NS, list));
                    i8++;
                    i7 = i12;
                }
            }
            C26232y.m2310r(i6 >= 0 && i6 <= length);
            i2 = i6;
        }
    }

    /* renamed from: d */
    public final boolean m5192d(int i) {
        return (i & this.f67839a) != 0;
    }
}
