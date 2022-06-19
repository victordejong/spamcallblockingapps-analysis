package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.C12110n;
import com.google.firebase.C15601b;
import java.util.List;
/* renamed from: com.google.firebase.iid.n */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/n.class */
public final class C15774n {

    /* renamed from: a */
    private final Context f56147a;

    /* renamed from: b */
    private String f56148b;

    /* renamed from: c */
    private String f56149c;

    /* renamed from: d */
    private int f56150d;

    /* renamed from: e */
    private int f56151e = 0;

    public C15774n(Context context) {
        this.f56147a = context;
    }

    /* renamed from: a */
    private PackageInfo m8416a(String str) {
        try {
            return this.f56147a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m8417a(C15601b c15601b) {
        String str = c15601b.m8574c().f56101c;
        if (str != null) {
            return str;
        }
        String str2 = c15601b.m8574c().f56100b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] split = str2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str3 = split[1];
        if (!str3.isEmpty()) {
            return str3;
        }
        return null;
    }

    /* renamed from: e */
    private void m8412e() {
        synchronized (this) {
            PackageInfo m8416a = m8416a(this.f56147a.getPackageName());
            if (m8416a != null) {
                this.f56148b = Integer.toString(m8416a.versionCode);
                this.f56149c = m8416a.versionName;
            }
        }
    }

    /* renamed from: a */
    public final int m8418a() {
        synchronized (this) {
            int i = this.f56151e;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f56147a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            int i2 = 1;
            if (!C12110n.m19012j()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f56151e = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f56151e = 2;
                return 2;
            }
            Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
            if (C12110n.m19012j()) {
                this.f56151e = 2;
                i2 = 2;
            } else {
                this.f56151e = 1;
            }
            return i2;
        }
    }

    /* renamed from: b */
    public final String m8415b() {
        String str;
        synchronized (this) {
            if (this.f56148b == null) {
                m8412e();
            }
            str = this.f56148b;
        }
        return str;
    }

    /* renamed from: c */
    public final String m8414c() {
        String str;
        synchronized (this) {
            if (this.f56149c == null) {
                m8412e();
            }
            str = this.f56149c;
        }
        return str;
    }

    /* renamed from: d */
    public final int m8413d() {
        int i;
        PackageInfo m8416a;
        synchronized (this) {
            if (this.f56150d == 0 && (m8416a = m8416a("com.google.android.gms")) != null) {
                this.f56150d = m8416a.versionCode;
            }
            i = this.f56150d;
        }
        return i;
    }
}
