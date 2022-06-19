package p000;

import p193e.p194a.p619d.p622b.p623a.C11087b;
import p193e.p194a.p619d.p637c0.AbstractC11471s;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: j2 */
/* loaded from: classes5-dex2jar.jar:j2.class */
public final class C25342j2 extends m implements l<AbstractC11471s, s> {

    /* renamed from: b */
    public final /* synthetic */ int f70746b;

    /* renamed from: c */
    public final /* synthetic */ Object f70747c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25342j2(int i, Object obj) {
        super(1);
        this.f70746b = i;
        this.f70747c = obj;
    }

    /* renamed from: d */
    public final Object m3703d(Object obj) {
        s sVar = s.a;
        int i = this.f70746b;
        if (i == 0) {
            AbstractC11471s abstractC11471s = (AbstractC11471s) obj;
            s1.z.c.l.e(abstractC11471s, "state");
            ((l) this.f70747c).d(abstractC11471s);
            return sVar;
        } else if (i != 1) {
            throw null;
        } else {
            AbstractC11471s abstractC11471s2 = (AbstractC11471s) obj;
            s1.z.c.l.e(abstractC11471s2, "state");
            if (abstractC11471s2.mo24629a()) {
                ((C11087b) this.f70747c).m25270ak();
            } else if ((abstractC11471s2 instanceof AbstractC11471s.C11474c) || (abstractC11471s2 instanceof AbstractC11471s.C11473b)) {
                ((C11087b) this.f70747c).m25265fk(true);
            } else if (abstractC11471s2 instanceof AbstractC11471s.C11472a) {
                ((C11087b) this.f70747c).m25265fk(false);
            }
            return sVar;
        }
    }
}
