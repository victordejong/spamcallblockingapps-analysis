package org.mistergroup.shouldianswer.services.incall;

import android.net.Uri;
import android.telecom.Call;
import android.telecom.GatewayInfo;
import java.lang.ref.WeakReference;
import java.util.Date;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p098b.C2266a;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.services.incall.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/a.class */
public final class C2485a extends Call.Callback {

    /* renamed from: a */
    private boolean f7262a;

    /* renamed from: b */
    private final NumberInfo f7263b;

    /* renamed from: c */
    private long f7264c;

    /* renamed from: d */
    private boolean f7265d;

    /* renamed from: e */
    private EnumC2436k f7266e = EnumC2436k.UNKNOWN;

    /* renamed from: f */
    private final C2488c f7267f;

    /* renamed from: g */
    private final Call f7268g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AbstractC1634f(m3162b = "CallInfo.kt", m3161c = {109, 113}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.CallInfo$block$1")
    /* renamed from: org.mistergroup.shouldianswer.services.incall.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/a$a.class */
    public static final class C2486a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7269a;

        /* renamed from: b */
        int f7270b;

        /* renamed from: c */
        int f7271c;

        /* renamed from: e */
        private AbstractC1786ad f7273e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2486a(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2485a.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2486a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2486a c2486a = new C2486a(abstractC1641c);
            c2486a.f7273e = (AbstractC1786ad) obj;
            return c2486a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00f2, code lost:
            if (r9 <= 50) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:42:0x013b A[Catch: Exception -> 0x0050, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0050, blocks: (B:9:0x0025, B:14:0x0046, B:18:0x0063, B:22:0x0085, B:26:0x0093, B:28:0x00d8, B:34:0x00f5, B:36:0x0116, B:40:0x0124, B:42:0x013b), top: B:46:0x000a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00e0 -> B:32:0x00e5). Please submit an issue!!! */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 336
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.services.incall.C2485a.C2486a.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    public C2485a(C2488c c2488c, Call call) {
        C1694h.m3117b(c2488c, "presenter");
        this.f7267f = c2488c;
        this.f7268g = call;
        String m913e = m913e();
        String m177a = C3099f.f9116a.m177a();
        Call call2 = this.f7268g;
        m920a(call2 != null ? Integer.valueOf(call2.getState()) : null);
        this.f7263b = m913e != null ? new NumberInfo(m913e, m177a, this.f7266e, true) : new NumberInfo("-1", m177a, this.f7266e, false, 8, null);
        this.f7264c = new Date().getTime();
    }

    /* renamed from: a */
    private final void m920a(Integer num) {
        if (num != null) {
            num.intValue();
            if (num.intValue() == 9 || num.intValue() == 1) {
                this.f7266e = EnumC2436k.OUTGOING;
            } else if (num.intValue() != 2) {
            } else {
                this.f7266e = EnumC2436k.INCOMING;
            }
        }
    }

    /* renamed from: a */
    public final void m919a(WeakReference<MyInCallService> weakReference) {
        MyInCallService myInCallService;
        MyInCallService myInCallService2;
        try {
            boolean z = C2398ai.f6930a.m1300K() == C2398ai.EnumC2401b.PICK_AND_HANG && C2405c.f6946b.m1213E();
            boolean z2 = z;
            if (z) {
                z2 = z;
                if (C2488c.f7274a.m888c().size() > 1) {
                    C3104j.m157a(C3104j.f9124a, "CallInfo.processBlock cant use pickandhang due multiplecalls...using reject!", (String) null, 2, (Object) null);
                    z2 = false;
                }
            }
            if (z2) {
                if (weakReference != null && (myInCallService2 = weakReference.get()) != null) {
                    myInCallService2.m922a(new Date());
                }
                C3104j.m157a(C3104j.f9124a, "BLOCKAUDIT number:" + C2464x.m969a(this.f7263b) + ",country=" + this.f7263b.m1475c() + ",typ=CALLINFO_PH", (String) null, 2, (Object) null);
                C3104j.m157a(C3104j.f9124a, "CallInfo.processBlock call.answer", (String) null, 2, (Object) null);
                Call call = this.f7268g;
                if (call != null) {
                    call.answer(0);
                }
                C3104j.m157a(C3104j.f9124a, "CallInfo.processBlock setMuted to true", (String) null, 2, (Object) null);
                if (weakReference != null && (myInCallService = weakReference.get()) != null) {
                    myInCallService.setMuted(true);
                }
                C1892g.m2677a(C1843bd.f4587a, C3084c.m192b(), null, new C2486a(null), 2, null);
            } else {
                C3104j.m157a(C3104j.f9124a, "CallInfo.processBlock call.reject", (String) null, 2, (Object) null);
                Call call2 = this.f7268g;
                if (call2 != null) {
                    call2.reject(false, null);
                }
                C3104j.m157a(C3104j.f9124a, "BLOCKAUDIT number:" + C2464x.m969a(this.f7263b) + ",country=" + this.f7263b.m1475c() + ",typ=CALLINFO", (String) null, 2, (Object) null);
            }
            new C2266a().m1713a(this.f7263b, this.f7264c);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m918a(boolean z) {
        if (z) {
            Call call = this.f7268g;
            if (call != null) {
                call.hold();
            }
        } else {
            Call call2 = this.f7268g;
            if (call2 != null) {
                call2.unhold();
            }
        }
        this.f7262a = z;
    }

    /* renamed from: a */
    public final boolean m921a() {
        return this.f7262a;
    }

    /* renamed from: b */
    public final NumberInfo m917b() {
        return this.f7263b;
    }

    /* renamed from: b */
    public final void m916b(boolean z) {
        this.f7265d = z;
    }

    /* renamed from: c */
    public final boolean m915c() {
        return this.f7265d;
    }

    /* renamed from: d */
    public final EnumC2436k m914d() {
        return this.f7266e;
    }

    /* renamed from: e */
    public final String m913e() {
        if (C2405c.f6946b.m1205M().length() > 0) {
            return C2405c.f6946b.m1205M();
        }
        Call call = this.f7268g;
        String str = null;
        if (call != null) {
            Call.Details details = call.getDetails();
            C1694h.m3122a((Object) details, "call.details");
            GatewayInfo gatewayInfo = details.getGatewayInfo();
            if (gatewayInfo != null) {
                Uri originalAddress = gatewayInfo.getOriginalAddress();
                C1694h.m3122a((Object) originalAddress, "it.originalAddress");
                return originalAddress.getSchemeSpecificPart();
            }
            Call.Details details2 = call.getDetails();
            C1694h.m3122a((Object) details2, "call.details");
            Uri handle = details2.getHandle();
            str = null;
            if (handle != null) {
                str = handle.getSchemeSpecificPart();
            }
        }
        return str;
    }

    /* renamed from: f */
    public final String m912f() {
        Call.Details details;
        Call call = this.f7268g;
        String callerDisplayName = (call == null || (details = call.getDetails()) == null) ? null : details.getCallerDisplayName();
        String str = callerDisplayName;
        if (str == null || str.length() == 0) {
            callerDisplayName = null;
        }
        return callerDisplayName;
    }

    /* renamed from: g */
    public final Integer m911g() {
        Call call = this.f7268g;
        return call != null ? Integer.valueOf(call.getState()) : null;
    }

    /* renamed from: h */
    public final String m910h() {
        String str;
        MyApp m1802a = MyApp.f5480c.m1802a();
        Integer m911g = m911g();
        int i = 2131755012;
        if (m911g != null && m911g.intValue() == 2) {
            str = m1802a.getString(2131755012);
            C1694h.m3122a((Object) str, "context.getString(R.stri…CALL_STATE_INCOMING_CALL)");
        } else if (m911g != null && m911g.intValue() == 1) {
            str = m1802a.getString(2131755009);
            C1694h.m3122a((Object) str, "context.getString(R.string.CALL_STATE_DIALING)");
        } else if (m911g != null && m911g.intValue() == 9) {
            str = m1802a.getString(2131755008);
            C1694h.m3122a((Object) str, "context.getString(R.string.CALL_STATE_CONNECTING)");
        } else if (m911g != null && m911g.intValue() == 10) {
            str = m1802a.getString(2131755010);
            C1694h.m3122a((Object) str, "context.getString(R.stri…CALL_STATE_DISCONNECTING)");
        } else if (m911g != null && m911g.intValue() == 3) {
            str = m1802a.getString(2131755011);
            C1694h.m3122a((Object) str, "context.getString(R.string.CALL_STATE_HOLDING)");
        } else if (m911g != null && m911g.intValue() == 4) {
            if (this.f7266e != EnumC2436k.INCOMING) {
                i = 2131755013;
            }
            str = m1802a.getString(i);
            C1694h.m3122a((Object) str, "context.getString(if (ca…CALL_STATE_OUTGOING_CALL)");
        } else {
            str = "";
        }
        return str;
    }

    /* renamed from: i */
    public final Call m909i() {
        return this.f7268g;
    }

    @Override // android.telecom.Call.Callback
    public void onStateChanged(Call call, int i) {
        C1694h.m3117b(call, "call");
        C3104j.m157a(C3104j.f9124a, "CallInfo.onStateChanged update", (String) null, 2, (Object) null);
        super.onStateChanged(call, i);
        m920a(Integer.valueOf(i));
        this.f7267f.m885d();
    }
}
