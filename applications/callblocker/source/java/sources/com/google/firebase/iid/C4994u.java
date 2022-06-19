package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import androidx.p013b.C0386g;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
import com.google.android.gms.tasks.C4473j;
import com.google.firebase.iid.C4958as;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.u */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/u.class */
final class C4994u {

    /* renamed from: a */
    private static int f21179a = 0;

    /* renamed from: b */
    private static PendingIntent f21180b;

    /* renamed from: d */
    private final Context f21182d;

    /* renamed from: e */
    private final C4988o f21183e;

    /* renamed from: g */
    private Messenger f21185g;

    /* renamed from: h */
    private C4958as f21186h;
    @GuardedBy("responseCallbacks")

    /* renamed from: c */
    private final C0386g<String, C4470h<Bundle>> f21181c = new C0386g<>();

    /* renamed from: f */
    private Messenger f21184f = new Messenger(new HandlerC4997x(this, Looper.getMainLooper()));

    public C4994u(Context context, C4988o c4988o) {
        this.f21182d = context;
        this.f21183e = c4988o;
    }

    /* renamed from: a */
    private static String m1908a() {
        String num;
        synchronized (C4994u.class) {
            try {
                int i = f21179a;
                f21179a = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: a */
    private static void m1907a(Context context, Intent intent) {
        synchronized (C4994u.class) {
            try {
                if (f21180b == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f21180b = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f21180b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m1905a(Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("FirebaseInstanceId", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(new C4958as.C4959a());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof C4958as) {
                this.f21186h = (C4958as) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.f21185g = (Messenger) parcelableExtra;
            }
        }
        Intent intent2 = (Intent) message.obj;
        String action = intent2.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                return;
            }
            String valueOf = String.valueOf(action);
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
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
                if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                    return;
                }
                String valueOf2 = String.valueOf(str);
                Log.d("FirebaseInstanceId", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                return;
            }
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            Bundle extras = intent2.getExtras();
            extras.putString("registration_id", group2);
            m1903a(group, extras);
            return;
        }
        String stringExtra2 = intent2.getStringExtra("error");
        if (stringExtra2 == null) {
            String valueOf3 = String.valueOf(intent2.getExtras());
            Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf3).length() + 49).append("Unexpected response, no error or registration id ").append(valueOf3).toString());
            return;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf4 = String.valueOf(stringExtra2);
            Log.d("FirebaseInstanceId", valueOf4.length() != 0 ? "Received InstanceID error ".concat(valueOf4) : new String("Received InstanceID error "));
        }
        if (!stringExtra2.startsWith("|")) {
            synchronized (this.f21181c) {
                for (int i = 0; i < this.f21181c.size(); i++) {
                    m1903a(this.f21181c.m21085b(i), intent2.getExtras());
                }
            }
            return;
        }
        String[] split = stringExtra2.split("\\|");
        if (split.length <= 2 || !"ID".equals(split[1])) {
            String valueOf5 = String.valueOf(stringExtra2);
            Log.w("FirebaseInstanceId", valueOf5.length() != 0 ? "Unexpected structured response ".concat(valueOf5) : new String("Unexpected structured response "));
            return;
        }
        String str2 = split[2];
        String str3 = split[3];
        String str4 = str3;
        if (str3.startsWith(":")) {
            str4 = str3.substring(1);
        }
        m1903a(str2, intent2.putExtra("error", str4).getExtras());
    }

    /* renamed from: a */
    private final void m1903a(String str, Bundle bundle) {
        synchronized (this.f21181c) {
            C4470h<Bundle> remove = this.f21181c.remove(str);
            if (remove != null) {
                remove.m3887a((C4470h<Bundle>) bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    /* renamed from: b */
    private final Bundle m1902b(Bundle bundle) {
        Bundle m1901c = m1901c(bundle);
        Bundle bundle2 = m1901c;
        if (m1901c != null) {
            bundle2 = m1901c;
            if (m1901c.containsKey("google.messenger")) {
                Bundle m1901c2 = m1901c(bundle);
                bundle2 = m1901c2;
                if (m1901c2 != null) {
                    bundle2 = m1901c2;
                    if (m1901c2.containsKey("google.messenger")) {
                        bundle2 = null;
                    }
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Bundle m1901c(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.C4994u.m1901c(android.os.Bundle):android.os.Bundle");
    }

    /* renamed from: a */
    public final Bundle m1906a(Bundle bundle) {
        Bundle m1902b;
        if (this.f21183e.m1915e() >= 12000000) {
            try {
                m1902b = (Bundle) C4473j.m3884a((AbstractC4469g<Object>) C4977d.m1935a(this.f21182d).m1936a(1, bundle));
            } catch (InterruptedException | ExecutionException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e);
                    Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 22).append("Error making request: ").append(valueOf).toString());
                }
                m1902b = (!(e.getCause() instanceof zzam) || ((zzam) e.getCause()).m1881a() != 4) ? null : m1902b(bundle);
            }
        } else {
            m1902b = m1902b(bundle);
        }
        return m1902b;
    }
}
