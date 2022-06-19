package com.google.firebase.p314l;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.C0586a;
import com.google.firebase.p312j.AbstractC9244c;
/* renamed from: com.google.firebase.l.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/l/a.class */
public class C9248a {

    /* renamed from: a */
    private final Context f39682a;

    /* renamed from: b */
    private final SharedPreferences f39683b;

    /* renamed from: c */
    private final AbstractC9244c f39684c;

    /* renamed from: d */
    private boolean f39685d = m1413c();

    public C9248a(Context context, String str, AbstractC9244c abstractC9244c) {
        Context m1415a = m1415a(context);
        this.f39682a = m1415a;
        this.f39683b = m1415a.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f39684c = abstractC9244c;
    }

    /* renamed from: a */
    private static Context m1415a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : C0586a.m33352b(context);
    }

    /* renamed from: c */
    private boolean m1413c() {
        return this.f39683b.contains("firebase_data_collection_default_enabled") ? this.f39683b.getBoolean("firebase_data_collection_default_enabled", true) : m1412d();
    }

    /* renamed from: d */
    private boolean m1412d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f39682a.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.f39682a.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    /* renamed from: b */
    public boolean m1414b() {
        boolean z;
        synchronized (this) {
            z = this.f39685d;
        }
        return z;
    }
}
