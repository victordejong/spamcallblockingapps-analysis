package p065f.p066a.p068b.p069a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.lang.reflect.Method;
import java.util.Timer;
import java.util.TimerTask;
/* renamed from: f.a.b.a.m */
/* loaded from: classes-dex2jar.jar:f/a/b/a/m.class */
public class C4260m {

    /* renamed from: j */
    public static final String[] f10316j = {"already active", "request started", "type not available", "request failed", "already inactive", "unknown"};

    /* renamed from: k */
    public static volatile long f10317k = 180000;

    /* renamed from: a */
    public final Context f10318a;

    /* renamed from: b */
    public final ConnectivityManager f10319b;

    /* renamed from: c */
    public boolean f10320c;

    /* renamed from: f */
    public Timer f10323f;

    /* renamed from: g */
    public final C4256i f10324g;

    /* renamed from: i */
    public final BroadcastReceiver f10326i = new C4261a();

    /* renamed from: h */
    public final IntentFilter f10325h = new IntentFilter();

    /* renamed from: d */
    public int f10321d = 0;

    /* renamed from: e */
    public int f10322e = 0;

    /* renamed from: f.a.b.a.m$a */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/m$a.class */
    public class C4261a extends BroadcastReceiver {
        public C4261a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && C4260m.m29191b(intent) == 2) {
                C4260m.this.m29196a(context, intent);
            }
        }
    }

    /* renamed from: f.a.b.a.m$b */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/m$b.class */
    public class C4262b extends TimerTask {
        public C4262b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (C4260m.this.f10321d > 0) {
                    try {
                        C4260m.this.m29189c();
                    } catch (C4259l e) {
                    }
                }
            }
        }
    }

    public C4260m(Context context) {
        this.f10318a = context;
        this.f10319b = (ConnectivityManager) this.f10318a.getSystemService("connectivity");
        this.f10324g = new C4256i(this.f10318a);
        this.f10325h.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r3 >= p065f.p066a.p068b.p069a.C4260m.f10316j.length) goto L_0x000e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m29197a(int r3) {
        /*
            r0 = r3
            if (r0 < 0) goto L_0x000e
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String[] r1 = p065f.p066a.p068b.p069a.C4260m.f10316j
            int r1 = r1.length
            if (r0 < r1) goto L_0x0015
        L_0x000e:
            java.lang.String[] r0 = p065f.p066a.p068b.p069a.C4260m.f10316j
            int r0 = r0.length
            r1 = 1
            int r0 = r0 - r1
            r4 = r0
        L_0x0015:
            java.lang.String[] r0 = p065f.p066a.p068b.p069a.C4260m.f10316j
            r1 = r4
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p065f.p066a.p068b.p069a.C4260m.m29197a(int):java.lang.String");
    }

    /* renamed from: b */
    public static int m29191b(Intent intent) {
        if (Build.VERSION.SDK_INT >= 17) {
            return intent.getIntExtra("networkType", -1);
        }
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
        if (networkInfo != null) {
            return networkInfo.getType();
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00d6 -> B:21:0x005f). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m29198a() throws p065f.p066a.p068b.p069a.C4259l {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p065f.p066a.p068b.p069a.C4260m.m29198a():void");
    }

    /* renamed from: a */
    public final void m29196a(Context context, Intent intent) {
        NetworkInfo networkInfo;
        if (this.f10321d < 1 || (networkInfo = this.f10319b.getNetworkInfo(2)) == null) {
            return;
        }
        if ("2GVoiceCallEnded".equals(networkInfo.getReason())) {
            m29179m();
            return;
        }
        NetworkInfo.State state = networkInfo.getState();
        if (state == NetworkInfo.State.CONNECTED || (state == NetworkInfo.State.DISCONNECTED && !m29185g())) {
            m29179m();
        }
    }

    /* renamed from: b */
    public final void m29192b() {
        try {
            Method method = this.f10319b.getClass().getMethod("stopUsingNetworkFeature", Integer.TYPE, String.class);
            if (method != null) {
                method.invoke(this.f10319b, 0, "enableMMS");
            }
        } catch (Exception e) {
            String str = "ConnectivityManager.stopUsingNetworkFeature failed " + e;
        }
    }

    /* renamed from: c */
    public final boolean m29189c() throws C4259l {
        int j = m29182j();
        if (j == 0) {
            m29181k();
            return true;
        } else if (j == 1) {
            return false;
        } else {
            m29180l();
            throw new C4259l("Cannot acquire MMS network: " + j + " - " + m29197a(j));
        }
    }

    /* renamed from: d */
    public String m29188d() {
        NetworkInfo networkInfo = this.f10319b.getNetworkInfo(2);
        return networkInfo != null ? networkInfo.getExtraInfo() : null;
    }

    /* renamed from: e */
    public ConnectivityManager m29187e() {
        return this.f10319b;
    }

    /* renamed from: f */
    public C4256i m29186f() {
        return this.f10324g;
    }

    /* renamed from: g */
    public final boolean m29185g() {
        boolean z = false;
        try {
            Method declaredMethod = this.f10319b.getClass().getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            z = ((Boolean) declaredMethod.invoke(this.f10319b, new Object[0])).booleanValue();
        } catch (Exception e) {
        }
        return z;
    }

    /* renamed from: h */
    public final void m29184h() {
        if (!this.f10320c) {
            this.f10318a.registerReceiver(this.f10326i, this.f10325h);
            this.f10320c = true;
        }
    }

    /* renamed from: i */
    public void m29183i() {
        synchronized (this) {
            this.f10321d--;
            if (this.f10321d == 0) {
                m29180l();
                m29192b();
            }
        }
    }

    /* renamed from: j */
    public final int m29182j() {
        try {
            Method method = this.f10319b.getClass().getMethod("startUsingNetworkFeature", Integer.TYPE, String.class);
            if (method != null) {
                return ((Integer) method.invoke(this.f10319b, 0, "enableMMS")).intValue();
            }
            return 3;
        } catch (Exception e) {
            String str = "ConnectivityManager.startUsingNetworkFeature failed " + e;
            return 3;
        }
    }

    /* renamed from: k */
    public final void m29181k() {
        if (this.f10323f == null) {
            this.f10323f = new Timer("mms_network_extension_timer", true);
            this.f10323f.schedule(new C4262b(), 30000L);
        }
    }

    /* renamed from: l */
    public final void m29180l() {
        Timer timer = this.f10323f;
        if (timer != null) {
            timer.cancel();
            this.f10323f = null;
        }
    }

    /* renamed from: m */
    public final void m29179m() {
        synchronized (this) {
            notifyAll();
        }
    }

    /* renamed from: n */
    public final void m29178n() {
        if (this.f10320c) {
            this.f10318a.unregisterReceiver(this.f10326i);
            this.f10320c = false;
        }
    }
}
