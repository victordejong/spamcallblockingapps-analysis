package p000;

import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import com.kedlin.cca.core.call.Call;
import java.util.EnumSet;
import p000.fa1;
import p000.m91;
import p000.n91;
import p000.o91;
import p000.q71;
import p000.r71;
import p000.w91;
/* renamed from: l71 */
/* loaded from: classes3-dex2jar.jar:l71.class */
public class l71 extends k71 implements n71, m91.AbstractC1469b {

    /* renamed from: f */
    public static i91 f6879f;

    /* renamed from: g */
    public static n91.C1485b f6880g;

    /* renamed from: b */
    public ra1 f6881b = null;

    /* renamed from: c */
    public boolean f6882c = false;

    /* renamed from: d */
    public Handler f6883d = null;

    /* renamed from: l71$a */
    /* loaded from: classes3-dex2jar.jar:l71$a.class */
    public class RunnableC1460a implements Runnable {
        public RunnableC1460a(l71 l71Var) {
        }

        @Override // java.lang.Runnable
        public void run() {
            o91.m1129e();
        }
    }

    @Override // p000.n71
    /* renamed from: a */
    public void mo1225a(Intent intent) {
        if ("android.intent.action.PHONE_STATE".equals(intent.getAction()) && (!fa1.m1830t() || !r71.EnumC1638a.f7994v.m695a())) {
            m1371n(intent);
        } else if ("android.provider.Telephony.SMS_RECEIVED".equals(intent.getAction())) {
            m1370o(intent);
        } else if ("android.provider.Telephony.SMS_DELIVER".equals(intent.getAction())) {
            m1370o(intent);
        } else {
            j91.m1517G(this, "Intent action is ignored - " + intent.getAction());
        }
    }

    @Override // p000.n71
    /* renamed from: b */
    public void mo1224b(Call call) {
        String str = "Ignore requested for call " + call;
    }

    @Override // p000.n71
    /* renamed from: c */
    public void mo1223c(Call call) {
        if (call == null) {
            return;
        }
        String str = "Hangup requested for call " + call;
        try {
            mo1289k();
        } catch (Throwable th) {
            j91.m1495u(th);
            j91.m1505k(this, "Unfortunately none of the end call methods worked");
            mo1224b(call);
        }
    }

    @Override // p000.n71
    /* renamed from: d */
    public EnumSet<q71.EnumC1614a> mo1222d() {
        return EnumSet.of(q71.EnumC1614a.PICKUP_HANGUP, q71.EnumC1614a.IGNORE, q71.EnumC1614a.VOICE_MAIL);
    }

    @Override // p000.n71
    /* renamed from: e */
    public void mo1221e(Call call) {
        if (call == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21 && !call.m4381e()) {
            call.m4380f(true);
            try {
                Intent intent = new Intent("com.kedlin.cca.action.LLPP");
                intent.setFlags(268435456);
                intent.putExtra("com.kedlin.cca.extra.LLPPC", call);
                fa1.m1840j().startActivity(intent);
                call.m4380f(false);
                return;
            } catch (Throwable th) {
                j91.m1516H(this, "UI is not ready", th);
            }
        }
        String str = "Pickup requested for call " + call;
        try {
            m1433f();
        } catch (Throwable th2) {
            try {
                m1431h();
            } catch (Throwable th3) {
                j91.m1495u(th3);
                try {
                    m1432g();
                } catch (Throwable th4) {
                    j91.m1495u(th4);
                    j91.m1505k(this, "Unfortunately none of the answering call methods worked");
                    mo1224b(call);
                }
            }
        }
    }

