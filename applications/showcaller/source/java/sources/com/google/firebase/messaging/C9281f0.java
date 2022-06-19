package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.C6237o;
import com.google.firebase.C8849c;
import java.util.List;
/* renamed from: com.google.firebase.messaging.f0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/f0.class */
public class C9281f0 {

    /* renamed from: a */
    private final Context f39786a;

    /* renamed from: b */
    private String f39787b;

    /* renamed from: c */
    private String f39788c;

    /* renamed from: d */
    private int f39789d;

    /* renamed from: e */
    private int f39790e = 0;

    public C9281f0(Context context) {
        this.f39786a = context;
    }

    /* renamed from: c */
    public static String m1262c(C8849c c8849c) {
        String m1659d = c8849c.m2530j().m1659d();
        if (m1659d != null) {
            return m1659d;
        }
        String m1660c = c8849c.m2530j().m1660c();
        if (!m1660c.startsWith("1:")) {
            return m1660c;
        }
        String[] split = m1660c.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (!str.isEmpty()) {
            return str;
        }
        return null;
    }

    /* renamed from: f */
    private PackageInfo m1259f(String str) {
        try {
            return this.f39786a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    /* renamed from: h */
    private void m1257h() {
        synchronized (this) {
            PackageInfo m1259f = m1259f(this.f39786a.getPackageName());
            if (m1259f != null) {
                this.f39787b = Integer.toString(m1259f.versionCode);
                this.f39788c = m1259f.versionName;
            }
        }
    }

    /* renamed from: a */
    public String m1264a() {
        String str;
        synchronized (this) {
            if (this.f39787b == null) {
                m1257h();
            }
            str = this.f39787b;
        }
        return str;
    }

    /* renamed from: b */
    public String m1263b() {
        String str;
        synchronized (this) {
            if (this.f39788c == null) {
                m1257h();
            }
            str = this.f39788c;
        }
        return str;
    }

    /* renamed from: d */
    public int m1261d() {
        int i;
        PackageInfo m1259f;
        synchronized (this) {
            if (this.f39789d == 0 && (m1259f = m1259f("com.google.android.gms")) != null) {
                this.f39789d = m1259f.versionCode;
            }
            i = this.f39789d;
        }
        return i;
    }

    /* renamed from: e */
    int m1260e() {
        synchronized (this) {
            int i = this.f39790e;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f39786a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
                return 0;
            }
            int i2 = 1;
            if (!C6237o.m16773k()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f39790e = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f39790e = 2;
                return 2;
            }
            Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
            if (C6237o.m16773k()) {
                this.f39790e = 2;
                i2 = 2;
            } else {
                this.f39790e = 1;
            }
            return i2;
        }
    }

    /* renamed from: g */
    public boolean m1258g() {
        return m1260e() != 0;
    }
}
