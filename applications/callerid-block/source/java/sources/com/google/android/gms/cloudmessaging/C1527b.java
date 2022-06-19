package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2398h;
import com.google.android.gms.tasks.C2401j;
import d.e.g;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.cloudmessaging.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/b.class */
public class C1527b {

    /* renamed from: h */
    private static int f5756h;

    /* renamed from: i */
    private static PendingIntent f5757i;

    /* renamed from: j */
    private static final Executor f5758j = ExecutorC1544z.f5800b;

    /* renamed from: b */
    private final Context f5760b;

    /* renamed from: c */
    private final C1542r f5761c;

    /* renamed from: d */
    private final ScheduledExecutorService f5762d;

    /* renamed from: f */
    private Messenger f5764f;

    /* renamed from: g */
    private zza f5765g;
    @GuardedBy("responseCallbacks")

    /* renamed from: a */
    private final g<String, C2398h<Bundle>> f5759a = new g<>();

    /* renamed from: e */
    private Messenger f5763e = new Messenger((Handler) new y(this, Looper.getMainLooper()));

    public C1527b(Context context) {
        this.f5760b = context;
        this.f5761c = new C1542r(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f5762d = scheduledThreadPoolExecutor;
    }

    /* renamed from: b */
    static final /* synthetic */ Bundle m8507b(AbstractC2397g abstractC2397g) {
        if (abstractC2397g.m3772o()) {
            return (Bundle) abstractC2397g.m3776k();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(abstractC2397g.m3777j());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", abstractC2397g.m3777j());
    }

    /* renamed from: c */
    static final /* synthetic */ AbstractC2397g m8506c(Bundle bundle) {
        return m8497l(bundle) ? C2401j.m3760e(null) : C2401j.m3760e(bundle);
    }

    /* renamed from: e */
    private static String m8504e() {
        String num;
        synchronized (C1527b.class) {
            try {
                int i = f5756h;
                f5756h = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: f */
    private static void m8503f(Context context, Intent intent) {
        synchronized (C1527b.class) {
            try {
                if (f5757i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f5757i = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f5757i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public final void m8502g(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zza.C1545a());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zza) {
                        this.f5765g = (zza) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f5764f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (!Log.isLoggable("Rpc", 3)) {
                        return;
                    }
                    String valueOf = String.valueOf(action);
                    Log.d("Rpc", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                String str = stringExtra;
                if (stringExtra == null) {
                    str = intent2.getStringExtra("unregistered");
                }
                if (str != null) {
                    Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
                    if (!matcher.matches()) {
                        if (!Log.isLoggable("Rpc", 3)) {
                            return;
                        }
                        String valueOf2 = String.valueOf(str);
                        Log.d("Rpc", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                        return;
                    }
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group == null) {
                        return;
                    }
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    m8499j(group, extras);
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String valueOf3 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(valueOf3);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    String valueOf4 = String.valueOf(stringExtra2);
                    Log.d("Rpc", valueOf4.length() != 0 ? "Received InstanceID error ".concat(valueOf4) : new String("Received InstanceID error "));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (this.f5759a) {
                        for (int i = 0; i < this.f5759a.size(); i++) {
                            m8499j((String) this.f5759a.i(i), intent2.getExtras());
                        }
                    }
                    return;
                }
                String[] split = stringExtra2.split("\\|");
                if (split.length <= 2 || !"ID".equals(split[1])) {
                    String valueOf5 = String.valueOf(stringExtra2);
                    Log.w("Rpc", valueOf5.length() != 0 ? "Unexpected structured response ".concat(valueOf5) : new String("Unexpected structured response "));
                    return;
                }
                String str2 = split[2];
                String str3 = split[3];
                String str4 = str3;
                if (str3.startsWith(":")) {
                    str4 = str3.substring(1);
                }
                m8499j(str2, intent2.putExtra("error", str4).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    /* renamed from: i */
    public static final /* synthetic */ void m8500i(C2398h c2398h) {
        if (c2398h.m3766d(new IOException("TIMEOUT"))) {
            Log.w("Rpc", "No response");
        }
    }

    /* renamed from: j */
    private final void m8499j(String str, Bundle bundle) {
        synchronized (this.f5759a) {
            C2398h c2398h = (C2398h) this.f5759a.remove(str);
            if (c2398h != null) {
                c2398h.m3767c(bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    /* renamed from: l */
    private static boolean m8497l(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* renamed from: m */
    private final AbstractC2397g<Bundle> m8496m(Bundle bundle) {
        String m8504e = m8504e();
        C2398h c2398h = new C2398h();
        synchronized (this.f5759a) {
            this.f5759a.put(m8504e, c2398h);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        intent.setAction(this.f5761c.m8476a() == 2 ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.putExtras(bundle);
        m8503f(this.f5760b, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(m8504e).length() + 5);
        sb.append("|ID|");
        sb.append(m8504e);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.f5763e);
        if (this.f5764f != null || this.f5765g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f5764f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.f5765g.m8472b(obtain);
                }
            } catch (RemoteException e) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            c2398h.m3769a().m3784c(f5758j, new x(this, m8504e, this.f5762d.schedule(new Runnable(c2398h) { // from class: com.google.android.gms.cloudmessaging.u

                /* renamed from: b */
                private final C2398h f5799b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5799b = c2398h;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C1527b.m8500i(this.f5799b);
                }
            }, 30L, TimeUnit.SECONDS)));
            return c2398h.m3769a();
        }
        if (this.f5761c.m8476a() == 2) {
            this.f5760b.sendBroadcast(intent);
        } else {
            this.f5760b.startService(intent);
        }
        c2398h.m3769a().m3784c(f5758j, new x(this, m8504e, this.f5762d.schedule(new Runnable(c2398h) { // from class: com.google.android.gms.cloudmessaging.u

            /* renamed from: b */
            private final C2398h f5799b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5799b = c2398h;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C1527b.m8500i(this.f5799b);
            }
        }, 30L, TimeUnit.SECONDS)));
        return c2398h.m3769a();
    }

    /* renamed from: a */
    public AbstractC2397g<Bundle> m8508a(Bundle bundle) {
        boolean z = true;
        if (this.f5761c.m8474c() >= 12000000) {
            return C1531f.m8493c(this.f5760b).m8490f(1, bundle).m3780g(f5758j, t.a);
        }
        if (this.f5761c.m8476a() == 0) {
            z = false;
        }
        return !z ? C2401j.m3761d(new IOException("MISSING_INSTANCEID_SERVICE")) : m8496m(bundle).m3778i(f5758j, new v(this, bundle));
    }

    /* renamed from: d */
    final /* synthetic */ AbstractC2397g m8505d(Bundle bundle, AbstractC2397g abstractC2397g) {
        if (abstractC2397g.m3772o() && m8497l((Bundle) abstractC2397g.m3776k())) {
            return m8496m(bundle).m3770q(f5758j, w.a);
        }
        return abstractC2397g;
    }

    /* renamed from: k */
    final /* synthetic */ void m8498k(String str, ScheduledFuture scheduledFuture, AbstractC2397g abstractC2397g) {
        synchronized (this.f5759a) {
            this.f5759a.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
