package p193e.p194a.p1365y.p1391i;

import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import s1.z.c.l;
/* renamed from: e.a.y.i.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/i/a.class */
public final class C21751a {

    /* renamed from: a */
    public final AbstractC21626w f60578a;

    public C21751a(AbstractC21626w abstractC21626w) {
        l.e(abstractC21626w, "preferenceUtil");
        this.f60578a = abstractC21626w;
    }

    /* renamed from: a */
    public final int m9122a(long j, int i) {
        int i2;
        if (j == 0) {
            i2 = 1;
        } else if ((i & 8) == 8 && j == 10) {
            i2 = 8;
        } else if ((i & 2) == 2 && (j - 3) % 6 == 0) {
            i2 = 2;
        } else {
            if ((i & 4) == 4) {
                long j2 = 6;
                if ((j - j2) % j2 == 0) {
                    i2 = 4;
                }
            }
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: b */
    public final void m9121b(int i) {
        this.f60578a.mo9340l("receive_tooltips", Integer.valueOf((i ^ (-1)) & this.f60578a.getInt("receive_tooltips", 15)));
    }

    /* renamed from: c */
    public final void m9120c(int i) {
        this.f60578a.mo9340l("send_tooltips", Integer.valueOf((i ^ (-1)) & this.f60578a.getInt("send_tooltips", 15)));
    }
}
