package p193e.p194a.p1195s.p1211r;

import java.util.LinkedHashSet;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
/* renamed from: e.a.s.r.d */
/* loaded from: classes17-dex2jar.jar:e/a/s/r/d.class */
public final class C20165d implements AbstractC20164c {

    /* renamed from: a */
    public final Set<AbstractC20167e> f56827a = new LinkedHashSet();

    /* renamed from: b */
    public final f f56828b;

    @e(c = "com.truecaller.callhero_assistant.push.CallAssistantServiceValidationHelperImpl$onServiceValidated$1", f = "CallAssistantServiceValidationHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.s.r.d$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/r/d$a.class */
    public static final class C20166a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20166a(d dVar) {
            super(2, dVar);
            C20165d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11454i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20166a(dVar);
        }

        /* renamed from: k */
        public final Object m11453k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C20165d c20165d = C20165d.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            for (AbstractC20167e abstractC20167e : c20165d.f56827a) {
                abstractC20167e.mo11451j1();
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m11452s(Object obj) {
            C25225a.m3932a3(obj);
            for (AbstractC20167e abstractC20167e : C20165d.this.f56827a) {
                abstractC20167e.mo11451j1();
            }
            return s.a;
        }
    }

    @Inject
    public C20165d(@Named("UI") f fVar) {
        l.e(fVar, "uiContext");
        this.f56828b = fVar;
    }

    @Override // p193e.p194a.p1195s.p1211r.AbstractC20164c
    /* renamed from: j1 */
    public void mo11457j1() {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f56828b, (j0) null, new C20166a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1211r.AbstractC20164c
    /* renamed from: k1 */
    public void mo11456k1(AbstractC20167e abstractC20167e) {
        l.e(abstractC20167e, "listener");
        this.f56827a.remove(abstractC20167e);
    }

    @Override // p193e.p194a.p1195s.p1211r.AbstractC20164c
    /* renamed from: l1 */
    public void mo11455l1(AbstractC20167e abstractC20167e) {
        l.e(abstractC20167e, "listener");
        this.f56827a.add(abstractC20167e);
    }
}
