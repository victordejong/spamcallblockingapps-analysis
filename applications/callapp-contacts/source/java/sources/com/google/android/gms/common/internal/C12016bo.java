package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import com.google.android.gms.common.stats.C12088a;
import com.google.android.gms.internal.p357c.HandlerC13168h;
import java.util.HashMap;
/* renamed from: com.google.android.gms.common.internal.bo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bo.class */
public final class C12016bo extends AbstractC12034g {

    /* renamed from: b */
    private final Context f39528b;

    /* renamed from: c */
    private final Handler f39529c;

    /* renamed from: a */
    private final HashMap<C12012bk, ServiceConnectionC12014bm> f39527a = new HashMap<>();

    /* renamed from: d */
    private final C12088a f39530d = C12088a.m19072a();

    /* renamed from: e */
    private final long f39531e = 5000;

    /* renamed from: f */
    private final long f39532f = 300000;

    public C12016bo(Context context) {
        this.f39528b = context.getApplicationContext();
        this.f39529c = new HandlerC13168h(context.getMainLooper(), new C12015bn(this, null));
    }

    @Override // com.google.android.gms.common.internal.AbstractC12034g
    /* renamed from: a */
    protected final void mo19179a(C12012bk c12012bk, ServiceConnection serviceConnection) {
        C12045o.m19161a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f39527a) {
            ServiceConnectionC12014bm serviceConnectionC12014bm = this.f39527a.get(c12012bk);
            if (serviceConnectionC12014bm == null) {
                String valueOf = String.valueOf(c12012bk);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (!serviceConnectionC12014bm.m19203a(serviceConnection)) {
                String valueOf2 = String.valueOf(c12012bk);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            } else {
                serviceConnectionC12014bm.f39519a.remove(serviceConnection);
                if (serviceConnectionC12014bm.m19204a()) {
                    this.f39529c.sendMessageDelayed(this.f39529c.obtainMessage(0, c12012bk), this.f39531e);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12034g
    /* renamed from: a */
    public final boolean mo19178a(C12012bk c12012bk, ServiceConnection serviceConnection, String str) {
        ServiceConnectionC12014bm serviceConnectionC12014bm;
        boolean z;
        C12045o.m19161a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f39527a) {
            ServiceConnectionC12014bm serviceConnectionC12014bm2 = this.f39527a.get(c12012bk);
            if (serviceConnectionC12014bm2 == null) {
                ServiceConnectionC12014bm serviceConnectionC12014bm3 = new ServiceConnectionC12014bm(this, c12012bk);
                serviceConnectionC12014bm3.m19202a(serviceConnection, serviceConnection);
                serviceConnectionC12014bm3.m19201a(str);
                this.f39527a.put(c12012bk, serviceConnectionC12014bm3);
                serviceConnectionC12014bm = serviceConnectionC12014bm3;
            } else {
                this.f39529c.removeMessages(0, c12012bk);
                if (serviceConnectionC12014bm2.m19203a(serviceConnection)) {
                    String valueOf = String.valueOf(c12012bk);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
                serviceConnectionC12014bm2.m19202a(serviceConnection, serviceConnection);
                int i = serviceConnectionC12014bm2.f39520b;
                if (i == 1) {
                    serviceConnection.onServiceConnected(serviceConnectionC12014bm2.f39524f, serviceConnectionC12014bm2.f39522d);
                    serviceConnectionC12014bm = serviceConnectionC12014bm2;
                } else if (i != 2) {
                    serviceConnectionC12014bm = serviceConnectionC12014bm2;
                } else {
                    serviceConnectionC12014bm2.m19201a(str);
                    serviceConnectionC12014bm = serviceConnectionC12014bm2;
                }
            }
            z = serviceConnectionC12014bm.f39521c;
        }
        return z;
    }
}