    @Override // p000.m91.AbstractC1469b
    /* renamed from: i */
    public void mo648i(m91.EnumC1470c enumC1470c, Class<?> cls, Object obj) {
        m91.m1277e(this);
        Handler handler = this.f6883d;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f6883d = null;
        }
        i91 i91Var = (i91) obj;
        if (fa1.m1826x()) {
            n91.C1485b m1216a = n91.m1216a(i91Var, q71.EnumC1618e.CALL);
            if (fa1.C1420e.m1809f() > 1) {
                m1216a.f7084c = q71.EnumC1614a.m914b();
                j91.m1499q(this, "Forcing " + m1216a.f7084c + " blocking mode for the second line calls");
            }
            f6880g = m1216a;
            if (m1216a.f7083b) {
                z91.m42q(i91Var, m1216a);
                Call m1807h = fa1.C1420e.m1807h(i91Var.toString());
                if (m1807h != null) {
                    m1807h.m4385a(m1216a.f7084c.m912d());
                }
                if (m1216a.f7084c.m912d() == q71.EnumC1614a.IGNORE) {
                    if (this.f6881b == null) {
                        ra1 ra1Var = new ra1();
                        this.f6881b = ra1Var;
                        ra1Var.m651f();
                    }
                    ra1.m649h(i91Var, m1216a, false);
                }
                w91.m274d(this, w91.EnumC1708a.BLOCKED_CALL, m1216a.f7082a);
                return;
            }
        }
        o91.m1129e();
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x02ee  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1371n(android.content.Intent r6) {
        /*
            Method dump skipped, instructions count: 1180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.l71.m1371n(android.content.Intent):void");
    }

    /* renamed from: o */
    public final void m1370o(Intent intent) {
        n91.C1485b c1485b;
        String str;
        if (!fa1.m1829u()) {
            o91.m1129e();
            str = "We are not set as default messaging app, letting message go through anyway";
        } else {
            i91 m1792b = fa1.C1422f.m1792b(intent);
            if (m1792b != null) {
                if (r71.EnumC1638a.f7942d.m695a()) {
                    j91.m1521C("CACHING");
                    n91.C1485b m1154e = o71.m1154e(m1792b);
                    j91.m1518F("CACHING", "Time to check cache for " + m1792b);
                    c1485b = m1154e;
                    if (m1154e == null) {
                        n91.C1485b m1216a = n91.m1216a(m1792b, q71.EnumC1618e.SMS);
                        n91.EnumC1484a enumC1484a = m1216a.f7082a;
                        c1485b = m1216a;
                        if (enumC1484a != n91.EnumC1484a.DND) {
                            c1485b = m1216a;
                            if (enumC1484a != n91.EnumC1484a.ATTORNEY) {
                                j91.m1521C("CACHE_SAVE");
                                o71.m1151h(m1792b, m1216a, (m1216a.f7082a == n91.EnumC1484a.COMMUNITY_BLACKLIST ? 86400000 : -1) == 1 ? 1L : 0L);
                                j91.m1518F("CACHE_SAVE", "Time to save " + m1792b + " to cache");
                                c1485b = m1216a;
                            }
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("SMS filtering gave us: ");
                    sb.append(c1485b.f7082a);
                    sb.append(" - ");
                    sb.append(c1485b.f7083b ? "Should block" : "Should let in");
                    sb.toString();
                } else {
                    c1485b = new n91.C1485b();
                }
                EnumSet<q71.EnumC1618e> enumSet = c1485b.f7088h;
                q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
                if (!enumSet.contains(enumC1618e)) {
                    c1485b.f7083b = false;
                    c1485b.f7082a = n91.EnumC1484a.NONE;
                }
                if (!fa1.m1829u() || !c1485b.f7083b) {
                    z91.m44o(m1792b, c1485b, enumC1618e);
                }
                fa1.C1422f.m1791c(intent, c1485b);
                if (c1485b.f7083b) {
                    o91.m1132b(o91.EnumC1509c.SMS);
                    fa1.m1862D(enumC1618e, m1792b, c1485b);
                } else {
                    o91.m1129e();
                    fa1.m1860F();
                }
                w91.m276b(this, w91.EnumC1708a.INCOMING_SMS);
                if (c1485b.f7083b) {
                    w91.m274d(this, w91.EnumC1708a.BLOCKED_SMS, c1485b.f7082a);
                }
                ca1.m5402a();
                return;
            }
            str = "We can't processing a wrong phone number";
        }
        j91.m1499q(this, str);
    }
}
