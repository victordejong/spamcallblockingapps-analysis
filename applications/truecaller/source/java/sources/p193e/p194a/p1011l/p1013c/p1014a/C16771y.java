package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.y */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/y.class */
public final class C16771y {

    /* renamed from: a */
    public final C16767x f47004a;

    /* renamed from: b */
    public final C16770x2 f47005b;

    /* renamed from: c */
    public final long f47006c;

    public C16771y(C16767x c16767x, C16770x2 c16770x2, long j) {
        this.f47004a = c16767x;
        this.f47005b = c16770x2;
        this.f47006c = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16771y)) {
                return false;
            }
            C16771y c16771y = (C16771y) obj;
            return l.a(this.f47004a, c16771y.f47004a) && l.a(this.f47005b, c16771y.f47005b) && this.f47006c == c16771y.f47006c;
        }
        return true;
    }

    public int hashCode() {
        C16767x c16767x = this.f47004a;
        int i = 0;
        int hashCode = c16767x != null ? c16767x.hashCode() : 0;
        C16770x2 c16770x2 = this.f47005b;
        if (c16770x2 != null) {
            i = c16770x2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + C4876d.m34274a(this.f47006c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CountDownTimerSpec(countDownTextSpec=");
        m8728C.append(this.f47004a);
        m8728C.append(", offerEndTextSpec=");
        m8728C.append(this.f47005b);
        m8728C.append(", countDownTimeInFuture=");
        return C22128a.m8693K2(m8728C, this.f47006c, ")");
    }
}
