package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.c.h;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bo.class */
public final class bo extends g {

    /* renamed from: b  reason: collision with root package name */
    private final Context f22871b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f22872c;

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<bk, bm> f22870a = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final a f22873d = a.a();
    private final long e = 5000;
    private final long f = 300000;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(Context context) {
        this.f22871b = context.getApplicationContext();
        this.f22872c = new h(context.getMainLooper(), new bn(this, null));
    }

    @Override // com.google.android.gms.common.internal.g
    protected final void a(bk bkVar, ServiceConnection serviceConnection) {
        o.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f22870a) {
            bm bmVar = this.f22870a.get(bkVar);
            if (bmVar == null) {
                String valueOf = String.valueOf(bkVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (bmVar.a(serviceConnection)) {
                bmVar.f22865a.remove(serviceConnection);
                if (bmVar.a()) {
                    this.f22872c.sendMessageDelayed(this.f22872c.obtainMessage(0, bkVar), this.e);
                }
            } else {
                String valueOf2 = String.valueOf(bkVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.g
    public final boolean a(bk bkVar, ServiceConnection serviceConnection, String str) {
        bm bmVar;
        boolean z;
        o.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f22870a) {
            bm bmVar2 = this.f22870a.get(bkVar);
            if (bmVar2 == null) {
                bm bmVar3 = new bm(this, bkVar);
                bmVar3.a(serviceConnection, serviceConnection);
                bmVar3.a(str);
                this.f22870a.put(bkVar, bmVar3);
                bmVar = bmVar3;
            } else {
                this.f22872c.removeMessages(0, bkVar);
                if (!bmVar2.a(serviceConnection)) {
                    bmVar2.a(serviceConnection, serviceConnection);
                    int i = bmVar2.f22866b;
                    if (i == 1) {
                        serviceConnection.onServiceConnected(bmVar2.f, bmVar2.f22868d);
                        bmVar = bmVar2;
                    } else if (i != 2) {
                        bmVar = bmVar2;
                    } else {
                        bmVar2.a(str);
                        bmVar = bmVar2;
                    }
                } else {
                    String valueOf = String.valueOf(bkVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            z = bmVar.f22867c;
        }
        return z;
    }
}
