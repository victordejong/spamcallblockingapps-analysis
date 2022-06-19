package p193e.p194a.p1080o.p1103p.p1108e;

import com.truecaller.contextcall.p159db.reason.CallReason;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.AbstractC18700b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
/* renamed from: e.a.o.p.e.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/e/f.class */
public final class C18869f implements AbstractC18868e {

    /* renamed from: a */
    public final a<AbstractC18860c> f52952a;

    /* renamed from: b */
    public final AbstractC18700b f52953b;

    /* renamed from: c */
    public final f f52954c;

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonRepositoryImpl$addNewCallReason$2", f = "CallReasonRepository.kt", l = {36, 41}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.f$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/f$a.class */
    public static final class C18870a extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public Object f52955e;

        /* renamed from: f */
        public int f52956f;

        /* renamed from: h */
        public final /* synthetic */ String f52958h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18870a(String str, d dVar) {
            super(1, dVar);
            C18869f.this = r5;
            this.f52958h = str;
        }

        /* renamed from: d */
        public final Object m14377d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18870a(this.f52958h, dVar).m14375s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14376l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18870a(this.f52958h, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m14375s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 208
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1103p.p1108e.C18869f.C18870a.m14375s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonRepositoryImpl$getCallReasonCountBlocking$1", f = "CallReasonRepository.kt", l = {60}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.f$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/f$b.class */
    public static final class C18871b extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f52959e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18871b(d dVar) {
            super(2, dVar);
            C18869f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14374i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18871b(dVar);
        }

        /* renamed from: k */
        public final Object m14373k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C18871b(dVar).m14372s(s.a);
        }

        /* renamed from: s */
        public final Object m14372s(Object obj) {
            Integer num;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52959e;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f52959e = 1;
                    Object mo14401d = ((AbstractC18860c) C18869f.this.f52952a.get()).mo14401d(this);
                    obj = mo14401d;
                    if (mo14401d == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                num = (Integer) obj;
            } catch (Exception e) {
                num = null;
            }
            return num;
        }
    }

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonRepositoryImpl$removeCallReason$2", f = "CallReasonRepository.kt", l = {69}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.f$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/f$c.class */
    public static final class C18872c extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f52961e;

        /* renamed from: g */
        public final /* synthetic */ CallReason f52963g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18872c(CallReason callReason, d dVar) {
            super(1, dVar);
            C18869f.this = r5;
            this.f52963g = callReason;
        }

        /* renamed from: d */
        public final Object m14371d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18872c(this.f52963g, dVar).m14369s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14370l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18872c(this.f52963g, dVar);
        }

        /* renamed from: s */
        public final Object m14369s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52961e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18860c abstractC18860c = (AbstractC18860c) C18869f.this.f52952a.get();
                CallReason callReason = this.f52963g;
                this.f52961e = 1;
                if (abstractC18860c.mo14402c(callReason, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C18869f(a<AbstractC18860c> aVar, AbstractC18700b abstractC18700b, @Named("IO") f fVar) {
        s1.z.c.l.e(aVar, "callReasonDbHelper");
        s1.z.c.l.e(abstractC18700b, "messageFactory");
        s1.z.c.l.e(fVar, "iOContext");
        this.f52952a = aVar;
        this.f52953b = abstractC18700b;
        this.f52954c = fVar;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e
    /* renamed from: a */
    public Object mo14383a(d<? super List<CallReason>> dVar) {
        return ((AbstractC18860c) this.f52952a.get()).mo14404a(dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e
    /* renamed from: b */
    public Object mo14382b(CallReason callReason, d<? super s> dVar) {
        s sVar = s.a;
        String str = s1.w.j.a.a;
        String mo14621a = this.f52953b.mo14621a(callReason.getReasonText());
        if (mo14621a == null) {
            return mo14621a == str ? mo14621a : sVar;
        }
        Object mo14403b = ((AbstractC18860c) this.f52952a.get()).mo14403b(CallReason.copy$default(callReason, 0, mo14621a, 1, null), dVar);
        return mo14403b == str ? mo14403b : sVar;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e
    /* renamed from: c */
    public Object mo14381c(CallReason callReason, d<? super s> dVar) {
        Object m15625b1 = C17891a1.C17902k.m15625b1(this.f52954c, new C18872c(callReason, null), dVar);
        return m15625b1 == s1.w.j.a.a ? m15625b1 : s.a;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e
    /* renamed from: d */
    public Object mo14380d(d<? super Integer> dVar) {
        return ((AbstractC18860c) this.f52952a.get()).mo14401d(dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e
    /* renamed from: e */
    public Object mo14379e(String str, d<? super s> dVar) {
        Object m15625b1 = C17891a1.C17902k.m15625b1(this.f52954c, new C18870a(str, null), dVar);
        return m15625b1 == s1.w.j.a.a ? m15625b1 : s.a;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e
    /* renamed from: f */
    public Integer mo14378f() {
        return (Integer) s1.a.a.a.v0.f.d.c3((f) null, new C18871b(null), 1, (Object) null);
    }
}
