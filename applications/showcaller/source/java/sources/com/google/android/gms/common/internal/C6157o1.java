package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import com.google.android.gms.common.stats.C6217a;
import java.util.HashMap;
import p078c.p084c.p085a.p086a.p088b.p091c.HandlerC1854h;
/* renamed from: com.google.android.gms.common.internal.o1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o1.class */
public final class C6157o1 extends AbstractC6128g {

    /* renamed from: e */
    private final Context f19582e;

    /* renamed from: f */
    private final Handler f19583f;

    /* renamed from: d */
    private final HashMap<C6143k1, ServiceConnectionC6150m1> f19581d = new HashMap<>();

    /* renamed from: g */
    private final C6217a f19584g = C6217a.m16846b();

    /* renamed from: h */
    private final long f19585h = 5000;

    /* renamed from: i */
    private final long f19586i = 300000;

    public C6157o1(Context context) {
        this.f19582e = context.getApplicationContext();
        this.f19583f = new HandlerC1854h(context.getMainLooper(), new C6154n1(this, null));
    }

    @Override // com.google.android.gms.common.internal.AbstractC6128g
    /* renamed from: f */
    public final boolean mo17012f(C6143k1 c6143k1, ServiceConnection serviceConnection, String str) {
        ServiceConnectionC6150m1 serviceConnectionC6150m1;
        boolean m17036e;
        C6155o.m17017k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f19581d) {
            ServiceConnectionC6150m1 serviceConnectionC6150m12 = this.f19581d.get(c6143k1);
            if (serviceConnectionC6150m12 == null) {
                ServiceConnectionC6150m1 serviceConnectionC6150m13 = new ServiceConnectionC6150m1(this, c6143k1);
                serviceConnectionC6150m13.m17038c(serviceConnection, serviceConnection, str);
                serviceConnectionC6150m13.m17040a(str);
                this.f19581d.put(c6143k1, serviceConnectionC6150m13);
                serviceConnectionC6150m1 = serviceConnectionC6150m13;
            } else {
                this.f19583f.removeMessages(0, c6143k1);
                if (serviceConnectionC6150m12.m17034g(serviceConnection)) {
                    String valueOf = String.valueOf(c6143k1);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
                serviceConnectionC6150m12.m17038c(serviceConnection, serviceConnection, str);
                int m17035f = serviceConnectionC6150m12.m17035f();
                if (m17035f == 1) {
                    serviceConnection.onServiceConnected(serviceConnectionC6150m12.m17031j(), serviceConnectionC6150m12.m17032i());
                    serviceConnectionC6150m1 = serviceConnectionC6150m12;
                } else if (m17035f != 2) {
                    serviceConnectionC6150m1 = serviceConnectionC6150m12;
                } else {
                    serviceConnectionC6150m12.m17040a(str);
                    serviceConnectionC6150m1 = serviceConnectionC6150m12;
                }
            }
            m17036e = serviceConnectionC6150m1.m17036e();
        }
        return m17036e;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6128g
    /* renamed from: g */
    protected final void mo17011g(C6143k1 c6143k1, ServiceConnection serviceConnection, String str) {
        C6155o.m17017k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f19581d) {
            ServiceConnectionC6150m1 serviceConnectionC6150m1 = this.f19581d.get(c6143k1);
            if (serviceConnectionC6150m1 == null) {
                String valueOf = String.valueOf(c6143k1);
                StringBuilder sb = new StringBuilder(valueOf.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (!serviceConnectionC6150m1.m17034g(serviceConnection)) {
                String valueOf2 = String.valueOf(c6143k1);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            } else {
                serviceConnectionC6150m1.m17037d(serviceConnection, str);
                if (serviceConnectionC6150m1.m17033h()) {
                    this.f19583f.sendMessageDelayed(this.f19583f.obtainMessage(0, c6143k1), this.f19585h);
                }
            }
        }
    }
}
