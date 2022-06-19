package p193e.p194a.p1124p;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.wizard.framework.WizardStartContext;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p372b0.p406e.AbstractC8417d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.C8415b;
import p193e.p194a.p751f4.p752a.AbstractC13945b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
/* renamed from: e.a.p.d */
/* loaded from: classes9-dex2jar.jar:e/a/p/d.class */
public final class C19189d implements AbstractC19188c {

    /* renamed from: a */
    public final Context f53558a;

    /* renamed from: e.a.p.d$a */
    /* loaded from: classes9-dex2jar.jar:e/a/p/d$a.class */
    public static final class C19190a<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ l f53559a;

        public C19190a(l lVar) {
            this.f53559a = lVar;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            this.f53559a.d(bool);
        }
    }

    @e(c = "com.truecaller.editprofile.EditProfileAccountHelperImpl$deleteSecondaryPhoneNumber$2", f = "EditProfileAccountHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.p.d$b */
    /* loaded from: classes9-dex2jar.jar:e/a/p/d$b.class */
    public static final class C19191b extends i implements p<i0, d<? super AbstractC8417d>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19191b(d dVar) {
            super(2, dVar);
            C19189d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13890i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C19191b(dVar);
        }

        /* renamed from: k */
        public final Object m13889k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C19189d c19189d = C19189d.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c19189d.m13893h().mo28565s();
        }

        /* renamed from: s */
        public final Object m13888s(Object obj) {
            C25225a.m3932a3(obj);
            return C19189d.this.m13893h().mo28565s();
        }
    }

    @e(c = "com.truecaller.editprofile.EditProfileAccountHelperImpl", f = "EditProfileAccountHelperImpl.kt", l = {59}, m = "maybeRefreshAccountPhoneNumbers")
    /* renamed from: e.a.p.d$c */
    /* loaded from: classes9-dex2jar.jar:e/a/p/d$c.class */
    public static final class C19192c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f53561d;

        /* renamed from: e */
        public int f53562e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19192c(d dVar) {
            super(dVar);
            C19189d.this = r4;
        }

        /* renamed from: s */
        public final Object m13887s(Object obj) {
            this.f53561d = obj;
            this.f53562e |= Integer.MIN_VALUE;
            return C19189d.this.mo13900a(this);
        }
    }

    @e(c = "com.truecaller.editprofile.EditProfileAccountHelperImpl$maybeRefreshAccountPhoneNumbers$2", f = "EditProfileAccountHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.p.d$d */
    /* loaded from: classes9-dex2jar.jar:e/a/p/d$d.class */
    public static final class C19193d extends i implements p<i0, d<? super Boolean>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19193d(d dVar) {
            super(2, dVar);
            C19189d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13886i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C19193d(dVar);
        }

        /* renamed from: k */
        public final Object m13885k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C19189d c19189d = C19189d.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(c19189d.m13893h().mo28572l());
        }

        /* renamed from: s */
        public final Object m13884s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(C19189d.this.m13893h().mo28572l());
        }
    }

    public C19189d(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f53558a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo13900a(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1124p.C19189d.C19192c
            if (r0 == 0) goto L25
            r0 = r6
            e.a.p.d$c r0 = (p193e.p194a.p1124p.C19189d.C19192c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f53562e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f53562e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.p.d$c r0 = new e.a.p.d$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f53561d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f53562e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L9f
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.b0.e.b r0 = r0.mo13896e()
            if (r0 != 0) goto L6b
            r0 = 0
            r10 = r0
            goto La8
        L6b:
            r0 = r5
            e.a.j2 r0 = r0.m13891j()
            s1.w.f r0 = r0.mo12315k6()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "graph.asyncIoCoroutineContext()"
            s1.z.c.l.d(r0, r1)
            e.a.p.d$d r0 = new e.a.p.d$d
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f53562e = r1
            r0 = r11
            r1 = r7
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L9f
            r0 = r9
            return r0
        L9f:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r10 = r0
        La8:
            r0 = r10
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.C19189d.mo13900a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: b */
    public Object mo13899b(d<? super AbstractC8417d> dVar) {
        f mo12315k6 = m13891j().mo12315k6();
        s1.z.c.l.d(mo12315k6, "graph.asyncIoCoroutineContext()");
        return s1.a.a.a.v0.f.d.a4(mo12315k6, new C19191b(null), dVar);
    }

    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: c */
    public Intent mo13898c() {
        Intent ua = e.a.r.t.c.ua(this.f53558a, WizardActivity.class);
        s1.z.c.l.d(ua, "Wizard.getWizardSecondar…zardActivity::class.java)");
        return ua;
    }

    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: d */
    public void mo13897d() {
        m13892i();
        if (!m13892i().mo28540W()) {
            m13892i().mo28536a0(false);
            e.a.r.t.c.Ga(this.f53558a, WizardActivity.class, WizardStartContext.EDIT_PROFILE);
        }
    }

    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: e */
    public C8415b mo13896e() {
        return m13893h().mo28579e();
    }

    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: f */
    public AbstractC19844a mo13895f(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "action");
        AbstractC19854f<AbstractC13945b> mo12790B4 = m13891j().mo12790B4();
        s1.z.c.l.d(mo12790B4, "graph.accountNetworkManager()");
        AbstractC19891x<Boolean> mo20950b = mo12790B4.mo11854a().mo20950b(false);
        AbstractC19870l mo12119z1 = m13891j().mo12119z1();
        s1.z.c.l.d(mo12119z1, "graph.actorsThreads()");
        AbstractC19844a mo11830e = mo20950b.mo11830e(mo12119z1.mo11845d(), new C19190a(lVar));
        s1.z.c.l.d(mo11830e, "accountNetworkManager.te…     action(it)\n        }");
        return mo11830e;
    }

    @Override // p193e.p194a.p1124p.AbstractC19188c
    /* renamed from: g */
    public C8415b mo13894g() {
        return m13893h().mo28577g();
    }

    /* renamed from: h */
    public final AbstractC8432l m13893h() {
        AbstractC8432l mo12809A = m13891j().mo12809A();
        s1.z.c.l.d(mo12809A, "graph.accountManager()");
        return mo12809A;
    }

    /* renamed from: i */
    public final TrueApp m13892i() {
        TrueApp m36032b0 = TrueApp.m36032b0();
        s1.z.c.l.d(m36032b0, "TrueApp.getApp()");
        return m36032b0;
    }

    /* renamed from: j */
    public final AbstractC15539j2 m13891j() {
        AbstractC15539j2 mo10154s = m13892i().mo10154s();
        s1.z.c.l.d(mo10154s, "app.objectsGraph");
        return mo10154s;
    }
}
