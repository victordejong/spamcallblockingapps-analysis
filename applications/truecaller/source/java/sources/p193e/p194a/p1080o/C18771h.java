package p193e.p194a.p1080o;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1041l0.AbstractC17352g;
import p193e.p194a.p703e3.AbstractC13348a;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.h */
/* loaded from: classes8-dex2jar.jar:e/a/o/h.class */
public final class C18771h implements AbstractC18769f {

    /* renamed from: a */
    public final g f52734a = C25225a.m3978P1(new C18773b());

    /* renamed from: b */
    public final g f52735b = C25225a.m3978P1(new C18772a());

    /* renamed from: c */
    public final f f52736c;

    /* renamed from: d */
    public final a<InitiateCallHelper> f52737d;

    /* renamed from: e */
    public final a<C16461b> f52738e;

    /* renamed from: f */
    public final Context f52739f;

    /* renamed from: e.a.o.h$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/h$a.class */
    public static final class C18772a extends m implements s1.z.b.a<AbstractC13348a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18772a() {
            super(0);
            C18771h.this = r4;
        }

        public Object invoke() {
            Context context = C18771h.this.f52739f;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) context).mo10154s().mo12161w();
        }
    }

    /* renamed from: e.a.o.h$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/h$b.class */
    public static final class C18773b extends m implements s1.z.b.a<AbstractC17352g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18773b() {
            super(0);
            C18771h.this = r4;
        }

        public Object invoke() {
            Context context = C18771h.this.f52739f;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) context).mo10154s().mo12404e2();
        }
    }

    @e(c = "com.truecaller.contextcall.ContextCallSupportImpl", f = "ContextCallSupportImpl.kt", l = {62}, m = "getCallDuration")
    /* renamed from: e.a.o.h$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/h$c.class */
    public static final class C18774c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52742d;

        /* renamed from: e */
        public int f52743e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18774c(d dVar) {
            super(dVar);
            C18771h.this = r4;
        }

        /* renamed from: s */
        public final Object m14493s(Object obj) {
            this.f52742d = obj;
            this.f52743e |= Integer.MIN_VALUE;
            return C18771h.this.m14494b(null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.ContextCallSupportImpl$getCallDuration$2", f = "ContextCallSupportImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.o.h$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/h$d.class */
    public static final class C18775d extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f52746f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18775d(String str, d dVar) {
            super(2, dVar);
            C18771h.this = r5;
            this.f52746f = str;
        }

        /* renamed from: i */
        public final d<s> m14492i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18775d(this.f52746f, dVar);
        }

        /* renamed from: k */
        public final Object m14491k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18771h c18771h = C18771h.this;
            String str = this.f52746f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Integer mo11831c = ((AbstractC17352g) c18771h.f52734a.getValue()).mo16206o(str).mo11831c();
            if (mo11831c == null) {
                mo11831c = new Integer(0);
            }
            return mo11831c;
        }

        /* renamed from: s */
        public final Object m14490s(Object obj) {
            C25225a.m3932a3(obj);
            Integer mo11831c = ((AbstractC17352g) C18771h.this.f52734a.getValue()).mo16206o(this.f52746f).mo11831c();
            if (mo11831c == null) {
                mo11831c = new Integer(0);
            }
            return mo11831c;
        }
    }

    @Inject
    public C18771h(@Named("IO") f fVar, a<InitiateCallHelper> aVar, a<C16461b> aVar2, Context context) {
        l.e(fVar, "ioContext");
        l.e(aVar, "initiateCallHelper");
        l.e(aVar2, "aggregatedContactDao");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f52736c = fVar;
        this.f52737d = aVar;
        this.f52738e = aVar2;
        this.f52739f = context;
    }

    /* renamed from: a */
    public void m14495a(InitiateCallHelper.CallOptions callOptions) {
        l.e(callOptions, "callOptions");
        ((InitiateCallHelper) this.f52737d.get()).m35744b(callOptions);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m14494b(java.lang.String r7, s1.w.d<? super java.lang.Integer> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p1080o.C18771h.C18774c
            if (r0 == 0) goto L28
            r0 = r8
            e.a.o.h$c r0 = (p193e.p194a.p1080o.C18771h.C18774c) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f52743e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52743e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.o.h$c r0 = new e.a.o.h$c
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f52742d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f52743e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L8b
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            s1.w.f r0 = r0.f52736c
            r9 = r0
            e.a.o.h$d r0 = new e.a.o.h$d
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f52743e = r1
            r0 = r9
            r1 = r7
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L8b
            r0 = r11
            return r0
        L8b:
            r0 = r7
            java.lang.String r1 = "withContext(ioContext) {…dNumber).get() ?: 0\n    }"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.C18771h.m14494b(java.lang.String, s1.w.d):java.lang.Object");
    }
}
