package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.p023b.C0441g;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.cloudmessaging.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/b.class */
public final class C11779b {

    /* renamed from: a */
    static final Executor f39096a = ExecutorC11803z.f39148a;

    /* renamed from: c */
    private static int f39097c;

    /* renamed from: d */
    private static PendingIntent f39098d;

    /* renamed from: e */
    private final Context f39100e;

    /* renamed from: f */
    private final C11795r f39101f;

    /* renamed from: g */
    private final ScheduledExecutorService f39102g;

    /* renamed from: i */
    private Messenger f39104i;

    /* renamed from: j */
    private zza f39105j;

    /* renamed from: b */
    final C0441g<String, C14186i<Bundle>> f39099b = new C0441g<>();

    /* renamed from: h */
    private Messenger f39103h = new Messenger(new HandlerC11802y(this, Looper.getMainLooper()));

    public C11779b(Context context) {
        this.f39100e = context;
        this.f39101f = new C11795r(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f39102g = scheduledThreadPoolExecutor;
    }

    /* renamed from: a */
    public static final /* synthetic */ Bundle m19501a(AbstractC14185h abstractC14185h) throws Exception {
        if (abstractC14185h.mo11478b()) {
            return (Bundle) abstractC14185h.mo11475d();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(abstractC14185h.mo11474e());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", abstractC14185h.mo11474e());
    }

    /* renamed from: a */
    private static String m19505a() {
        String num;
        synchronized (C11779b.class) {
            try {
                int i = f39097c;
                f39097c = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: a */
    private static void m19504a(Context context, Intent intent) {
        synchronized (C11779b.class) {
            try {
                if (f39098d == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f39098d = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f39098d);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m19502a(C11779b c11779b, Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("Rpc", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(new zza.C11804a());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof zza) {
                c11779b.f39105j = (zza) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                c11779b.f39104i = (Messenger) parcelableExtra;
            }
        }
        Intent intent2 = (Intent) message.obj;
        String action = intent2.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            if (!Log.isLoggable("Rpc", 3)) {
                return;
            }
            String valueOf = String.valueOf(action);
            if (valueOf.length() != 0) {
                "Unexpected response action: ".concat(valueOf);
                return;
            } else {
                new String("Unexpected response action: ");
                return;
            }
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
                if (valueOf2.length() != 0) {
                    "Unexpected response string: ".concat(valueOf2);
                    return;
                } else {
                    new String("Unexpected response string: ");
                    return;
                }
            }
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group == null) {
                return;
            }
            Bundle extras = intent2.getExtras();
            extras.putString("registration_id", group2);
            c11779b.m19499a(group, extras);
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
            if (valueOf4.length() != 0) {
                "Received InstanceID error ".concat(valueOf4);
            } else {
                new String("Received InstanceID error ");
            }
        }
        if (!stringExtra2.startsWith("|")) {
            synchronized (c11779b.f39099b) {
                for (int i = 0; i < c11779b.f39099b.size(); i++) {
                    c11779b.m19499a(c11779b.f39099b.m45517b(i), intent2.getExtras());
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
        c11779b.m19499a(str2, intent2.putExtra("error", str4).getExtras());
    }

    /* renamed from: a */
    public static final /* synthetic */ void m19500a(C14186i c14186i) {
        if (c14186i.m11470b((Exception) new IOException(Payload.RESPONSE_TIMEOUT))) {
            Log.w("Rpc", "No response");
        }
    }

    /* renamed from: a */
    private final void m19499a(String str, Bundle bundle) {
        synchronized (this.f39099b) {
            C14186i<Bundle> remove = this.f39099b.remove(str);
            if (remove != null) {
                remove.m11471a((C14186i<Bundle>) bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    /* renamed from: b */
    public static boolean m19498b(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14185h m19496d(Bundle bundle) throws Exception {
        return m19498b(bundle) ? C14188k.m11464a((Object) null) : C14188k.m11464a(bundle);
    }

    /* renamed from: a */
    public final AbstractC14185h<Bundle> m19503a(Bundle bundle) {
        boolean z = true;
        if (this.f39101f.m19481b() >= 12000000) {
            C11783f m19494a = C11783f.m19494a(this.f39100e);
            return m19494a.m19493a(new C11796s(m19494a.m19495a(), 1, bundle)).mo11484a(f39096a, C11797t.f39139a);
        }
        if (this.f39101f.m19483a() == 0) {
            z = false;
        }
        return !z ? C14188k.m11465a((Exception) new IOException("MISSING_INSTANCEID_SERVICE")) : m19497c(bundle).mo11477b(f39096a, new AbstractC14179b(this, bundle) { // from class: com.google.android.gms.cloudmessaging.v

            /* renamed from: a */
            private final C11779b f39141a;

            /* renamed from: b */
            private final Bundle f39142b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39141a = this;
                this.f39142b = bundle;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h) {
                C11779b c11779b = this.f39141a;
                Bundle bundle2 = this.f39142b;
                if (abstractC14185h.mo11478b() && C11779b.m19498b((Bundle) abstractC14185h.mo11475d())) {
                    return c11779b.m19497c(bundle2).mo11479a(C11779b.f39096a, C11800w.f39143a);
                }
                return abstractC14185h;
            }
        });
    }

    /* renamed from: c */
    public final AbstractC14185h<Bundle> m19497c(Bundle bundle) {
        String m19505a = m19505a();
        C14186i<Bundle> c14186i = new C14186i<>();
        synchronized (this.f39099b) {
            this.f39099b.put(m19505a, c14186i);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f39101f.m19483a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        m19504a(this.f39100e, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(m19505a).length() + 5);
        sb.append("|ID|");
        sb.append(m19505a);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
        }
        intent.putExtra("google.messenger", this.f39103h);
        if (this.f39104i != null || this.f39105j != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f39104i;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.f39105j.zza(obtain);
                }
            } catch (RemoteException e) {
                Log.isLoggable("Rpc", 3);
            }
            c14186i.f52142a.mo11482a(f39096a, new AbstractC14181d(this, m19505a, this.f39102g.schedule(new Runnable(c14186i) { // from class: com.google.android.gms.cloudmessaging.u

                /* renamed from: a */
                private final C14186i f39140a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39140a = c14186i;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C11779b.m19500a(this.f39140a);
                }
            }, 30L, TimeUnit.SECONDS)) { // from class: com.google.android.gms.cloudmessaging.x

                /* renamed from: a */
                private final C11779b f39144a;

                /* renamed from: b */
                private final String f39145b;

                /* renamed from: c */
                private final ScheduledFuture f39146c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39144a = this;
                    this.f39145b = m19505a;
                    this.f39146c = schedule2;
                }

                @Override // com.google.android.gms.tasks.AbstractC14181d
                public final void onComplete(AbstractC14185h abstractC14185h) {
                    C11779b c11779b = this.f39144a;
                    String str = this.f39145b;
                    ScheduledFuture scheduledFuture = this.f39146c;
                    synchronized (c11779b.f39099b) {
                        c11779b.f39099b.remove(str);
                    }
                    scheduledFuture.cancel(false);
                }
            });
            return c14186i.f52142a;
        }
        if (this.f39101f.m19483a() == 2) {
            this.f39100e.sendBroadcast(intent);
        } else {
            this.f39100e.startService(intent);
        }
        c14186i.f52142a.mo11482a(f39096a, new AbstractC14181d(this, m19505a, this.f39102g.schedule(new Runnable(c14186i) { // from class: com.google.android.gms.cloudmessaging.u

            /* renamed from: a */
            private final C14186i f39140a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39140a = c14186i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C11779b.m19500a(this.f39140a);
            }
        }, 30L, TimeUnit.SECONDS)) { // from class: com.google.android.gms.cloudmessaging.x

            /* renamed from: a */
            private final C11779b f39144a;

            /* renamed from: b */
            private final String f39145b;

            /* renamed from: c */
            private final ScheduledFuture f39146c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39144a = this;
                this.f39145b = m19505a;
                this.f39146c = schedule2;
            }

            @Override // com.google.android.gms.tasks.AbstractC14181d
            public final void onComplete(AbstractC14185h abstractC14185h) {
                C11779b c11779b = this.f39144a;
                String str = this.f39145b;
                ScheduledFuture scheduledFuture = this.f39146c;
                synchronized (c11779b.f39099b) {
                    c11779b.f39099b.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return c14186i.f52142a;
    }
}
