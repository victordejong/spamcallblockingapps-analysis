package p000;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.InCallService;
import java.util.HashMap;
import java.util.Iterator;
import p000.g61;
@TargetApi(23)
/* renamed from: f61 */
/* loaded from: classes3-dex2jar.jar:f61.class */
public class f61 {

    /* renamed from: e */
    public static f61 f6537e;

    /* renamed from: a */
    public InCallService f6538a;

    /* renamed from: b */
    public ux0 f6539b;

    /* renamed from: c */
    public Call f6540c = null;

    /* renamed from: d */
    public HashMap<Call, g61> f6541d = new HashMap<>();

    /* renamed from: h */
    public static f61 m1947h() {
        if (f6537e == null) {
            f6537e = new f61();
        }
        return f6537e;
    }

    /* renamed from: a */
    public void m1954a(Call call) {
        j91.m1499q("CallManager", "accept Call");
        if (call == null) {
            return;
        }
        call.answer(call.getDetails().getVideoState());
    }

    /* renamed from: b */
    public void m1953b(Call call) {
        this.f6540c = call;
        if (call == null || this.f6541d.containsKey(call)) {
            return;
        }
        this.f6541d.put(call, new g61(call));
    }

    /* renamed from: c */
    public void m1952c(Call call) {
        j91.m1499q("CallManager", "cancel Call");
        if (call == null) {
            return;
        }
        if (call.getState() == 2) {
            call.reject(false, "");
        } else {
            call.disconnect();
        }
    }

    /* renamed from: d */
    public void m1951d() {
        this.f6538a = null;
    }

    /* renamed from: e */
    public void m1950e() {
        ux0.k();
        this.f6539b = null;
    }

    /* renamed from: f */
    public CallAudioState m1949f() {
        InCallService inCallService = this.f6538a;
        if (inCallService != null) {
            return inCallService.getCallAudioState();
        }
        return null;
    }

    /* renamed from: g */
    public Call m1948g() {
        return this.f6540c;
    }

    /* renamed from: i */
    public g61 m1946i(g61 g61Var) {
        g61 g61Var2;
        Iterator<g61> it = this.f6541d.values().iterator();
        boolean z = false;
        g61 g61Var3 = null;
        int i = 0;
        while (true) {
            g61Var2 = g61Var3;
            if (!it.hasNext()) {
                break;
            }
            g61 next = it.next();
            if (z) {
                g61Var3 = next;
            }
            int i2 = i + 1;
            g61Var2 = g61Var3;
            if (g61Var3 == null) {
                g61Var2 = next;
            }
            if (g61Var.f6660a.equals(next.f6660a) && this.f6541d.size() == i2) {
                break;
            }
            i = i2;
            g61Var3 = g61Var2;
            if (g61Var.f6660a.equals(next.f6660a)) {
                i = i2;
                g61Var3 = g61Var2;
                if (this.f6541d.size() > i2) {
                    z = true;
                    i = i2;
                    g61Var3 = g61Var2;
                }
            }
        }
        return g61Var2;
    }

    /* renamed from: j */
    public ux0 m1945j() {
        return this.f6539b;
    }

    /* renamed from: k */
    public void m1944k(Call call) {
        j91.m1499q("CallManager", "hold");
        if (call == null) {
            return;
        }
        call.hold();
    }

    /* renamed from: l */
    public void m1943l(Call call, Character ch) {
        j91.m1499q("CallManager", "playtone");
        if (call == null) {
            return;
        }
        call.playDtmfTone(ch.charValue());
    }

    /* renamed from: m */
    public void m1942m(Call call, String str) {
        j91.m1499q("CallManager", "reject Call");
        if (call == null) {
            return;
        }
        call.reject(!str.isEmpty(), str);
    }

    /* renamed from: n */
    public void m1941n(Call call) {
        if (call == null || !this.f6541d.containsKey(call)) {
            return;
        }
        m1930y(call, this.f6539b);
        this.f6541d.remove(call);
    }

    /* renamed from: o */
    public void m1940o(int i) {
        InCallService inCallService = this.f6538a;
        if (inCallService != null) {
            inCallService.setAudioRoute(i);
        }
    }

    /* renamed from: p */
    public void m1939p(Call call) {
        if (call == null || !this.f6541d.containsKey(call)) {
            return;
        }
        this.f6540c = call;
    }

    /* renamed from: q */
    public void m1938q(InCallService inCallService) {
        this.f6538a = inCallService;
    }

    /* renamed from: r */
    public void m1937r(Context context) {
        this.f6539b = new ux0(context);
    }

    /* renamed from: s */
    public void m1936s(int i, Notification notification) {
        InCallService inCallService = this.f6538a;
        if (inCallService != null) {
            inCallService.startForeground(i, notification);
        }
    }

    /* renamed from: t */
    public void m1935t() {
        InCallService inCallService = this.f6538a;
        if (inCallService != null) {
            inCallService.stopForeground(true);
        }
    }

    /* renamed from: u */
    public void m1934u(Call call) {
        j91.m1499q("CallManager", "stop playtone");
        if (call == null) {
            return;
        }
        call.stopDtmfTone();
    }

    /* renamed from: v */
    public void m1933v(Call call, e61 e61Var) {
        if (call == null || !this.f6541d.containsKey(call)) {
            return;
        }
        this.f6541d.get(call).f6663d.add(e61Var);
    }

    /* renamed from: w */
    public void m1932w(Call call) {
        j91.m1499q("CallManager", "toggle Hold");
        if (call == null) {
            return;
        }
        if (call.getState() == 3) {
            m1931x(call);
        } else {
            m1944k(call);
        }
    }

    /* renamed from: x */
    public void m1931x(Call call) {
        j91.m1499q("CallManager", "unhold");
        if (call == null) {
            return;
        }
        call.unhold();
    }

    /* renamed from: y */
    public void m1930y(Call call, e61 e61Var) {
        g61 g61Var;
        if (call == null || !this.f6541d.containsKey(call) || (g61Var = this.f6541d.get(call)) == null) {
            return;
        }
        g61Var.m1693c();
        g61Var.f6663d.remove(e61Var);
    }

    /* renamed from: z */
    public void m1929z(Call call) {
        g61 g61Var;
        j91.m1499q("CallManager", "update Call");
        if (call == null || !this.f6541d.containsKey(call) || (g61Var = this.f6541d.get(call)) == null) {
            return;
        }
        g61Var.f6662c = call;
        g61Var.m1689g(call);
        if (g61Var.f6661b == g61.EnumC1440c.ACTIVE && g61Var.f6670m == 0) {
            g61Var.f6670m = System.currentTimeMillis();
        }
        if (g61Var.f6661b == g61.EnumC1440c.DISCONNECTED) {
            m1941n(call);
            if (this.f6541d.size() > 0) {
                m1939p(m1946i(g61Var).f6662c);
            }
        }
        g61Var.m1694b();
    }
}
