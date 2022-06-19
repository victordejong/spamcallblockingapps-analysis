package p193e.p194a.p294b.p336i;

import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.callMeBack.data.models.CallMeBackResponse;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.AbstractC7910e;
import p193e.p194a.p294b.p336i.p338i.AbstractC7928a;
import p193e.p194a.p294b.p336i.p338i.C7929b;
import p193e.p194a.p294b.p336i.p338i.C7931d;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.i.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/d.class */
public final class C7920d implements AbstractC7919c, i0 {

    /* renamed from: a */
    public final AbstractC7910e f24539a;

    /* renamed from: b */
    public final AbstractC7928a f24540b;

    /* renamed from: c */
    public final f f24541c;

    @e(c = "com.truecaller.bizmon.callMeBack.BizMonCallMeBackManagerImpl$clearCallMeBackCache$1", f = "BizMonCallMeBackManager.kt", l = {80}, m = "invokeSuspend")
    /* renamed from: e.a.b.i.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/i/d$a.class */
    public static final class C7921a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f24542e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7921a(d dVar) {
            super(2, dVar);
            C7920d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29115i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7921a(dVar);
        }

        /* renamed from: k */
        public final Object m29114k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7921a(dVar).m29113s(s.a);
        }

        /* renamed from: s */
        public final Object m29113s(Object obj) {
            a aVar = s.a;
            a aVar2 = a.a;
            int i = this.f24542e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7928a abstractC7928a = C7920d.this.f24540b;
                this.f24542e = 1;
                a mo29095a = ((C7931d) abstractC7928a).f24563a.mo29095a(this);
                if (mo29095a != aVar2) {
                    mo29095a = aVar;
                }
                if (mo29095a == aVar2) {
                    return aVar2;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return aVar;
        }
    }

    @e(c = "com.truecaller.bizmon.callMeBack.BizMonCallMeBackManagerImpl", f = "BizMonCallMeBackManager.kt", l = {51}, m = "shouldShowCallMeBack")
    /* renamed from: e.a.b.i.d$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/i/d$b.class */
    public static final class C7922b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f24544d;

        /* renamed from: e */
        public int f24545e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7922b(d dVar) {
            super(dVar);
            C7920d.this = r4;
        }

        /* renamed from: s */
        public final Object m29112s(Object obj) {
            this.f24544d = obj;
            this.f24545e |= Integer.MIN_VALUE;
            return C7920d.this.mo29121a(null, false, null, this);
        }
    }

    @Inject
    public C7920d(AbstractC7910e abstractC7910e, C20592g c20592g, AbstractC7928a abstractC7928a, @Named("IO") f fVar) {
        l.e(abstractC7910e, "bizmonManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC7928a, "enterpriseFeedbackRepository");
        l.e(fVar, "asyncContext");
        this.f24539a = abstractC7910e;
        this.f24540b = abstractC7928a;
        this.f24541c = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd  */
    @Override // p193e.p194a.p294b.p336i.AbstractC7919c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29121a(java.lang.String r10, boolean r11, java.lang.String r12, s1.w.d<? super java.lang.Boolean> r13) {
        /*
            r9 = this;
            r0 = r13
            boolean r0 = r0 instanceof p193e.p194a.p294b.p336i.C7920d.C7922b
            if (r0 == 0) goto L2f
            r0 = r13
            e.a.b.i.d$b r0 = (p193e.p194a.p294b.p336i.C7920d.C7922b) r0
            r14 = r0
            r0 = r14
            int r0 = r0.f24545e
            r15 = r0
            r0 = r15
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r14
            r1 = r15
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f24545e = r1
            r0 = r14
            r13 = r0
            goto L3b
        L2f:
            e.a.b.i.d$b r0 = new e.a.b.i.d$b
            r1 = r0
            r2 = r9
            r3 = r13
            r1.<init>(r3)
            r13 = r0
        L3b:
            r0 = r13
            java.lang.Object r0 = r0.f24544d
            r14 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r16 = r0
            r0 = r13
            int r0 = r0.f24545e
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L6e
            r0 = r15
            r1 = 1
            if (r0 != r1) goto L64
            r0 = r14
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r14
            r10 = r0
            goto La9
        L64:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6e:
            r0 = r14
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            e.a.b.i.i.a r0 = r0.f24540b
            r14 = r0
            r0 = r13
            r1 = 1
            r0.f24545e = r1
            r0 = r14
            e.a.b.i.i.d r0 = (p193e.p194a.p294b.p336i.p338i.C7931d) r0
            r14 = r0
            r0 = r14
            s1.w.f r0 = r0.f24567e
            e.a.b.i.i.c r1 = new e.a.b.i.i.c
            r2 = r1
            r3 = r14
            r4 = r10
            r5 = r12
            r6 = r11
            r7 = 0
            r2.<init>(r3, r4, r5, r6, r7)
            r2 = r13
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = r16
            if (r0 != r1) goto La9
            r0 = r16
            return r0
        La9:
            r0 = r10
            e.a.b.i.j.b.a r0 = (p193e.p194a.p294b.p336i.p340j.p342b.C7943a) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Lbd
            r0 = r10
            boolean r0 = r0.f24574b
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r10 = r0
            goto Lbf
        Lbd:
            r0 = 0
            r10 = r0
        Lbf:
            r0 = r10
            boolean r0 = p193e.p194a.p682e.C12864a2.m22540r(r0)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p336i.C7920d.mo29121a(java.lang.String, boolean, java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7919c
    /* renamed from: b */
    public Object mo29120b(String str, d<? super CallMeBackResponse> dVar) {
        C7931d c7931d = (C7931d) this.f24540b;
        return s1.a.a.a.v0.f.d.a4(c7931d.f24567e, new C7929b(c7931d, str, null), dVar);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7919c
    /* renamed from: c */
    public void mo29119c() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7921a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7919c
    /* renamed from: d */
    public String mo29118d() {
        return this.f24539a.mo29125d();
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7919c
    /* renamed from: e */
    public boolean mo29117e(Contact contact, HistoryEvent historyEvent) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(historyEvent, "historyEvent");
        String m35566G = contact.m35566G();
        boolean z = false;
        if (!(m35566G == null || m35566G.length() == 0)) {
            z = false;
            if (C17891a1.C17902k.m15668J0(contact)) {
                z = false;
                if (!contact.m35495t0()) {
                    z = false;
                    if (historyEvent.f11550q == 3) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7919c
    /* renamed from: f */
    public void mo29116f(String str) {
        l.e(str, "number");
        this.f24539a.mo29123f(str);
    }

    public f getCoroutineContext() {
        return this.f24541c;
    }
}
