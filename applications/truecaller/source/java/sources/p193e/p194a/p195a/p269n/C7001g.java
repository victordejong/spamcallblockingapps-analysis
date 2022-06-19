package p193e.p194a.p195a.p269n;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p271o.AbstractC7084f;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.n.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/g.class */
public final class C7001g extends AbstractC20574a<AbstractC7000f> implements AbstractC6999e {

    /* renamed from: d */
    public long f22597d;

    /* renamed from: e */
    public final f f22598e;

    /* renamed from: f */
    public final f f22599f;

    /* renamed from: g */
    public final Conversation f22600g;

    /* renamed from: h */
    public final String f22601h;

    /* renamed from: i */
    public final boolean f22602i;

    /* renamed from: j */
    public final AbstractC19222c f22603j;

    /* renamed from: k */
    public final C6997c f22604k;

    /* renamed from: l */
    public final AbstractC6394b f22605l;

    /* renamed from: m */
    public final AbstractC7084f f22606m;

    /* renamed from: n */
    public final AbstractC7107p f22607n;

    @e(c = "com.truecaller.messaging.mediamanager.MediaManagerPresenter$updateMediaSizeTitle$1", f = "MediaManagerPresenter.kt", l = {54}, m = "invokeSuspend")
    /* renamed from: e.a.a.n.g$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/g$a.class */
    public static final class C7002a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f22608e;

        @e(c = "com.truecaller.messaging.mediamanager.MediaManagerPresenter$updateMediaSizeTitle$1$size$1", f = "MediaManagerPresenter.kt", l = {55}, m = "invokeSuspend")
        /* renamed from: e.a.a.n.g$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/n/g$a$a.class */
        public static final class C7003a extends i implements p<i0, d<? super Long>, Object> {

            /* renamed from: e */
            public int f22610e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7003a(d dVar) {
                super(2, dVar);
                C7002a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m30314i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7003a(dVar);
            }

            /* renamed from: k */
            public final Object m30313k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C7003a(dVar).m30312s(s.a);
            }

            /* renamed from: s */
            public final Object m30312s(Object obj) {
                a aVar = a.a;
                int i = this.f22610e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C7001g c7001g = C7001g.this;
                    AbstractC7084f abstractC7084f = c7001g.f22606m;
                    long j = c7001g.f22600g.f13199a;
                    this.f22610e = 1;
                    Object mo30156c = abstractC7084f.mo30156c(j, this);
                    obj = mo30156c;
                    if (mo30156c == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7002a(d dVar) {
            super(2, dVar);
            C7001g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30317i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7002a(dVar);
        }

        /* renamed from: k */
        public final Object m30316k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7002a(dVar).m30315s(s.a);
        }

        /* renamed from: s */
        public final Object m30315s(Object obj) {
            a aVar = a.a;
            int i = this.f22608e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C7001g.this.f22599f;
                C7003a c7003a = new C7003a(null);
                this.f22608e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c7003a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            long longValue = ((Number) obj).longValue();
            C7001g c7001g = C7001g.this;
            AbstractC7000f abstractC7000f = (AbstractC7000f) c7001g.f57683a;
            if (abstractC7000f != null) {
                abstractC7000f.mo30321c(c7001g.f22607n.mo30114a(longValue));
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7001g(@Named("UI") f fVar, @Named("IO") f fVar2, Conversation conversation, String str, @Named("is_delete_mode") boolean z, AbstractC19222c abstractC19222c, C6997c c6997c, AbstractC6394b abstractC6394b, AbstractC7084f abstractC7084f, AbstractC7107p abstractC7107p) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(conversation, "conversation");
        l.e(str, "analyticsContext");
        l.e(abstractC19222c, "clock");
        l.e(c6997c, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC7084f, "storageManager");
        l.e(abstractC7107p, "storageUtils");
        this.f22598e = fVar;
        this.f22599f = fVar2;
        this.f22600g = conversation;
        this.f22601h = str;
        this.f22602i = z;
        this.f22603j = abstractC19222c;
        this.f22604k = c6997c;
        this.f22605l = abstractC6394b;
        this.f22606m = abstractC7084f;
        this.f22607n = abstractC7107p;
    }

    /* renamed from: Ij */
    public void m30320Ij() {
        if (!this.f22602i) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7002a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC6999e
    /* renamed from: X7 */
    public boolean mo30319X7() {
        return !this.f22602i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.n.f] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7000f abstractC7000f) {
        AbstractC7000f abstractC7000f2 = abstractC7000f;
        l.e(abstractC7000f2, "presenterView");
        this.f57683a = abstractC7000f2;
        abstractC7000f2.setTitle(this.f22605l.mo31326n(this.f22600g));
        m30320Ij();
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC6999e
    /* renamed from: o3 */
    public void mo30318o3() {
        m30320Ij();
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC6999e
    public void onStart() {
        this.f22597d = this.f22603j.mo13821a();
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC6999e
    public void onStop() {
        long mo13821a = this.f22603j.mo13821a();
        long j = this.f22597d;
        C6997c c6997c = this.f22604k;
        Conversation conversation = this.f22600g;
        String str = this.f22601h;
        Objects.requireNonNull(c6997c);
        l.e(conversation, "conversation");
        l.e(str, AnalyticsConstants.CONTEXT);
        C19497e0 m30323a = c6997c.m30323a("MediaManagerVisited", conversation);
        m30323a.m13279c("initiatedVia", str);
        m30323a.m13277e((mo13821a - j) / 1000.0d);
        c6997c.f22592a.mo13275a(m30323a.m13281a());
    }
}
