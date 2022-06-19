package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: e.m.a.f.e.b.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/o.class */
public final class ServiceConnectionC24978o implements ServiceConnection, zzs {

    /* renamed from: a */
    public final Map<ServiceConnection, ServiceConnection> f69926a = new HashMap();

    /* renamed from: b */
    public int f69927b = 2;

    /* renamed from: c */
    public boolean f69928c;

    /* renamed from: d */
    public IBinder f69929d;

    /* renamed from: e */
    public final zzn f69930e;

    /* renamed from: f */
    public ComponentName f69931f;

    /* renamed from: g */
    public final /* synthetic */ C24980q f69932g;

    public ServiceConnectionC24978o(C24980q c24980q, zzn zznVar) {
        this.f69932g = c24980q;
        this.f69930e = zznVar;
    }

    /* renamed from: a */
    public final void m4248a(String str, Executor executor) {
        Intent intent;
        Bundle bundle;
        this.f69927b = 3;
        C24980q c24980q = this.f69932g;
        ConnectionTracker connectionTracker = c24980q.f69938g;
        Context context = c24980q.f69935d;
        zzn zznVar = this.f69930e;
        if (zznVar.f6060a != null) {
            intent = null;
            Intent intent2 = null;
            if (zznVar.f6064e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", zznVar.f6060a);
                try {
                    bundle = context.getContentResolver().call(zzn.f6059f, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    "Dynamic intent resolution failed: ".concat(e.toString());
                    bundle = null;
                }
                if (bundle != null) {
                    intent2 = (Intent) bundle.getParcelable("serviceResponseIntentKey");
                }
                intent = intent2;
                if (intent2 == null) {
                    String valueOf = String.valueOf(zznVar.f6060a);
                    if (valueOf.length() != 0) {
                        "Dynamic lookup for intent failed for action: ".concat(valueOf);
                        intent = intent2;
                    } else {
                        new String("Dynamic lookup for intent failed for action: ");
                        intent = intent2;
                    }
                }
            }
            if (intent == null) {
                intent = new Intent(zznVar.f6060a).setPackage(zznVar.f6061b);
            }
        } else {
            intent = new Intent().setComponent(zznVar.f6062c);
        }
        boolean m38801d = connectionTracker.m38801d(context, str, intent, this, this.f69930e.f6063d, true, executor);
        this.f69928c = m38801d;
        if (m38801d) {
            this.f69932g.f69936e.sendMessageDelayed(this.f69932g.f69936e.obtainMessage(1, this.f69930e), this.f69932g.f69940i);
            return;
        }
        this.f69927b = 2;
        try {
            C24980q c24980q2 = this.f69932g;
            c24980q2.f69938g.m38802c(c24980q2.f69935d, this);
        } catch (IllegalArgumentException e2) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f69932g.f69934c) {
            this.f69932g.f69936e.removeMessages(1, this.f69930e);
            this.f69929d = iBinder;
            this.f69931f = componentName;
            for (ServiceConnection serviceConnection : this.f69926a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f69927b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f69932g.f69934c) {
            this.f69932g.f69936e.removeMessages(1, this.f69930e);
            this.f69929d = null;
            this.f69931f = componentName;
            for (ServiceConnection serviceConnection : this.f69926a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f69927b = 2;
        }
    }
}
