package p193e.p1545k.p1546a.p1548b.p1549a0;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23350e;
/* renamed from: e.k.a.b.a0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/d.class */
public class C23349d extends C23350e.C23353c {

    /* renamed from: e */
    public static final String f64573e;

    /* renamed from: f */
    public static final C23349d f64574f;

    /* renamed from: b */
    public final char[] f64575b;

    /* renamed from: c */
    public final int f64576c;

    /* renamed from: d */
    public final String f64577d;

    static {
        String str;
        try {
            str = System.getProperty("line.separator");
        } catch (Throwable th) {
            str = StringConstant.NEW_LINE;
        }
        f64573e = str;
        f64574f = new C23349d("  ", str);
    }

    public C23349d(String str, String str2) {
        this.f64576c = str.length();
        this.f64575b = new char[str.length() * 16];
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            str.getChars(0, str.length(), this.f64575b, i);
            i += str.length();
        }
        this.f64577d = str2;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.C23353c, p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.AbstractC23352b
    /* renamed from: h */
    public boolean mo7246h() {
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.C23353c, p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.AbstractC23352b
    /* renamed from: i */
    public void mo7245i(AbstractC23372g abstractC23372g, int i) throws IOException {
        abstractC23372g.mo5842s1(this.f64577d);
        if (i > 0) {
            int i2 = i * this.f64576c;
            while (true) {
                int i3 = i2;
                char[] cArr = this.f64575b;
                if (i3 <= cArr.length) {
                    abstractC23372g.mo5832z1(cArr, 0, i3);
                    return;
                } else {
                    abstractC23372g.mo5832z1(cArr, 0, cArr.length);
                    i2 = i3 - this.f64575b.length;
                }
            }
        }
    }
}
