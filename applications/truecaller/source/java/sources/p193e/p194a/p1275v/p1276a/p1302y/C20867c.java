package p193e.p194a.p1275v.p1276a.p1302y;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17642m;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.AbstractC15212n;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p862c.p866d.C15055l;
import p193e.p194a.p852i.p896f0.AbstractC15161a;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.y.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/y/c.class */
public final class C20867c extends AbstractC20574a<AbstractC20866b> implements AbstractC20865a {

    /* renamed from: d */
    public boolean f58642d;

    /* renamed from: e */
    public Contact f58643e;

    /* renamed from: g */
    public boolean f58645g;

    /* renamed from: i */
    public final f f58647i;

    /* renamed from: j */
    public final AbstractC20874h f58648j;

    /* renamed from: k */
    public final C20592g f58649k;

    /* renamed from: f */
    public final g f58644f = C25225a.m3978P1(new C20869b());

    /* renamed from: h */
    public final C20868a f58646h = new C20868a();

    /* renamed from: e.a.v.a.y.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/y/c$a.class */
    public static final class C20868a extends AbstractC15212n {
        public C20868a() {
            C20867c.this = r4;
        }

        @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.p862c.p866d.AbstractC15046i
        /* renamed from: a */
        public void mo10600a(AbstractC15003c abstractC15003c) {
            l.e(abstractC15003c, "ad");
            C20867c c20867c = C20867c.this;
            if (c20867c.f58642d) {
                AbstractC20866b abstractC20866b = (AbstractC20866b) c20867c.f57683a;
                if (abstractC20866b != null) {
                    abstractC20866b.mo10606I3(abstractC15003c, ((C20875i) c20867c.f58648j).f58664g.mo10578a());
                }
                ((C20875i) C20867c.this.f58648j).m10596e(true);
            }
        }

        @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.AbstractC15211m
        public void onAdLoaded() {
            C20867c c20867c = C20867c.this;
            if (c20867c.f58642d) {
                c20867c.m10611Jj();
            }
        }
    }

    /* renamed from: e.a.v.a.y.c$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/y/c$b.class */
    public static final class C20869b extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20869b() {
            super(0);
            C20867c.this = r4;
        }

        public Object invoke() {
            C20592g c20592g = C20867c.this.f58649k;
            return Boolean.valueOf(c20592g.f57708B4.m10941a(c20592g, C20592g.f57695p6[291]).isEnabled());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20867c(@Named("UI") f fVar, AbstractC20874h abstractC20874h, C20592g c20592g) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20874h, "detailsAdsLoader");
        l.e(c20592g, "featuresRegistry");
        this.f58647i = fVar;
        this.f58648j = abstractC20874h;
        this.f58649k = c20592g;
    }

    /* renamed from: Ij */
    public final void m10612Ij(boolean z) {
        CharSequence charSequence;
        if (((C20875i) this.f58648j).f58664g.mo10577b()) {
            if (!m10610Kj(z)) {
                ((C20875i) this.f58648j).m10596e(!z);
                this.f58642d = z;
                if (!z) {
                    return;
                }
                C20875i c20875i = (C20875i) this.f58648j;
                c20875i.f58664g.mo10573f().mo19266d((C15055l) c20875i.f58662e.getValue(), c20875i, false);
                m10611Jj();
                return;
            }
            AbstractC20866b abstractC20866b = (AbstractC20866b) this.f57683a;
            if (abstractC20866b != null) {
                abstractC20866b.mo10604S1();
            }
            Contact contact = this.f58643e;
            if (contact == null) {
                return;
            }
            C20875i c20875i2 = (C20875i) this.f58648j;
            Objects.requireNonNull(c20875i2);
            l.e(contact, AnalyticsConstants.CONTACT);
            if (contact.m35492v0() && !contact.m35574A0()) {
                charSequence = RemoteMessageConst.Notification.PRIORITY;
            } else if (!contact.m35565G0()) {
                return;
            } else {
                charSequence = "verified_business";
            }
            Schema schema = C17642m.f49779f;
            C17642m.C17644b c17644b = new C17642m.C17644b(null);
            c17644b.m15896c(charSequence);
            c17644b.m15895d("DetailsScreen");
            c17644b.m15897b(false);
            C17642m build = c17644b.build();
            AbstractC15161a mo10574e = c20875i2.f58664g.mo10574e();
            l.d(build, "event");
            mo10574e.m19101d(build);
        }
    }

    /* renamed from: Jj */
    public final void m10611Jj() {
        C20875i c20875i = (C20875i) this.f58648j;
        AbstractC15183d mo10571h = c20875i.f58664g.mo10571h(c20875i.m10598c());
        if (mo10571h != null) {
            AbstractC20866b abstractC20866b = (AbstractC20866b) this.f57683a;
            if (abstractC20866b != null) {
                abstractC20866b.mo10601i6(mo10571h, c20875i.f58664g.mo10578a());
            }
            c20875i.m10596e(true);
        }
    }

    /* renamed from: Kj */
    public final boolean m10610Kj(boolean z) {
        boolean z2;
        if (((Boolean) this.f58644f.getValue()).booleanValue() && z) {
            if (((C20875i) this.f58648j).m10595f(this.f58643e)) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        C20875i c20875i = (C20875i) this.f58648j;
        c20875i.f58664g.mo10569j(c20875i.m10598c(), c20875i);
        c20875i.f58664g.mo10573f().cancel();
        c20875i.f58658a = null;
        c20875i.f58667j.reset();
        super.mo9806c();
    }
}
