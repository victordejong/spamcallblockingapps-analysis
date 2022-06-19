package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.C6237o;
import com.google.firebase.C8849c;
import java.util.List;
/* renamed from: com.google.firebase.iid.n */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/n.class */
public class C9190n {

    /* renamed from: a */
    private final Context f39548a;

    /* renamed from: b */
    private String f39549b;

    /* renamed from: c */
    private String f39550c;

    /* renamed from: d */
    private int f39551d;

    /* renamed from: e */
    private int f39552e = 0;

    public C9190n(Context context) {
        this.f39548a = context;
    }

    /* renamed from: c */
    public static String m1594c(C8849c c8849c) {
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
    private PackageInfo m1591f(String str) {
        try {
            return this.f39548a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    /* renamed from: h */
    private void m1589h() {
        synchronized (this) {
            PackageInfo m1591f = m1591f(this.f39548a.getPackageName());
            if (m1591f != null) {
                this.f39549b = Integer.toString(m1591f.versionCode);
                this.f39550c = m1591f.versionName;
            }
        }
    }

    /* renamed from: a */
    public String m1596a() {
        String str;
        synchronized (this) {
            if (this.f39549b == null) {
                m1589h();
            }
            str = this.f39549b;
        }
        return str;
    }

    /* renamed from: b */
    public String m1595b() {
        String str;
        synchronized (this) {
            if (this.f39550c == null) {
                m1589h();
            }
            str = this.f39550c;
        }
        return str;
    }

    /* renamed from: d */
    public int m1593d() {
        int i;
        PackageInfo m1591f;
        synchronized (this) {
            if (this.f39551d == 0 && (m1591f = m1591f("com.google.android.gms")) != null) {
                this.f39551d = m1591f.versionCode;
            }
            i = this.f39551d;
        }
        return i;
    }

    /* renamed from: e */
    public int m1592e() {
        synchronized (this) {
            int i = this.f39552e;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f39548a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            int i2 = 1;
            if (!C6237o.m16773k()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f39552e = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f39552e = 2;
                return 2;
            }
            Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
            if (C6237o.m16773k()) {
                this.f39552e = 2;
                i2 = 2;
            } else {
                this.f39552e = 1;
            }
            return i2;
        }
    }

    /* renamed from: g */
    public boolean m1590g() {
        return m1592e() != 0;
    }
}
