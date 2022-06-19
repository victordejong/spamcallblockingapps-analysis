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
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p020b.p036e.C1502g;
/* renamed from: com.google.android.gms.cloudmessaging.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/b.class */
public class C5956b {

    /* renamed from: a */
    private static int f19092a;

    /* renamed from: b */
    private static PendingIntent f19093b;

    /* renamed from: c */
    private static final Executor f19094c = ExecutorC5980z.f19144d;

    /* renamed from: e */
    private final Context f19096e;

    /* renamed from: f */
    private final C5972r f19097f;

    /* renamed from: g */
    private final ScheduledExecutorService f19098g;

    /* renamed from: i */
    private Messenger f19100i;

    /* renamed from: j */
    private zza f19101j;

    /* renamed from: d */
    private final C1502g<String, C7968h<Bundle>> f19095d = new C1502g<>();

    /* renamed from: h */
    private Messenger f19099h = new Messenger(new HandlerC5979y(this, Looper.getMainLooper()));

    public C5956b(Context context) {
        this.f19096e = context;
        this.f19097f = new C5972r(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f19098g = scheduledThreadPoolExecutor;
    }

    /* renamed from: b */
    public static final /* synthetic */ Bundle m17542b(AbstractC7966g abstractC7966g) {
        if (abstractC7966g.mo5810q()) {
            return (Bundle) abstractC7966g.mo5814m();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(abstractC7966g.mo5815l());
            StringBuilder sb = new StringBuilder(valueOf.length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", abstractC7966g.mo5815l());
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC7966g m17541c(Bundle bundle) {
        return m17532l(bundle) ? C7970j.m5798e(null) : C7970j.m5798e(bundle);
    }

    /* renamed from: e */
    private static String m17539e() {
        String num;
        synchronized (C5956b.class) {
            try {
                int i = f19092a;
                f19092a = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: f */
    private static void m17538f(Context context, Intent intent) {
        synchronized (C5956b.class) {
            try {
                if (f19093b == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f19093b = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f19093b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public final void m17537g(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zza.C5981a());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zza) {
                        this.f19101j = (zza) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f19100i = (Messenger) parcelableExtra;
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
                        Log.d("Rpc", str.length() != 0 ? "Unexpected response string: ".concat(str) : new String("Unexpected response string: "));
                        return;
                    }
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group == null) {
                        return;
                    }
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    m17534j(group, extras);
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String valueOf2 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(valueOf2.length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(valueOf2);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", stringExtra2.length() != 0 ? "Received InstanceID error ".concat(stringExtra2) : new String("Received InstanceID error "));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (this.f19095d) {
                        for (int i = 0; i < this.f19095d.size(); i++) {
                            m17534j(this.f19095d.m29910i(i), intent2.getExtras());
                        }
                    }
                    return;
                }
                String[] split = stringExtra2.split("\\|");
                if (split.length <= 2 || !"ID".equals(split[1])) {
                    Log.w("Rpc", stringExtra2.length() != 0 ? "Unexpected structured response ".concat(stringExtra2) : new String("Unexpected structured response "));
                    return;
                }
                String str2 = split[2];
                String str3 = split[3];
                String str4 = str3;
                if (str3.startsWith(":")) {
                    str4 = str3.substring(1);
                }
                m17534j(str2, intent2.putExtra("error", str4).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    /* renamed from: i */
    public static final /* synthetic */ void m17535i(C7968h c7968h) {
        if (c7968h.m5804d(new IOException("TIMEOUT"))) {
            Log.w("Rpc", "No response");
        }
    }

    /* renamed from: j */
    private final void m17534j(String str, Bundle bundle) {
        synchronized (this.f19095d) {
            C7968h<Bundle> remove = this.f19095d.remove(str);
            if (remove != null) {
                remove.m5805c(bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    /* renamed from: l */
    private static boolean m17532l(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* renamed from: m */
    private final AbstractC7966g<Bundle> m17531m(Bundle bundle) {
        String m17539e = m17539e();
        C7968h<Bundle> c7968h = new C7968h<>();
        synchronized (this.f19095d) {
            this.f19095d.put(m17539e, c7968h);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f19097f.m17513a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        m17538f(this.f19096e, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(m17539e).length() + 5);
        sb.append("|ID|");
        sb.append(m17539e);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.f19099h);
        if (this.f19100i != null || this.f19101j != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f19100i;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.f19101j.m17507b(obtain);
                }
            } catch (RemoteException e) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            c7968h.m5807a().mo5824c(f19094c, new AbstractC7958c(this, m17539e, this.f19098g.schedule(new Runnable(c7968h) { // from class: com.google.android.gms.cloudmessaging.u

                /* renamed from: d */
                private final C7968h f19136d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19136d = c7968h;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C5956b.m17535i(this.f19136d);
                }
            }, 30L, TimeUnit.SECONDS)) { // from class: com.google.android.gms.cloudmessaging.x

                /* renamed from: a */
                private final C5956b f19140a;

                /* renamed from: b */
                private final String f19141b;

                /* renamed from: c */
                private final ScheduledFuture f19142c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19140a = this;
                    this.f19141b = m17539e;
                    this.f19142c = schedule2;
                }

                @Override // com.google.android.gms.tasks.AbstractC7958c
                /* renamed from: a */
                public final void mo1124a(AbstractC7966g abstractC7966g) {
                    this.f19140a.m17533k(this.f19141b, this.f19142c, abstractC7966g);
                }
            });
            return c7968h.m5807a();
        }
        if (this.f19097f.m17513a() == 2) {
            this.f19096e.sendBroadcast(intent);
        } else {
            this.f19096e.startService(intent);
        }
        c7968h.m5807a().mo5824c(f19094c, new AbstractC7958c(this, m17539e, this.f19098g.schedule(new Runnable(c7968h) { // from class: com.google.android.gms.cloudmessaging.u

            /* renamed from: d */
            private final C7968h f19136d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19136d = c7968h;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C5956b.m17535i(this.f19136d);
            }
        }, 30L, TimeUnit.SECONDS)) { // from class: com.google.android.gms.cloudmessaging.x

            /* renamed from: a */
            private final C5956b f19140a;

            /* renamed from: b */
            private final String f19141b;

            /* renamed from: c */
            private final ScheduledFuture f19142c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19140a = this;
                this.f19141b = m17539e;
                this.f19142c = schedule2;
            }

            @Override // com.google.android.gms.tasks.AbstractC7958c
            /* renamed from: a */
            public final void mo1124a(AbstractC7966g abstractC7966g) {
                this.f19140a.m17533k(this.f19141b, this.f19142c, abstractC7966g);
            }
        });
        return c7968h.m5807a();
    }

    /* renamed from: a */
    public AbstractC7966g<Bundle> m17543a(Bundle bundle) {
        boolean z = true;
        if (this.f19097f.m17511c() >= 12000000) {
            return C5960f.m17528c(this.f19096e).m17525f(1, bundle).mo5818i(f19094c, C5974t.f19135a);
        }
        if (this.f19097f.m17513a() == 0) {
            z = false;
        }
        return !z ? C7970j.m5799d(new IOException("MISSING_INSTANCEID_SERVICE")) : m17531m(bundle).mo5816k(f19094c, new AbstractC7954a(this, bundle) { // from class: com.google.android.gms.cloudmessaging.v

            /* renamed from: a */
            private final C5956b f19137a;

            /* renamed from: b */
            private final Bundle f19138b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19137a = this;
                this.f19138b = bundle;
            }

            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public final Object mo1125a(AbstractC7966g abstractC7966g) {
                return this.f19137a.m17540d(this.f19138b, abstractC7966g);
            }
        });
    }

    /* renamed from: d */
    public final /* synthetic */ AbstractC7966g m17540d(Bundle bundle, AbstractC7966g abstractC7966g) {
        if (abstractC7966g.mo5810q() && m17532l((Bundle) abstractC7966g.mo5814m())) {
            return m17531m(bundle).mo5808s(f19094c, C5977w.f19139a);
        }
        return abstractC7966g;
    }

    /* renamed from: k */
    public final /* synthetic */ void m17533k(String str, ScheduledFuture scheduledFuture, AbstractC7966g abstractC7966g) {
        synchronized (this.f19095d) {
            this.f19095d.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
