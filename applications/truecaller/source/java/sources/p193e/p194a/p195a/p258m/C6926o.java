package p193e.p194a.p195a.p258m;

import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.l;
import w3.b.a.b;
@e(c = "com.truecaller.messaging.promo.InboxCleanerSpamTabPresenter$onBindItem$1", f = "PromoPresenter.kt", l = {179, 180}, m = "invokeSuspend")
/* renamed from: e.a.a.m.o */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/o.class */
public final class C6926o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f22530e;

    /* renamed from: f */
    public Object f22531f;

    /* renamed from: g */
    public int f22532g;

    /* renamed from: h */
    public final /* synthetic */ C6932p f22533h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC6923n1 f22534i;

    @e(c = "com.truecaller.messaging.promo.InboxCleanerSpamTabPresenter$onBindItem$1$1", f = "PromoPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.m.o$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/o$a.class */
    public static final class C6927a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ a0 f22536f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6927a(a0 a0Var, d dVar) {
            super(2, dVar);
            C6926o.this = r5;
            this.f22536f = a0Var;
        }

        /* renamed from: i */
        public final d<s> m30374i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6927a(this.f22536f, dVar);
        }

        /* renamed from: k */
        public final Object m30373k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6926o c6926o = C6926o.this;
            a0 a0Var = this.f22536f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC6923n1 abstractC6923n1 = c6926o.f22534i;
            String mo13768b = c6926o.f22533h.f22541e.mo13768b(C2752R.string.SpamTabBannerTitle, new Integer(a0Var.a));
            l.d(mo13768b, "resourceProvider.getStri…abBannerTitle, spamCount)");
            abstractC6923n1.setTitle(mo13768b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m30372s(Object obj) {
            C25225a.m3932a3(obj);
            C6926o c6926o = C6926o.this;
            AbstractC6923n1 abstractC6923n1 = c6926o.f22534i;
            String mo13768b = c6926o.f22533h.f22541e.mo13768b(C2752R.string.SpamTabBannerTitle, new Integer(this.f22536f.a));
            l.d(mo13768b, "resourceProvider.getStri…abBannerTitle, spamCount)");
            abstractC6923n1.setTitle(mo13768b);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6926o(C6932p c6932p, AbstractC6923n1 abstractC6923n1, d dVar) {
        super(2, dVar);
        this.f22533h = c6932p;
        this.f22534i = abstractC6923n1;
    }

    /* renamed from: i */
    public final d<s> m30377i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6926o(this.f22533h, this.f22534i, dVar);
    }

    /* renamed from: k */
    public final Object m30376k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6926o(this.f22533h, this.f22534i, dVar).m30375s(s.a);
    }

    /* renamed from: s */
    public final Object m30375s(Object obj) {
        Object obj2;
        a0 a0Var;
        a0 a0Var2;
        a aVar = a.a;
        int i = this.f22532g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            a0 a0Var3 = new a0();
            AbstractC6005m abstractC6005m = this.f22533h.f22542f;
            b y = new b().y(30);
            l.d(y, "DateTime.now().minusDays(INBOX_CLEANUP_DAYS_30)");
            long j = ((w3.b.a.e0.e) y).a;
            this.f22530e = a0Var3;
            this.f22531f = a0Var3;
            this.f22532g = 1;
            obj2 = abstractC6005m.mo32051f(j, this);
            if (obj2 == aVar) {
                return aVar;
            }
            a0Var = a0Var3;
            a0Var2 = a0Var3;
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            a0Var2 = (a0) this.f22531f;
            a0Var = (a0) this.f22530e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        a0Var2.a = ((Number) obj2).intValue();
        f fVar = this.f22533h.f22544h;
        C6927a c6927a = new C6927a(a0Var, null);
        this.f22530e = null;
        this.f22531f = null;
        this.f22532g = 2;
        if (s1.a.a.a.v0.f.d.a4(fVar, c6927a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
