package p021b6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import p066d0.C2134a;
import p253u5.AbstractC4488c;
/* renamed from: b6.a */
/* loaded from: classes-dex2jar.jar:b6/a.class */
public class C0735a {

    /* renamed from: a */
    public final Context f2790a;

    /* renamed from: b */
    public final SharedPreferences f2791b;

    /* renamed from: c */
    public final AbstractC4488c f2792c;

    /* renamed from: d */
    public boolean f2793d;

    public C0735a(Context context, String str, AbstractC4488c abstractC4488c) {
        boolean z;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            Object obj = C2134a.f7832a;
            context = i >= 24 ? C2134a.C2138d.m3836a(context) : null;
        }
        this.f2790a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f2791b = sharedPreferences;
        this.f2792c = abstractC4488c;
        if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
            z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
        } else {
            try {
                PackageManager packageManager = context.getPackageManager();
                z = true;
                if (packageManager != null) {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
                    z = true;
                    if (applicationInfo != null) {
                        Bundle bundle = applicationInfo.metaData;
                        z = true;
                        if (bundle != null) {
                            z = true;
                            if (bundle.containsKey("firebase_data_collection_default_enabled")) {
                                z = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                            }
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                z = true;
            }
        }
        this.f2793d = z;
    }
}
