package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.n;
import com.google.firebase.b;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ag.class */
public final class ag {

    /* renamed from: a  reason: collision with root package name */
    private final Context f32468a;

    /* renamed from: b  reason: collision with root package name */
    private String f32469b;

    /* renamed from: c  reason: collision with root package name */
    private String f32470c;

    /* renamed from: d  reason: collision with root package name */
    private int f32471d;
    private int e = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(Context context) {
        this.f32468a = context;
    }

    private PackageInfo a(String str) {
        try {
            return this.f32468a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(b bVar) {
        String str = bVar.c().f32316c;
        if (str != null) {
            return str;
        }
        String str2 = bVar.c().f32315b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] split = str2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    private int e() {
        synchronized (this) {
            int i = this.e;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f32468a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
                return 0;
            }
            int i2 = 1;
            if (!n.j()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.e = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.e = 2;
                return 2;
            }
            Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
            if (n.j()) {
                this.e = 2;
                i2 = 2;
            } else {
                this.e = 1;
            }
            return i2;
        }
    }

    private void f() {
        synchronized (this) {
            PackageInfo a2 = a(this.f32468a.getPackageName());
            if (a2 != null) {
                this.f32469b = Integer.toString(a2.versionCode);
                this.f32470c = a2.versionName;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return e() != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        String str;
        synchronized (this) {
            if (this.f32469b == null) {
                f();
            }
            str = this.f32469b;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c() {
        String str;
        synchronized (this) {
            if (this.f32470c == null) {
                f();
            }
            str = this.f32470c;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d() {
        int i;
        PackageInfo a2;
        synchronized (this) {
            if (this.f32471d == 0 && (a2 = a("com.google.android.gms")) != null) {
                this.f32471d = a2.versionCode;
            }
            i = this.f32471d;
        }
        return i;
    }
}
