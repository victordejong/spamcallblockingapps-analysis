package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.g;
import s1.u.i;
import s1.u.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v2.r */
/* loaded from: classes5-dex2jar.jar:e/a/v2/r.class */
public final class C20984r implements AbstractC20951a {

    /* renamed from: a */
    public final g f58953a;

    /* renamed from: e.a.v2.r$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/r$a.class */
    public static final class C20985a extends m implements a<AbstractC12603e> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC12597c f58954b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20985a(AbstractC12597c abstractC12597c) {
            super(0);
            this.f58954b = abstractC12597c;
        }

        public Object invoke() {
            return (AbstractC12603e) i.C(this.f58954b.mo22841c());
        }
    }

    @Inject
    public C20984r(AbstractC12597c abstractC12597c) {
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f58953a = C25225a.m3978P1(new C20985a(abstractC12597c));
    }

    @Override // p193e.p194a.p1310v2.AbstractC20951a
    /* renamed from: a */
    public boolean mo10447a() {
        return ((AbstractC12603e) this.f58953a.getValue()) != null;
    }

    @Override // p193e.p194a.p1310v2.AbstractC20951a
    /* renamed from: b */
    public List<AttestationEngine> mo10446b() {
        List list;
        AbstractC12603e abstractC12603e = (AbstractC12603e) this.f58953a.getValue();
        if (l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            list = C25225a.m3962T1(AttestationEngine.SAFETY_NET);
        } else if (l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            list = C25225a.m3962T1(AttestationEngine.SAFETY_DETECT);
        } else if (abstractC12603e != null) {
            throw new s1.i();
        } else {
            list = s.a;
        }
        return list;
    }
}
