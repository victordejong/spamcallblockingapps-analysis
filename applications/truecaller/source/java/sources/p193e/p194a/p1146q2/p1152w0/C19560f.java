package p193e.p194a.p1146q2.p1152w0;

import com.truecaller.analytics.call.BlockingAction;
import com.truecaller.analytics.call.CallAnswered;
import com.truecaller.analytics.call.CallDirection;
import com.truecaller.analytics.call.CallProvider;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.analytics.call.CallAnalyticsImpl$registerListeners$2$1", f = "CallAnalytics.kt", l = {250, 252}, m = "invokeSuspend")
/* renamed from: e.a.q2.w0.f */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/f.class */
public final class C19560f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f54385e;

    /* renamed from: f */
    public Object f54386f;

    /* renamed from: g */
    public Object f54387g;

    /* renamed from: h */
    public Object f54388h;

    /* renamed from: i */
    public Object f54389i;

    /* renamed from: j */
    public Object f54390j;

    /* renamed from: k */
    public int f54391k;

    /* renamed from: l */
    public final /* synthetic */ C19561g f54392l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19560f(C19561g c19561g, d dVar) {
        super(2, dVar);
        this.f54392l = c19561g;
    }

    /* renamed from: i */
    public final d<s> m13159i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19560f(this.f54392l, dVar);
    }

    /* renamed from: k */
    public final Object m13158k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19560f(this.f54392l, dVar).m13157s(s.a);
    }

    /* renamed from: s */
    public final Object m13157s(Object obj) {
        Object obj2;
        C19553b c19553b;
        String str;
        CallProvider callProvider;
        CallAnswered callAnswered;
        String str2;
        CallDirection callDirection;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f54391k;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C19561g c19561g = this.f54392l;
            c19553b = c19561g.f54393b;
            str = c19561g.f54394c.getNumber();
            callDirection = this.f54392l.f54394c.mo13151b();
            callProvider = CallProvider.INCALLUI;
            callAnswered = this.f54392l.f54394c.mo13149d();
            str2 = this.f54392l.f54394c.mo13148e();
            AbstractC19571j abstractC19571j = this.f54392l.f54394c;
            this.f54385e = c19553b;
            this.f54386f = str;
            this.f54387g = callDirection;
            this.f54388h = callProvider;
            this.f54389i = callAnswered;
            this.f54390j = str2;
            this.f54391k = 1;
            obj2 = abstractC19571j.mo13145h(this);
            if (obj2 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return sVar;
        } else {
            str2 = (String) this.f54390j;
            callAnswered = (CallAnswered) this.f54389i;
            callProvider = (CallProvider) this.f54388h;
            CallDirection callDirection2 = (CallDirection) this.f54387g;
            str = (String) this.f54386f;
            c19553b = (C19553b) this.f54385e;
            C25225a.m3932a3(obj);
            obj2 = obj;
            callDirection = callDirection2;
        }
        long mo13142k = this.f54392l.f54394c.mo13142k();
        long mo13144i = this.f54392l.f54394c.mo13144i();
        this.f54385e = null;
        this.f54386f = null;
        this.f54387g = null;
        this.f54388h = null;
        this.f54389i = null;
        this.f54390j = null;
        this.f54391k = 2;
        s a4 = s1.a.a.a.v0.f.d.a4(c19553b.f54341c, new C19558d(c19553b, str, null, str2, callDirection, callProvider, callAnswered, (BlockingAction) obj2, mo13142k, mo13144i, null), this);
        if (a4 != aVar) {
            a4 = sVar;
        }
        if (a4 == aVar) {
            return aVar;
        }
        return sVar;
    }
}
