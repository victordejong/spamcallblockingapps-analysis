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
import androidx.b.g;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
import com.google.android.gms.tasks.k;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f22541a = z.f22583a;

    /* renamed from: c  reason: collision with root package name */
    private static int f22542c;

    /* renamed from: d  reason: collision with root package name */
    private static PendingIntent f22543d;
    private final Context e;
    private final r f;
    private final ScheduledExecutorService g;
    private Messenger i;
    private zza j;

    /* renamed from: b  reason: collision with root package name */
    final g<String, i<Bundle>> f22544b = new g<>();
    private Messenger h = new Messenger(new y(this, Looper.getMainLooper()));

    public b(Context context) {
        this.e = context;
        this.f = new r(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.g = scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Bundle a(h hVar) throws Exception {
        if (hVar.b()) {
            return (Bundle) hVar.d();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(hVar.e());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", hVar.e());
    }

    private static String a() {
        String num;
        synchronized (b.class) {
            try {
                int i = f22542c;
                f22542c = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    private static void a(Context context, Intent intent) {
        synchronized (b.class) {
            try {
                if (f22543d == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f22543d = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f22543d);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(b bVar, Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("Rpc", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(new zza.a());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof zza) {
                bVar.j = (zza) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                bVar.i = (Messenger) parcelableExtra;
            }
        }
        Intent intent2 = (Intent) message.obj;
        String action = intent2.getAction();
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            String stringExtra = intent2.getStringExtra("registration_id");
            String str = stringExtra;
            if (stringExtra == null) {
                str = intent2.getStringExtra("unregistered");
            }
            if (str == null) {
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String valueOf = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(valueOf);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    String valueOf2 = String.valueOf(stringExtra2);
                    if (valueOf2.length() != 0) {
                        "Received InstanceID error ".concat(valueOf2);
                    } else {
                        new String("Received InstanceID error ");
                    }
                }
                if (stringExtra2.startsWith("|")) {
                    String[] split = stringExtra2.split("\\|");
                    if (split.length <= 2 || !"ID".equals(split[1])) {
                        String valueOf3 = String.valueOf(stringExtra2);
                        Log.w("Rpc", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
                        return;
                    }
                    String str2 = split[2];
                    String str3 = split[3];
                    String str4 = str3;
                    if (str3.startsWith(":")) {
                        str4 = str3.substring(1);
                    }
                    bVar.a(str2, intent2.putExtra("error", str4).getExtras());
                    return;
                }
                synchronized (bVar.f22544b) {
                    for (int i = 0; i < bVar.f22544b.size(); i++) {
                        bVar.a(bVar.f22544b.b(i), intent2.getExtras());
                    }
                }
                return;
            }
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
            if (matcher.matches()) {
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                if (group != null) {
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    bVar.a(group, extras);
                }
            } else if (Log.isLoggable("Rpc", 3)) {
                String valueOf4 = String.valueOf(str);
                if (valueOf4.length() != 0) {
                    "Unexpected response string: ".concat(valueOf4);
                } else {
                    new String("Unexpected response string: ");
                }
            }
        } else if (Log.isLoggable("Rpc", 3)) {
            String valueOf5 = String.valueOf(action);
            if (valueOf5.length() != 0) {
                "Unexpected response action: ".concat(valueOf5);
            } else {
                new String("Unexpected response action: ");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(i iVar) {
        if (iVar.b((Exception) new IOException(Payload.RESPONSE_TIMEOUT))) {
            Log.w("Rpc", "No response");
        }
    }

    private final void a(String str, Bundle bundle) {
        synchronized (this.f22544b) {
            i<Bundle> remove = this.f22544b.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.a((i<Bundle>) bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ h d(Bundle bundle) throws Exception {
        return b(bundle) ? k.a((Object) null) : k.a(bundle);
    }

    public final h<Bundle> a(final Bundle bundle) {
        boolean z = true;
        if (this.f.b() >= 12000000) {
            f a2 = f.a(this.e);
            return a2.a(new s(a2.a(), 1, bundle)).a(f22541a, t.f22574a);
        }
        if (this.f.a() == 0) {
            z = false;
        }
        return !z ? k.a((Exception) new IOException("MISSING_INSTANCEID_SERVICE")) : c(bundle).b(f22541a, new com.google.android.gms.tasks.b(this, bundle) { // from class: com.google.android.gms.cloudmessaging.v

            /* renamed from: a  reason: collision with root package name */
            private final b f22576a;

            /* renamed from: b  reason: collision with root package name */
            private final Bundle f22577b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22576a = this;
                this.f22577b = bundle;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(h hVar) {
                b bVar = this.f22576a;
                Bundle bundle2 = this.f22577b;
                if (hVar.b() && b.b((Bundle) hVar.d())) {
                    return bVar.c(bundle2).a(b.f22541a, w.f22578a);
                }
                return hVar;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h<Bundle> c(Bundle bundle) {
        final String a2 = a();
        final i<Bundle> iVar = new i<>();
        synchronized (this.f22544b) {
            this.f22544b.put(a2, iVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f.a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        a(this.e, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 5);
        sb.append("|ID|");
        sb.append(a2);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
        }
        intent.putExtra("google.messenger", this.h);
        if (!(this.i == null && this.j == null)) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.i;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.j.zza(obtain);
                }
            } catch (RemoteException e) {
                Log.isLoggable("Rpc", 3);
            }
            final ScheduledFuture<?> schedule = this.g.schedule(new Runnable(iVar) { // from class: com.google.android.gms.cloudmessaging.u

                /* renamed from: a  reason: collision with root package name */
                private final i f22575a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22575a = iVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    b.a(this.f22575a);
                }
            }, 30L, TimeUnit.SECONDS);
            iVar.f30014a.a(f22541a, new d(this, a2, schedule) { // from class: com.google.android.gms.cloudmessaging.x

                /* renamed from: a  reason: collision with root package name */
                private final b f22579a;

                /* renamed from: b  reason: collision with root package name */
                private final String f22580b;

                /* renamed from: c  reason: collision with root package name */
                private final ScheduledFuture f22581c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22579a = this;
                    this.f22580b = a2;
                    this.f22581c = schedule;
                }

                @Override // com.google.android.gms.tasks.d
                public final void onComplete(h hVar) {
                    b bVar = this.f22579a;
                    String str = this.f22580b;
                    ScheduledFuture scheduledFuture = this.f22581c;
                    synchronized (bVar.f22544b) {
                        bVar.f22544b.remove(str);
                    }
                    scheduledFuture.cancel(false);
                }
            });
            return iVar.f30014a;
        }
        if (this.f.a() == 2) {
            this.e.sendBroadcast(intent);
        } else {
            this.e.startService(intent);
        }
        final ScheduledFuture schedule2 = this.g.schedule(new Runnable(iVar) { // from class: com.google.android.gms.cloudmessaging.u

            /* renamed from: a  reason: collision with root package name */
            private final i f22575a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22575a = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                b.a(this.f22575a);
            }
        }, 30L, TimeUnit.SECONDS);
        iVar.f30014a.a(f22541a, new d(this, a2, schedule2) { // from class: com.google.android.gms.cloudmessaging.x

            /* renamed from: a  reason: collision with root package name */
            private final b f22579a;

            /* renamed from: b  reason: collision with root package name */
            private final String f22580b;

            /* renamed from: c  reason: collision with root package name */
            private final ScheduledFuture f22581c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22579a = this;
                this.f22580b = a2;
                this.f22581c = schedule2;
            }

            @Override // com.google.android.gms.tasks.d
            public final void onComplete(h hVar) {
                b bVar = this.f22579a;
                String str = this.f22580b;
                ScheduledFuture scheduledFuture = this.f22581c;
                synchronized (bVar.f22544b) {
                    bVar.f22544b.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return iVar.f30014a;
    }
}
