package com.google.firebase.e;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.content.b;
import com.google.firebase.b.c;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/e/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f32297a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f32298b;

    /* renamed from: c  reason: collision with root package name */
    private final c f32299c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f32300d;

    public a(Context context, String str, c cVar) {
        context = Build.VERSION.SDK_INT >= 24 ? b.d(context) : context;
        this.f32297a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:".concat(String.valueOf(str)), 0);
        this.f32298b = sharedPreferences;
        this.f32299c = cVar;
        this.f32300d = sharedPreferences.contains("firebase_data_collection_default_enabled") ? sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true) : b();
    }

    private boolean b() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = this.f32297a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f32297a.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f32300d;
        }
        return z;
    }
}
