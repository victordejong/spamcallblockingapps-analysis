package p193e.p194a.p1113o4;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.AssertionUtil;
import com.truecaller.push.PushIdDto;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p678d4.AbstractC12603e;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import x3.a0;
/* renamed from: e.a.o4.f */
/* loaded from: classes12-dex2jar.jar:e/a/o4/f.class */
public final class C18924f implements AbstractC18923e {

    /* renamed from: a */
    public final a<AbstractC8432l> f53060a;

    /* renamed from: b */
    public final f f53061b;

    /* renamed from: c */
    public final a<AbstractC18926g> f53062c;

    /* renamed from: d */
    public final a<AbstractC19462a> f53063d;

    @e(c = "com.truecaller.push.PushIdManagerImpl$registerPushIdAsync$1", f = "PushIdManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.o4.f$a */
    /* loaded from: classes12-dex2jar.jar:e/a/o4/f$a.class */
    public static final class C18925a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ C18922d f53065f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18925a(C18922d c18922d, d dVar) {
            super(2, dVar);
            C18924f.this = r5;
            this.f53065f = c18922d;
        }

        /* renamed from: i */
        public final d<s> m14318i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18925a(this.f53065f, dVar);
        }

        /* renamed from: k */
        public final Object m14317k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18924f c18924f = C18924f.this;
            C18922d c18922d = this.f53065f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c18924f.mo14322a(c18922d);
            return sVar;
        }

        /* renamed from: s */
        public final Object m14316s(Object obj) {
            C25225a.m3932a3(obj);
            C18924f.this.mo14322a(this.f53065f);
            return s.a;
        }
    }

    @Inject
    public C18924f(a<AbstractC8432l> aVar, @Named("IO") f fVar, a<AbstractC18926g> aVar2, a<AbstractC19462a> aVar3) {
        l.e(aVar, "accountManager");
        l.e(fVar, "bgCouritineContext");
        l.e(aVar2, "pushIdProvider");
        l.e(aVar3, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f53060a = aVar;
        this.f53061b = fVar;
        this.f53062c = aVar2;
        this.f53063d = aVar3;
    }

    @Override // p193e.p194a.p1113o4.AbstractC18923e
    /* renamed from: a */
    public boolean mo14322a(C18922d c18922d) {
        if (!((AbstractC8432l) this.f53060a.get()).mo28580d()) {
            return false;
        }
        if (c18922d == null) {
            c18922d = ((AbstractC18926g) this.f53062c.get()).mo14315a();
        }
        if (c18922d == null) {
            m14319d(AbstractC18923e.class.getName() + ": push ID is NULL");
            C10480a.m26061I1(new C18919a());
            return false;
        }
        m14319d(AbstractC18923e.class.getName() + ": push ID for registration: " + c18922d);
        a0 a0Var = null;
        try {
            PushIdDto m16087c = C17422k.m16087c(c18922d);
            l.e(m16087c, AnalyticsConstants.TOKEN);
            a0Var = ((AbstractC18929j) C8367d.m28633a(KnownEndpoints.PUSHID, AbstractC18929j.class)).m14314a(m16087c).execute();
        } catch (SecurityException e) {
            AssertionUtil.shouldNeverHappen(e, new String[0]);
        } catch (Exception e2) {
            C10480a.m26061I1(e2);
        }
        boolean z = false;
        if (a0Var != null) {
            z = false;
            if (a0Var.b()) {
                m14319d(AbstractC18923e.class.getName() + ": push ID is registered: " + c18922d);
                if (l.a(c18922d.f53059b, AbstractC12603e.C12604a.f36737c)) {
                    ((AbstractC19462a) this.f53063d.get()).mo13273c(c18922d.f53058a);
                }
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1113o4.AbstractC18923e
    /* renamed from: b */
    public boolean mo14321b() {
        return ((AbstractC8432l) this.f53060a.get()).mo28580d();
    }

    @Override // p193e.p194a.p1113o4.AbstractC18923e
    /* renamed from: c */
    public void mo14320c(C18922d c18922d) {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f53061b, (j0) null, new C18925a(c18922d, null), 2, (Object) null);
    }

    /* renamed from: d */
    public final void m14319d(String str) {
        C18479b.m14875a(str);
    }
}
