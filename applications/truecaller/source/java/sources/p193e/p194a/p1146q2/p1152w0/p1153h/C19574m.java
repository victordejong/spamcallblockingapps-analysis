package p193e.p194a.p1146q2.p1152w0.p1153h;

import android.telecom.Call;
import com.truecaller.analytics.call.BlockingAction;
import com.truecaller.analytics.call.CallAnswered;
import com.truecaller.analytics.call.CallDirection;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p717f.p733y.C13794x;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.q2.w0.h.m */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/m.class */
public final class C19574m extends Call.Callback implements AbstractC19571j {

    /* renamed from: a */
    public CallDirection f54402a = CallDirection.OUTGOING;

    /* renamed from: b */
    public CallAnswered f54403b = CallAnswered.NO;

    /* renamed from: c */
    public String f54404c;

    /* renamed from: d */
    public a<s> f54405d;

    /* renamed from: e */
    public a<s> f54406e;

    /* renamed from: f */
    public int f54407f;

    /* renamed from: g */
    public long f54408g;

    /* renamed from: h */
    public Long f54409h;

    /* renamed from: i */
    public n0<? extends BlockingAction> f54410i;

    /* renamed from: j */
    public final f f54411j;

    /* renamed from: k */
    public final C13794x f54412k;

    /* renamed from: l */
    public final AbstractC19222c f54413l;

    /* renamed from: m */
    public final AbstractC19569h f54414m;

    /* renamed from: n */
    public final o3.a<AbstractC19563b> f54415n;

    @e(c = "com.truecaller.analytics.call.util.CallListenerImpl", f = "CallListener.kt", l = {114}, m = "fetchBlockingAction")
    /* renamed from: e.a.q2.w0.h.m$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/m$a.class */
    public static final class C19575a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54416d;

        /* renamed from: e */
        public int f54417e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19575a(d dVar) {
            super(dVar);
            C19574m.this = r4;
        }

