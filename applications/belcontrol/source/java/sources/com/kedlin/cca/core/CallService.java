package com.kedlin.cca.core;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.InCallService;
import com.flexaspect.android.everycallcontrol.ui.activities.CallActivity;
import com.kedlin.cca.core.CallService;
import java.util.EnumSet;
import p000.g61;
import p000.m91;
import p000.n91;
import p000.o91;
import p000.q71;
import p000.r71;
import p000.w91;
@TargetApi(23)
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CallService.class */
public class CallService extends InCallService implements m91.AbstractC1469b {

    /* renamed from: c */
    public static final String f3693c = CallService.class.getSimpleName();

    /* renamed from: d */
    public static final String f3694d = CallService.class.getName() + ".CATEGORY_ADD_CALL";

    /* renamed from: a */
    public Handler f3695a = new Handler();

    /* renamed from: b */
    public Call.Callback f3696b = new C0630a();

    /* renamed from: com.kedlin.cca.core.CallService$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CallService$a.class */
    public class C0630a extends Call.Callback {
        public C0630a() {
            CallService.this = r4;
        }

        @Override // android.telecom.Call.Callback
        public void onStateChanged(Call call, int i) {
            super.onStateChanged(call, i);
            f61 m1947h = f61.m1947h();
            g61 g61Var = m1947h.f6541d.get(call);
            if (g61Var != null && i == 4 && g61Var.f6669l == g61.EnumC1439b.PICKUP_HANGUP) {
                j91.m1499q(CallService.f3693c, "disconnect mode, disconnect the call");
                m1947h.m1952c(call);
                return;
            }
            f61.m1947h().m1929z(call);
            if (!r71.EnumC1638a.f7942d.m695a() || r71.m709m().length <= 0 || g61Var == null || i != 7) {
                return;
            }
            if (!g61Var.f6673p && g61Var.f6664f != null) {
                int i2 = C0631b.f3698a[g61Var.f6669l.ordinal()];
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    CallService.this.m4398d(g61Var.f6665g, g61Var.f6664f);
                }
                g61.EnumC1439b enumC1439b = g61Var.f6669l;
                g61.EnumC1439b enumC1439b2 = g61.EnumC1439b.NONE;
                if (enumC1439b != enumC1439b2) {
                    n91.C1485b c1485b = g61Var.f6664f;
                    if (c1485b.f7083b) {
                        w91.m274d(this, w91.EnumC1708a.BLOCKED_CALL, c1485b.f7082a);
                    }
                }
                if (g61Var.f6669l == enumC1439b2 && g61Var.f6670m == 0 && g61Var.f6671n != 6) {
                    fa1.m1862D(q71.EnumC1618e.CALL, g61Var.f6665g, g61Var.f6664f);
                }
            }
            if (m1947h.f6541d.size() != 0) {
                return;
            }
            ca1.m5402a();
        }
    }

    /* renamed from: com.kedlin.cca.core.CallService$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CallService$b.class */
    public static /* synthetic */ class C0631b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3698a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[g61.EnumC1439b.values().length];
            f3698a = iArr;
            try {
                iArr[g61.EnumC1439b.IGNORE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3698a[g61.EnumC1439b.VOICE_MAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3698a[g61.EnumC1439b.PICKUP_HANGUP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m4399c() {
        Intent intent = new Intent(this, CallActivity.class);
        intent.addFlags(335544320);
        intent.addCategory(f3694d);
        startActivity(intent);
    }

    /* renamed from: d */
    public void m4398d(i91 i91Var, n91.C1485b c1485b) {
        u71.m444F(i91Var.toString());
        z91.m42q(i91Var, c1485b);
        fa1.m1862D(q71.EnumC1618e.CALL, i91Var, c1485b);
    }

    @Override // p000.m91.AbstractC1469b
    /* renamed from: i */
    public void mo648i(m91.EnumC1470c enumC1470c, Class<?> cls, Object obj) {
        if (enumC1470c == m91.EnumC1470c.GSM_CALL_READY) {
            this.f3695a.removeCallbacksAndMessages(null);
            g61 g61Var = (g61) obj;
            if (fa1.m1826x()) {
                f61 m1947h = f61.m1947h();
                if (g61Var != null && g61Var.f6669l == g61.EnumC1439b.VOICE_MAIL) {
                    j91.m1499q(f3693c, " realtime voice_mail mode, cancel the call");
                    g61Var.f6672o = true;
                    m1947h.m1952c(g61Var.f6662c);
                    return;
                } else if (g61Var != null && g61Var.f6669l == g61.EnumC1439b.PICKUP_HANGUP) {
                    j91.m1499q(f3693c, "realtime disconnect mode, accept the call");
                    m1947h.m1954a(g61Var.f6662c);
                    return;
                } else if (g61Var != null && g61Var.f6669l == g61.EnumC1439b.IGNORE) {
                    j91.m1499q(f3693c, "realtime ignore mode, already muted");
                    g61Var.f6672o = true;
                    Intent intent = new Intent(this, CallActivity.class);
                    intent.addFlags(335544320);
                    intent.addCategory(f3694d);
                    startActivity(intent);
                }
            }
            o91.m1129e();
            Intent intent2 = new Intent(this, CallActivity.class);
            intent2.addFlags(335544320);
            intent2.addCategory(f3694d);
            startActivity(intent2);
        }
    }

    @Override // android.telecom.InCallService, android.app.Service
    public IBinder onBind(Intent intent) {
        j71.m1535d().m1534e(this);
        f61.m1947h().m1938q(this);
        f61.m1947h().m1937r(getApplicationContext());
        return super.onBind(intent);
    }

    @Override // android.telecom.InCallService
    public void onBringToForeground(boolean z) {
    }

    @Override // android.telecom.InCallService
    public void onCallAdded(Call call) {
        super.onCallAdded(call);
        f61 m1947h = f61.m1947h();
        m91.m1278d(this, EnumSet.of(m91.EnumC1470c.GSM_CALL_READY), new Class[0]);
        m1947h.m1953b(call);
        call.registerCallback(this.f3696b);
        g61 g61Var = m1947h.f6541d.get(call);
        w91.m276b(this, w91.EnumC1708a.INCOMING_CALL);
        if (g61Var != null && g61Var.f6669l == g61.EnumC1439b.VOICE_MAIL) {
            j91.m1499q(f3693c, "voice_mail mode, cancel the call");
            g61Var.f6672o = true;
            m1947h.m1952c(call);
        } else if (g61Var != null && g61Var.f6669l == g61.EnumC1439b.PICKUP_HANGUP) {
            g61Var.f6672o = true;
            j91.m1499q(f3693c, "disconnect mode, accept the call");
            m1947h.m1954a(call);
        } else {
            if (g61Var != null && g61Var.f6669l == g61.EnumC1439b.IGNORE) {
                j91.m1499q(f3693c, "ignore mode, just silence call");
                o91.m1133a(o91.EnumC1509c.CALL);
                g61Var.f6672o = true;
            }
            m1947h.m1933v(call, m1947h.m1945j());
            boolean z = false;
            if (g61Var != null) {
                z = false;
                if (g61Var.m1695a()) {
                    z = true;
                }
            }
            if (z) {
                this.f3695a.postDelayed(new Runnable() { // from class: d61
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallService.this.m4399c();
                    }
                }, 3000L);
            } else {
                Intent intent = new Intent(this, CallActivity.class);
                intent.addFlags(335544320);
                intent.addCategory(f3694d);
                startActivity(intent);
            }
            f61.m1947h().m1929z(call);
        }
    }

    @Override // android.telecom.InCallService
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        j71.m1535d().m1533f(callAudioState);
    }

    @Override // android.telecom.InCallService
    public void onCallRemoved(Call call) {
        super.onCallRemoved(call);
        f61.m1947h().m1929z(call);
        f61.m1947h().m1941n(call);
    }

    @Override // android.telecom.InCallService, android.app.Service
    public boolean onUnbind(Intent intent) {
        super.onUnbind(intent);
        m91.m1277e(this);
        f61.m1947h().m1950e();
        f61.m1947h().m1951d();
        new m81().m1287F();
        o91.m1129e();
        return false;
    }
}
