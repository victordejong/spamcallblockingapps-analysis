package gogolook.callgogolook2.messaging.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/util/ConnectivityUtil.class */
public class ConnectivityUtil {

    /* renamed from: b */
    public final TelephonyManager f11921b;

    /* renamed from: c */
    public final Context f11922c;

    /* renamed from: e */
    public final ConnectivityManager f11924e;

    /* renamed from: f */
    public AbstractC4843c f11925f;

    /* renamed from: i */
    public int f11928i;

    /* renamed from: a */
    public volatile int f11920a = 3;

    /* renamed from: h */
    public final PhoneStateListener f11927h = new C4841a();

    /* renamed from: j */
    public final PhoneStateListener f11929j = new C4842b();

    /* renamed from: d */
    public final ConnectivityBroadcastReceiver f11923d = new ConnectivityBroadcastReceiver();

    /* renamed from: g */
    public final IntentFilter f11926g = new IntentFilter();

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/util/ConnectivityUtil$ConnectivityBroadcastReceiver.class */
    public class ConnectivityBroadcastReceiver extends BroadcastReceiver {
        public ConnectivityBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                ConnectivityUtil.this.m26939a(context, intent);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.util.ConnectivityUtil$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/util/ConnectivityUtil$a.class */
    public class C4841a extends PhoneStateListener {
        public C4841a() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onDataConnectionStateChanged(int i) {
            ConnectivityUtil.this.f11920a = i == 0 ? 1 : 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            if (ConnectivityUtil.this.f11920a != serviceState.getState()) {
                ConnectivityUtil.this.f11920a = serviceState.getState();
                ConnectivityUtil connectivityUtil = ConnectivityUtil.this;
                connectivityUtil.m26940a(connectivityUtil.f11920a);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.util.ConnectivityUtil$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/util/ConnectivityUtil$b.class */
    public class C4842b extends PhoneStateListener {
        public C4842b() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            ConnectivityUtil.this.f11928i = ConnectivityUtil.m26927d(signalStrength);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.util.ConnectivityUtil$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/util/ConnectivityUtil$c.class */
    public interface AbstractC4843c {
        /* renamed from: a */
        void mo26926a(Context context, int i);

        /* renamed from: a */
        void mo26925a(Context context, Intent intent);
    }

    public ConnectivityUtil(Context context) {
        this.f11922c = context;
        this.f11921b = (TelephonyManager) context.getSystemService("phone");
        this.f11924e = (ConnectivityManager) context.getSystemService("connectivity");
        this.f11926g.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    /* renamed from: b */
    public static int m26932b(SignalStrength signalStrength) {
        int cdmaDbm = signalStrength.getCdmaDbm();
        int cdmaEcio = signalStrength.getCdmaEcio();
        int i = 1;
        int i2 = cdmaDbm >= -75 ? 4 : cdmaDbm >= -85 ? 3 : cdmaDbm >= -95 ? 2 : cdmaDbm >= -100 ? 1 : 0;
        if (cdmaEcio >= -90) {
            i = 4;
        } else if (cdmaEcio >= -110) {
            i = 3;
        } else if (cdmaEcio >= -130) {
            i = 2;
        } else if (cdmaEcio < -150) {
            i = 0;
        }
        if (i2 >= i) {
            i2 = i;
        }
        return i2;
    }

    /* renamed from: c */
    public static int m26929c(SignalStrength signalStrength) {
        int evdoDbm = signalStrength.getEvdoDbm();
        int evdoSnr = signalStrength.getEvdoSnr();
        int i = 0;
        int i2 = evdoDbm >= -65 ? 4 : evdoDbm >= -75 ? 3 : evdoDbm >= -90 ? 2 : evdoDbm >= -105 ? 1 : 0;
        if (evdoSnr >= 7) {
            i = 4;
        } else if (evdoSnr >= 5) {
            i = 3;
        } else if (evdoSnr >= 3) {
            i = 2;
        } else if (evdoSnr >= 1) {
            i = 1;
        }
        if (i2 >= i) {
            i2 = i;
        }
        return i2;
    }

    /* renamed from: d */
    public static int m26927d(SignalStrength signalStrength) {
        if (signalStrength.isGsm()) {
            int gsmSignalStrength = signalStrength.getGsmSignalStrength();
            if (gsmSignalStrength <= 2 || gsmSignalStrength == 99) {
                return 0;
            }
            if (gsmSignalStrength >= 12) {
                return 4;
            }
            if (gsmSignalStrength >= 8) {
                return 3;
            }
            return gsmSignalStrength >= 8 ? 2 : 1;
        }
        int b = m26932b(signalStrength);
        int c = m26929c(signalStrength);
        if (c == 0) {
            return m26932b(signalStrength);
        }
        if (b == 0) {
            return m26929c(signalStrength);
        }
        if (b >= c) {
            b = c;
        }
        return b;
    }

    /* renamed from: a */
    public void m26941a() {
        this.f11921b.listen(this.f11929j, 256);
    }

    /* renamed from: a */
    public final void m26940a(int i) {
        AbstractC4843c cVar = this.f11925f;
        if (cVar != null) {
            cVar.mo26926a(this.f11922c, i);
        }
    }

    /* renamed from: a */
    public final void m26939a(Context context, Intent intent) {
        AbstractC4843c cVar = this.f11925f;
        if (cVar != null) {
            cVar.mo26925a(context, intent);
        }
    }

    /* renamed from: a */
    public void m26937a(AbstractC4843c cVar) {
        AbstractC4843c cVar2 = this.f11925f;
        int i = 0;
        C12151d.m6999b(cVar2 == null || cVar2 == cVar);
        if (this.f11925f == null) {
            if (this.f11921b != null) {
                if (AbstractC12181l0.m6886t().m6892k()) {
                    i = 3;
                }
                this.f11920a = i;
                this.f11921b.listen(this.f11927h, 1);
            }
            if (this.f11924e != null) {
                this.f11922c.registerReceiver(this.f11923d, this.f11926g);
            }
        }
        this.f11925f = cVar;
    }

    /* renamed from: b */
    public void m26933b() {
        if (this.f11925f != null) {
            TelephonyManager telephonyManager = this.f11921b;
            if (telephonyManager != null) {
                telephonyManager.listen(this.f11927h, 0);
                this.f11920a = 3;
            }
            if (this.f11924e != null) {
                try {
                    this.f11922c.unregisterReceiver(this.f11923d);
                } catch (IllegalArgumentException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        this.f11925f = null;
    }

    /* renamed from: c */
    public void m26930c() {
        this.f11921b.listen(this.f11929j, 0);
    }
}
