package p081h.p203i.p204a.p224e.p258i;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
/* renamed from: h.i.a.e.i.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/n.class */
public final class ServiceConnectionC7158n implements ServiceConnection {

    /* renamed from: a */
    public final Context f17266a;

    /* renamed from: b */
    public final Intent f17267b;

    /* renamed from: c */
    public final ScheduledExecutorService f17268c;

    /* renamed from: d */
    public final Queue<C7154j> f17269d;

    /* renamed from: e */
    public BinderC7156l f17270e;

    /* renamed from: f */
    public boolean f17271f;

    public ServiceConnectionC7158n(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0));
    }

    @VisibleForTesting
    public ServiceConnectionC7158n(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f17269d = new ArrayDeque();
        this.f17271f = false;
        this.f17266a = context.getApplicationContext();
        this.f17267b = new Intent(str).setPackage(this.f17266a.getPackageName());
        this.f17268c = scheduledExecutorService;
    }

    /* renamed from: a */
    public final void m21020a() {
        synchronized (this) {
            Log.isLoggable("EnhancedIntentService", 3);
            while (!this.f17269d.isEmpty()) {
                Log.isLoggable("EnhancedIntentService", 3);
                if (this.f17270e == null || !this.f17270e.isBinderAlive()) {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        boolean z = !this.f17271f;
                        StringBuilder sb = new StringBuilder(39);
                        sb.append("binder is dead. start connection? ");
                        sb.append(z);
                        sb.toString();
                    }
                    if (!this.f17271f) {
                        this.f17271f = true;
                        try {
                        } catch (SecurityException e) {
                            Log.e("EnhancedIntentService", "Exception while binding the service", e);
                        }
                        if (!C7064a.m21184a().m21183a(this.f17266a, this.f17267b, this, 65)) {
                            Log.e("EnhancedIntentService", "binding to the service failed");
                            while (!this.f17269d.isEmpty()) {
                                this.f17269d.poll().m21023a();
                            }
                        } else {
                            return;
                        }
                    }
                    return;
                }
                Log.isLoggable("EnhancedIntentService", 3);
                this.f17270e.m21022a(this.f17269d.poll());
            }
        }
    }

    /* renamed from: a */
    public final void m21019a(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        synchronized (this) {
            Log.isLoggable("EnhancedIntentService", 3);
            this.f17269d.add(new C7154j(intent, pendingResult, this.f17268c));
            m21020a();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.f17271f = false;
            this.f17270e = (BinderC7156l) iBinder;
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
                sb.toString();
            }
            m21020a();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
            sb.toString();
        }
        m21020a();
    }
}
