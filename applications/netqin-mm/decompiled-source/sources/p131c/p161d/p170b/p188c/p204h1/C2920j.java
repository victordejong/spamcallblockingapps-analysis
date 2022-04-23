package p131c.p161d.p170b.p188c.p204h1;

import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.h1.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/j.class */
public final class C2920j {

    /* renamed from: a */
    public final List<byte[]> f10570a;

    /* renamed from: b */
    public final int f10571b;

    public C2920j(List<byte[]> list, int i) {
        this.f10570a = list;
        this.f10571b = i;
    }

    /* renamed from: a */
    public static C2920j m28495a(C2904v vVar) throws ParserException {
        try {
            vVar.m28536f(21);
            int r = vVar.m28524r();
            int r2 = vVar.m28524r();
            int c = vVar.m28543c();
            int i = 0;
            for (int i2 = 0; i2 < r2; i2++) {
                vVar.m28536f(1);
                int x = vVar.m28518x();
                for (int i3 = 0; i3 < x; i3++) {
                    int x2 = vVar.m28518x();
                    i += x2 + 4;
                    vVar.m28536f(x2);
                }
            }
            vVar.m28538e(c);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < r2; i5++) {
                vVar.m28536f(1);
                int x3 = vVar.m28518x();
                for (int i6 = 0; i6 < x3; i6++) {
                    int x4 = vVar.m28518x();
                    System.arraycopy(C2899s.f10506a, 0, bArr, i4, C2899s.f10506a.length);
                    int length = i4 + C2899s.f10506a.length;
                    System.arraycopy(vVar.f10530a, vVar.m28543c(), bArr, length, x4);
                    i4 = length + x4;
                    vVar.m28536f(x4);
                }
            }
            return new C2920j(i == 0 ? null : Collections.singletonList(bArr), (r & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
