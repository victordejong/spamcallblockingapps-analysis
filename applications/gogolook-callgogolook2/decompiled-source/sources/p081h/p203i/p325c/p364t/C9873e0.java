package p081h.p203i.p325c.p364t;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p325c.C9435c;
/* renamed from: h.i.c.t.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/e0.class */
public class C9873e0 {

    /* renamed from: a */
    public final Context f22354a;
    @GuardedBy("this")

    /* renamed from: b */
    public String f22355b;
    @GuardedBy("this")

    /* renamed from: c */
    public String f22356c;
    @GuardedBy("this")

    /* renamed from: d */
    public int f22357d;
    @GuardedBy("this")

    /* renamed from: e */
    public int f22358e = 0;

    public C9873e0(Context context) {
        this.f22354a = context;
    }

    /* renamed from: a */
    public static String m14064a(C9435c cVar) {
        String c = cVar.m15169d().m15148c();
        if (c != null) {
            return c;
        }
        String b = cVar.m15169d().m15149b();
        if (!b.startsWith("1:")) {
            return b;
        }
        String[] split = b.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    /* renamed from: a */
    public final PackageInfo m14063a(String str) {
        try {
            return this.f22354a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            sb.toString();
            return null;
        }
    }

    /* renamed from: a */
    public String m14065a() {
        String str;
        synchronized (this) {
            if (this.f22355b == null) {
                m14058f();
            }
            str = this.f22355b;
        }
        return str;
    }

    /* renamed from: b */
    public String m14062b() {
        String str;
        synchronized (this) {
            if (this.f22356c == null) {
                m14058f();
            }
            str = this.f22356c;
        }
        return str;
    }

    /* renamed from: c */
    public int m14061c() {
        int i;
        PackageInfo a;
        synchronized (this) {
            if (this.f22357d == 0 && (a = m14063a("com.google.android.gms")) != null) {
                this.f22357d = a.versionCode;
            }
            i = this.f22357d;
        }
        return i;
    }

    /* renamed from: d */
    public int m14060d() {
        synchronized (this) {
            if (this.f22358e != 0) {
                return this.f22358e;
            }
            PackageManager packageManager = this.f22354a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!C7083o.m21122j()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f22358e = 1;
                    return this.f22358e;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                if (C7083o.m21122j()) {
                    this.f22358e = 2;
                } else {
                    this.f22358e = 1;
                }
                return this.f22358e;
            }
            this.f22358e = 2;
            return this.f22358e;
        }
    }

    /* renamed from: e */
    public boolean m14059e() {
        return m14060d() != 0;
    }

    /* renamed from: f */
    public final void m14058f() {
        synchronized (this) {
            PackageInfo a = m14063a(this.f22354a.getPackageName());
            if (a != null) {
                this.f22355b = Integer.toString(a.versionCode);
                this.f22356c = a.versionName;
            }
        }
    }
}
