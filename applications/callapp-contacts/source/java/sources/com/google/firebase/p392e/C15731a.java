package com.google.firebase.p392e;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.content.C0790b;
import com.google.firebase.p389b.AbstractC15608c;
/* renamed from: com.google.firebase.e.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/e/a.class */
public final class C15731a {

    /* renamed from: a */
    private final Context f56082a;

    /* renamed from: b */
    private final SharedPreferences f56083b;

    /* renamed from: c */
    private final AbstractC15608c f56084c;

    /* renamed from: d */
    private boolean f56085d;

    public C15731a(Context context, String str, AbstractC15608c abstractC15608c) {
        context = Build.VERSION.SDK_INT >= 24 ? C0790b.m44491d(context) : context;
        this.f56082a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:".concat(String.valueOf(str)), 0);
        this.f56083b = sharedPreferences;
        this.f56084c = abstractC15608c;
        this.f56085d = sharedPreferences.contains("firebase_data_collection_default_enabled") ? sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true) : m8472b();
    }

    /* renamed from: b */
    private boolean m8472b() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = this.f56082a.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.f56082a.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m8473a() {
        boolean z;
        synchronized (this) {
            z = this.f56085d;
        }
        return z;
    }
}
