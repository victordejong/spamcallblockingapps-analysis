package com.google.firebase.p164d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.p017a.C0438a;
import com.google.firebase.p161a.AbstractC4856c;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.firebase.d.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/d/a.class */
public class C4907a {

    /* renamed from: a */
    private final Context f21023a;

    /* renamed from: b */
    private final SharedPreferences f21024b;

    /* renamed from: c */
    private final AbstractC4856c f21025c;

    /* renamed from: d */
    private final AtomicBoolean f21026d = new AtomicBoolean(m2043b());

    public C4907a(Context context, String str, AbstractC4856c abstractC4856c) {
        this.f21023a = m2044a(context);
        this.f21024b = context.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f21025c = abstractC4856c;
    }

    /* renamed from: a */
    private static Context m2044a(Context context) {
        Context context2 = context;
        if (Build.VERSION.SDK_INT >= 24) {
            context2 = C0438a.m20893c(context) ? context : C0438a.m20895b(context);
        }
        return context2;
    }

    /* renamed from: b */
    private boolean m2043b() {
        boolean z;
        if (this.f21024b.contains("firebase_data_collection_default_enabled")) {
            z = this.f21024b.getBoolean("firebase_data_collection_default_enabled", true);
        } else {
            try {
                PackageManager packageManager = this.f21023a.getPackageManager();
                z = true;
                if (packageManager != null) {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.f21023a.getPackageName(), 128);
                    z = true;
                    if (applicationInfo != null) {
                        z = true;
                        if (applicationInfo.metaData != null) {
                            z = true;
                            if (applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                                z = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                            }
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m2045a() {
        return this.f21026d.get();
    }
}
