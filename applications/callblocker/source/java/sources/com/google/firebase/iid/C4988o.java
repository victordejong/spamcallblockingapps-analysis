package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.C2716m;
import com.google.firebase.C4865b;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.o */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/o.class */
public final class C4988o {

    /* renamed from: a */
    private final Context f21168a;
    @GuardedBy("this")

    /* renamed from: b */
    private String f21169b;
    @GuardedBy("this")

    /* renamed from: c */
    private String f21170c;
    @GuardedBy("this")

    /* renamed from: d */
    private int f21171d;
    @GuardedBy("this")

    /* renamed from: e */
    private int f21172e = 0;

    public C4988o(Context context) {
        this.f21168a = context;
    }

    /* renamed from: a */
    private final PackageInfo m1919a(String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = this.f21168a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Failed to find package ").append(valueOf).toString());
            packageInfo = null;
        }
        return packageInfo;
    }

    /* renamed from: a */
    public static String m1920a(C4865b c4865b) {
        String str;
        String m2047c = c4865b.m2148c().m2047c();
        if (m2047c != null) {
            str = m2047c;
        } else {
            String m2048b = c4865b.m2148c().m2048b();
            str = m2048b;
            if (m2048b.startsWith("1:")) {
                String[] split = m2048b.split(":");
                if (split.length < 2) {
                    str = null;
                } else {
                    String str2 = split[1];
                    str = str2;
                    if (str2.isEmpty()) {
                        str = null;
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: f */
    private final void m1914f() {
        synchronized (this) {
            PackageInfo m1919a = m1919a(this.f21168a.getPackageName());
            if (m1919a != null) {
                this.f21169b = Integer.toString(m1919a.versionCode);
                this.f21170c = m1919a.versionName;
            }
        }
    }

    /* renamed from: a */
    public final boolean m1921a() {
        return m1918b() != 0;
    }

    /* renamed from: b */
    public final int m1918b() {
        int i = 0;
        synchronized (this) {
            if (this.f21172e != 0) {
                i = this.f21172e;
            } else {
                PackageManager packageManager = this.f21168a.getPackageManager();
                if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                    Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                } else {
                    if (!C2716m.m13832k()) {
                        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                        intent.setPackage("com.google.android.gms");
                        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                        if (queryIntentServices != null && queryIntentServices.size() > 0) {
                            this.f21172e = 1;
                            i = this.f21172e;
                        }
                    }
                    Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
                    intent2.setPackage("com.google.android.gms");
                    List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
                    if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                        Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
                        if (C2716m.m13832k()) {
                            this.f21172e = 2;
                        } else {
                            this.f21172e = 1;
                        }
                        i = this.f21172e;
                    } else {
                        this.f21172e = 2;
                        i = this.f21172e;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: c */
    public final String m1917c() {
        String str;
        synchronized (this) {
            if (this.f21169b == null) {
                m1914f();
            }
            str = this.f21169b;
        }
        return str;
    }

    /* renamed from: d */
    public final String m1916d() {
        String str;
        synchronized (this) {
            if (this.f21170c == null) {
                m1914f();
            }
            str = this.f21170c;
        }
        return str;
    }

    /* renamed from: e */
    public final int m1915e() {
        int i;
        PackageInfo m1919a;
        synchronized (this) {
            if (this.f21171d == 0 && (m1919a = m1919a("com.google.android.gms")) != null) {
                this.f21171d = m1919a.versionCode;
            }
            i = this.f21171d;
        }
        return i;
    }
}
