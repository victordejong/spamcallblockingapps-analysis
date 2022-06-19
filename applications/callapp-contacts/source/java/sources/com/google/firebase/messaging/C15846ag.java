package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.C12110n;
import com.google.firebase.C15601b;
import java.util.List;
/* renamed from: com.google.firebase.messaging.ag */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ag.class */
public final class C15846ag {

    /* renamed from: a */
    private final Context f56327a;

    /* renamed from: b */
    private String f56328b;

    /* renamed from: c */
    private String f56329c;

    /* renamed from: d */
    private int f56330d;

    /* renamed from: e */
    private int f56331e = 0;

    public C15846ag(Context context) {
        this.f56327a = context;
    }

    /* renamed from: a */
    private PackageInfo m8209a(String str) {
        try {
            return this.f56327a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m8210a(C15601b c15601b) {
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
    private int m8205e() {
        synchronized (this) {
            int i = this.f56331e;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f56327a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
                return 0;
            }
            int i2 = 1;
            if (!C12110n.m19012j()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f56331e = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f56331e = 2;
                return 2;
            }
            Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
            if (C12110n.m19012j()) {
                this.f56331e = 2;
                i2 = 2;
            } else {
                this.f56331e = 1;
            }
            return i2;
        }
    }

    /* renamed from: f */
    private void m8204f() {
        synchronized (this) {
            PackageInfo m8209a = m8209a(this.f56327a.getPackageName());
            if (m8209a != null) {
                this.f56328b = Integer.toString(m8209a.versionCode);
                this.f56329c = m8209a.versionName;
            }
        }
    }

    /* renamed from: a */
    public final boolean m8211a() {
        return m8205e() != 0;
    }

    /* renamed from: b */
    public final String m8208b() {
        String str;
        synchronized (this) {
            if (this.f56328b == null) {
                m8204f();
            }
            str = this.f56328b;
        }
        return str;
    }

    /* renamed from: c */
    public final String m8207c() {
        String str;
        synchronized (this) {
            if (this.f56329c == null) {
                m8204f();
            }
            str = this.f56329c;
        }
        return str;
    }

    /* renamed from: d */
    public final int m8206d() {
        int i;
        PackageInfo m8209a;
        synchronized (this) {
            if (this.f56330d == 0 && (m8209a = m8209a("com.google.android.gms")) != null) {
                this.f56330d = m8209a.versionCode;
            }
            i = this.f56330d;
        }
        return i;
    }
}