        /* renamed from: s */
        public final Object m13141s(Object obj) {
            this.f54416d = obj;
            this.f54417e |= Integer.MIN_VALUE;
            return C19574m.this.mo13145h(this);
        }
    }

    @e(c = "com.truecaller.analytics.call.util.CallListenerImpl$onStateChanged$1", f = "CallListener.kt", l = {94}, m = "invokeSuspend")
    /* renamed from: e.a.q2.w0.h.m$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/m$b.class */
    public static final class C19576b extends i implements p<i0, d<? super BlockingAction>, Object> {

        /* renamed from: e */
        public int f54419e;

        /* renamed from: g */
        public final /* synthetic */ Call f54421g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19576b(Call call, d dVar) {
            super(2, dVar);
            C19574m.this = r5;
            this.f54421g = call;
        }

        /* renamed from: i */
        public final d<s> m13140i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19576b(this.f54421g, dVar);
        }

        /* renamed from: k */
        public final Object m13139k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19576b(this.f54421g, dVar).m13138s(s.a);
        }

        /* renamed from: s */
        public final Object m13138s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f54419e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19563b abstractC19563b = (AbstractC19563b) C19574m.this.f54415n.get();
                String m15626b0 = C17891a1.C17902k.m15626b0(this.f54421g);
                this.f54419e = 1;
                Object mo13132b = abstractC19563b.mo13132b(m15626b0, this);
                obj = mo13132b;
                if (mo13132b == aVar) {
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

    public C19574m(f fVar, C13794x c13794x, AbstractC19222c abstractC19222c, AbstractC19569h abstractC19569h, o3.a<AbstractC19563b> aVar) {
        l.e(fVar, "asyncContext");
        l.e(c13794x, "phoneCall");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19569h, "initPointProvider");
        l.e(aVar, "contactHelper");
        this.f54411j = fVar;
        this.f54412k = c13794x;
        this.f54413l = abstractC19222c;
        this.f54414m = abstractC19569h;
        this.f54415n = aVar;
        this.f54408g = abstractC19222c.mo13821a();
        this.f54404c = abstractC19569h.mo13154b(C17891a1.C17902k.m15623c0(c13794x));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
        if ((r9.longValue() > 0) != false) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13152a(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            java.lang.Long r0 = r0.f54409h
            if (r0 == 0) goto L8
            return
        L8:
            r0 = r8
            if (r0 == 0) goto L1d
            r0 = r7
            r1 = r7
            e.a.p5.c r1 = r1.f54413l
            long r1 = r1.mo13821a()
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r0.f54409h = r1
            return
        L1d:
            r0 = r7
            e.a.f.y.x r0 = r0.f54412k
            android.telecom.Call r0 = r0.f40005a
            android.telecom.Call$Details r0 = r0.getDetails()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L50
            r0 = r9
            long r0 = r0.getConnectTimeMillis()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r9 = r0
            r0 = r9
            long r0 = r0.longValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L45
            r0 = 1
            r11 = r0
            goto L48
        L45:
            r0 = 0
            r11 = r0
        L48:
            r0 = r11
            if (r0 == 0) goto L50
            goto L52
        L50:
            r0 = 0
            r9 = r0
        L52:
            r0 = r9
            if (r0 == 0) goto L7a
            r0 = r9
            long r0 = r0.longValue()
            r12 = r0
            r0 = r7
            e.a.p5.c r0 = r0.f54413l
            long r0 = r0.mo13819c()
            r14 = r0
            r0 = r7
            e.a.p5.c r0 = r0.f54413l
            long r0 = r0.mo13821a()
            r1 = r14
            r2 = r12
            long r1 = r1 - r2
            long r0 = r0 - r1
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r10 = r0
        L7a:
            r0 = r10
            if (r0 == 0) goto L83
            r0 = r7
            r1 = r10
            r0.f54409h = r1
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1152w0.p1153h.C19574m.m13152a(boolean):void");
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: b */
    public CallDirection mo13151b() {
        return this.f54402a;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: c */
    public void mo13150c(a<s> aVar) {
        this.f54405d = aVar;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: d */
    public CallAnswered mo13149d() {
        return this.f54403b;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: e */
    public String mo13148e() {
        return this.f54404c;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: f */
    public C13794x mo13147f() {
        return this.f54412k;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: g */
    public void mo13146g(a<s> aVar) {
        this.f54406e = aVar;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    public String getNumber() {
        return C17891a1.C17902k.m15623c0(this.f54412k);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        if (r6 == null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo13145h(s1.w.d<? super com.truecaller.analytics.call.BlockingAction> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1146q2.p1152w0.p1153h.C19574m.C19575a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.q2.w0.h.m$a r0 = (p193e.p194a.p1146q2.p1152w0.p1153h.C19574m.C19575a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f54417e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f54417e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.q2.w0.h.m$a r0 = new e.a.q2.w0.h.m$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f54416d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f54417e
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
            goto L7f
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
            q3.a.n0<? extends com.truecaller.analytics.call.BlockingAction> r0 = r0.f54410i
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L8b
            r0 = r6
            r1 = 1
            r0.f54417e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.s(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7f
            r0 = r9
            return r0
        L7f:
            r0 = r6
            com.truecaller.analytics.call.BlockingAction r0 = (com.truecaller.analytics.call.BlockingAction) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L8b
            goto L8f
        L8b:
            com.truecaller.analytics.call.BlockingAction r0 = com.truecaller.analytics.call.BlockingAction.NONE
            r6 = r0
        L8f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1152w0.p1153h.C19574m.mo13145h(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: i */
    public long mo13144i() {
        Long l = this.f54409h;
        if (l != null) {
            return this.f54413l.mo13821a() - l.longValue();
        }
        return 0L;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: j */
    public void mo13143j() {
        this.f54412k.f40005a.registerCallback(this);
        Call call = this.f54412k.f40005a;
        onStateChanged(call, call.getState());
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j
    /* renamed from: k */
    public long mo13142k() {
        return this.f54413l.mo13821a() - this.f54408g;
    }

    @Override // android.telecom.Call.Callback
    public void onCallDestroyed(Call call) {
        if (call == null) {
            return;
        }
        C17891a1.C17902k.m15626b0(call);
        a<s> aVar = this.f54406e;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
        call.unregisterCallback(this);
    }

    @Override // android.telecom.Call.Callback
    public void onStateChanged(Call call, int i) {
        if (call != null) {
            C17891a1.C17902k.m15626b0(call);
        }
        if (call == null || this.f54407f == i) {
            return;
        }
        this.f54407f = i;
        if (i == 2) {
            CallDirection callDirection = CallDirection.INCOMING;
            l.e(callDirection, "<set-?>");
            this.f54402a = callDirection;
            this.f54410i = s1.a.a.a.v0.f.d.H(h1.a, this.f54411j, (j0) null, new C19576b(call, null), 2, (Object) null);
        } else if (i == 4) {
            CallAnswered callAnswered = CallAnswered.YES;
            l.e(callAnswered, "<set-?>");
            this.f54403b = callAnswered;
            m13152a(true);
        } else if (i != 7) {
        } else {
            m13152a(false);
            a<s> aVar = this.f54405d;
            if (aVar == null) {
                return;
            }
            s sVar = (s) aVar.invoke();
        }
    }
}
