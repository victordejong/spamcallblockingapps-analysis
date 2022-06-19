package p193e.p194a.p1080o.p1103p.p1108e;

import com.truecaller.contextcall.p159db.ContextCallDatabase;
import com.truecaller.contextcall.p159db.reason.CallReason;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.p.e.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d.class */
public final class C18861d implements AbstractC18860c {

    /* renamed from: a */
    public final g f52935a = C25225a.m3978P1(new C18862a());

    /* renamed from: b */
    public final ContextCallDatabase f52936b;

    /* renamed from: c */
    public final f f52937c;

    /* renamed from: e.a.o.p.e.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d$a.class */
    public static final class C18862a extends m implements a<AbstractC18850a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18862a() {
            super(0);
            C18861d.this = r4;
        }

        public Object invoke() {
            return C18861d.this.f52936b.mo35592a();
        }
    }

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonDbHelperImpl$getCallReasonCount$2", f = "CallReasonDbHelper.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.d$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d$b.class */
    public static final class C18863b extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f52939e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18863b(d dVar) {
            super(2, dVar);
            C18861d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14398i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18863b(dVar);
        }

        /* renamed from: k */
        public final Object m14397k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18863b(dVar).m14396s(s.a);
        }

        /* renamed from: s */
        public final Object m14396s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52939e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18850a m14399f = C18861d.m14399f(C18861d.this);
                this.f52939e = 1;
                Object mo14408b = m14399f.mo14408b(this);
                obj = mo14408b;
                if (mo14408b == aVar) {
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

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonDbHelperImpl$getCallReasons$2", f = "CallReasonDbHelper.kt", l = {35}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.d$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d$c.class */
    public static final class C18864c extends i implements p<i0, d<? super List<? extends CallReason>>, Object> {

        /* renamed from: e */
        public int f52941e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18864c(d dVar) {
            super(2, dVar);
            C18861d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14395i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18864c(dVar);
        }

        /* renamed from: k */
        public final Object m14394k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18864c(dVar).m14393s(s.a);
        }

        /* renamed from: s */
        public final Object m14393s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52941e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18850a m14399f = C18861d.m14399f(C18861d.this);
                this.f52941e = 1;
                Object mo14409a = m14399f.mo14409a(this);
                obj = mo14409a;
                if (mo14409a == aVar) {
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

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonDbHelperImpl$insertCallReason$2", f = "CallReasonDbHelper.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.d$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d$d.class */
    public static final class C18865d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52943e;

        /* renamed from: g */
        public final /* synthetic */ CallReason f52945g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18865d(CallReason callReason, d dVar) {
            super(2, dVar);
            C18861d.this = r5;
            this.f52945g = callReason;
        }

        /* renamed from: i */
        public final d<s> m14392i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18865d(this.f52945g, dVar);
        }

        /* renamed from: k */
        public final Object m14391k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18865d(this.f52945g, dVar).m14390s(s.a);
        }

        /* renamed from: s */
        public final Object m14390s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52943e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18850a m14399f = C18861d.m14399f(C18861d.this);
                CallReason callReason = this.f52945g;
                this.f52943e = 1;
                if (m14399f.mo14407c(callReason, this) == aVar) {
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

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonDbHelperImpl$removeCallReason$2", f = "CallReasonDbHelper.kt", l = {47}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.d$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d$e.class */
    public static final class C18866e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52946e;

        /* renamed from: g */
        public final /* synthetic */ CallReason f52948g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18866e(CallReason callReason, d dVar) {
            super(2, dVar);
            C18861d.this = r5;
            this.f52948g = callReason;
        }

        /* renamed from: i */
        public final d<s> m14389i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18866e(this.f52948g, dVar);
        }

        /* renamed from: k */
        public final Object m14388k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18866e(this.f52948g, dVar).m14387s(s.a);
        }

        /* renamed from: s */
        public final Object m14387s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52946e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18850a m14399f = C18861d.m14399f(C18861d.this);
                CallReason callReason = this.f52948g;
                this.f52946e = 1;
                if (m14399f.mo14406d(callReason, this) == aVar) {
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

    @e(c = "com.truecaller.contextcall.db.reason.CallReasonDbHelperImpl$updateCallReason$2", f = "CallReasonDbHelper.kt", l = {43}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.d$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/d$f.class */
    public static final class C18867f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52949e;

        /* renamed from: g */
        public final /* synthetic */ CallReason f52951g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18867f(CallReason callReason, d dVar) {
            super(2, dVar);
            C18861d.this = r5;
            this.f52951g = callReason;
        }

        /* renamed from: i */
        public final d<s> m14386i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18867f(this.f52951g, dVar);
        }

        /* renamed from: k */
        public final Object m14385k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18867f(this.f52951g, dVar).m14384s(s.a);
        }

        /* renamed from: s */
        public final Object m14384s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52949e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18850a m14399f = C18861d.m14399f(C18861d.this);
                CallReason callReason = this.f52951g;
                this.f52949e = 1;
                if (m14399f.mo14405e(callReason, this) == aVar) {
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
    public C18861d(ContextCallDatabase contextCallDatabase, @Named("IO") f fVar) {
        l.e(contextCallDatabase, "callContextDatabase");
        l.e(fVar, "iOContext");
        this.f52936b = contextCallDatabase;
        this.f52937c = fVar;
    }

    /* renamed from: f */
    public static final AbstractC18850a m14399f(C18861d c18861d) {
        return (AbstractC18850a) c18861d.f52935a.getValue();
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18860c
    /* renamed from: a */
    public Object mo14404a(d<? super List<CallReason>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f52937c, new C18864c(null), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18860c
    /* renamed from: b */
    public Object mo14403b(CallReason callReason, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f52937c, new C18867f(callReason, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18860c
    /* renamed from: c */
    public Object mo14402c(CallReason callReason, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f52937c, new C18866e(callReason, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18860c
    /* renamed from: d */
    public Object mo14401d(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f52937c, new C18863b(null), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18860c
    /* renamed from: e */
    public Object mo14400e(CallReason callReason, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f52937c, new C18865d(callReason, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }
}
