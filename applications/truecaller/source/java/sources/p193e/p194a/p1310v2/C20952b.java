package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.g;
import s1.u.i;
import s1.u.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v2.b */
/* loaded from: classes5-dex2jar.jar:e/a/v2/b.class */
public final class C20952b implements AbstractC20951a {

    /* renamed from: a */
    public final g f58901a;

    /* renamed from: b */
    public final C20592g f58902b;

    /* renamed from: e.a.v2.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/b$a.class */
    public static final class C20953a extends m implements a<AbstractC12603e> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC12597c f58903b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20953a(AbstractC12597c abstractC12597c) {
            super(0);
            this.f58903b = abstractC12597c;
        }

        public Object invoke() {
            return (AbstractC12603e) i.C(this.f58903b.mo22841c());
        }
    }

    @Inject
    public C20952b(AbstractC12597c abstractC12597c, C20592g c20592g) {
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(c20592g, "featuresRegistry");
        this.f58902b = c20592g;
        this.f58901a = C25225a.m3978P1(new C20953a(abstractC12597c));
    }

    @Override // p193e.p194a.p1310v2.AbstractC20951a
    /* renamed from: a */
    public boolean mo10447a() {
        boolean z;
        if (l.a(m10470c(), AbstractC12603e.C12605b.f36738c)) {
            C20592g c20592g = this.f58902b;
            C20592g.C20593a c20593a = c20592g.f58029t2;
            s1.a.l<?>[] lVarArr = C20592g.f57695p6;
            if (c20593a.m10941a(c20592g, lVarArr[175]).isEnabled()) {
                C20592g c20592g2 = this.f58902b;
                if (c20592g2.f58037u3.m10941a(c20592g2, lVarArr[230]).isEnabled()) {
                    z = true;
                }
            }
            z = false;
        } else {
            C20592g c20592g3 = this.f58902b;
            z = c20592g3.f58029t2.m10941a(c20592g3, C20592g.f57695p6[175]).isEnabled();
        }
        return z;
    }

    @Override // p193e.p194a.p1310v2.AbstractC20951a
    /* renamed from: b */
    public List<AttestationEngine> mo10446b() {
        List<AttestationEngine> list = s.a;
        if (mo10447a()) {
            AbstractC12603e m10470c = m10470c();
            AbstractC12603e.C12604a c12604a = AbstractC12603e.C12604a.f36737c;
            if (l.a(m10470c, c12604a)) {
                C20592g c20592g = this.f58902b;
                if (c20592g.f58036u2.m10941a(c20592g, C20592g.f57695p6[176]).isEnabled()) {
                    list = i.T(new AttestationEngine[]{AttestationEngine.SAFETY_NET, AttestationEngine.PLAY_INTEGRITY});
                }
            }
            if (l.a(m10470c(), c12604a)) {
                list = C25225a.m3962T1(AttestationEngine.SAFETY_NET);
            } else if (l.a(m10470c(), AbstractC12603e.C12605b.f36738c)) {
                list = C25225a.m3962T1(AttestationEngine.SAFETY_DETECT);
            }
        }
        return list;
    }

    /* renamed from: c */
    public final AbstractC12603e m10470c() {
        return (AbstractC12603e) this.f58901a.getValue();
    }
}
