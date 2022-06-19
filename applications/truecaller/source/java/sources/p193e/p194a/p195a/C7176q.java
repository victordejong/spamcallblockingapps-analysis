package p193e.p194a.p195a;

import p193e.p194a.p1129p5.AbstractC19230g;
import s1.z.c.l;
/* renamed from: e.a.a.q */
/* loaded from: classes10-dex2jar.jar:e/a/a/q.class */
public final class C7176q implements AbstractC7156p {

    /* renamed from: a */
    public volatile String f23069a;

    /* renamed from: b */
    public final AbstractC19230g f23070b;

    public C7176q(AbstractC19230g abstractC19230g) {
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f23070b = abstractC19230g;
    }

    @Override // p193e.p194a.p195a.AbstractC7156p
    /* renamed from: a */
    public void mo30020a() {
        synchronized (this) {
            this.f23069a = this.f23070b.mo13799E();
        }
    }

    @Override // p193e.p194a.p195a.AbstractC7156p
    public String getName() {
        String str;
        if (this.f23070b.mo13780q() >= 24) {
            if (this.f23069a == null) {
                synchronized (this) {
                    if (this.f23069a == null) {
                        this.f23069a = this.f23070b.mo13799E();
                    }
                }
            }
            str = this.f23069a;
        } else {
            str = this.f23070b.mo13799E();
        }
        return str;
    }
}
