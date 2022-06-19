package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2712i;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/can.class */
public final class can implements cah<cak> {

    /* renamed from: a */
    private final crs f12623a;

    /* renamed from: b */
    private final Context f12624b;

    public can(crs crsVar, Context context) {
        this.f12623a = crsVar;
        this.f12624b = context;
    }

    /* renamed from: a */
    private static ResolveInfo m11506a(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* renamed from: a */
    private static String m11508a(Context context) {
        String str;
        try {
            PackageInfo m14194b = C2586c.m14193a(context).m14194b("com.android.vending", 128);
            str = null;
            if (m14194b != null) {
                int i = m14194b.versionCode;
                String str2 = m14194b.packageName;
                str = new StringBuilder(String.valueOf(str2).length() + 12).append(i).append(".").append(str2).toString();
            }
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    private static String m11507a(Context context, PackageManager packageManager) {
        String str;
        ResolveInfo m11506a = m11506a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (m11506a == null) {
            str = null;
        } else {
            ActivityInfo activityInfo = m11506a.activityInfo;
            str = null;
            if (activityInfo != null) {
                try {
                    PackageInfo m14194b = C2586c.m14193a(context).m14194b(activityInfo.packageName, 0);
                    str = null;
                    if (m14194b != null) {
                        int i = m14194b.versionCode;
                        String str2 = activityInfo.packageName;
                        str = new StringBuilder(String.valueOf(str2).length() + 12).append(i).append(".").append(str2).toString();
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    str = null;
                }
            }
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cak> mo11479a() {
        return this.f12623a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cam

            /* renamed from: a */
            private final can f12622a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12622a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12622a.m11505b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ cak m11505b() {
        boolean z;
        PackageManager packageManager = this.f12624b.getPackageManager();
        Locale locale = Locale.getDefault();
        boolean z2 = m11506a(packageManager, "geo:0,0?q=donuts") != null;
        boolean z3 = m11506a(packageManager, "http://www.google.com") != null;
        String country = locale.getCountry();
        boolean startsWith = Build.DEVICE.startsWith("generic");
        boolean m13854d = C2712i.m13854d(this.f12624b);
        boolean m13855c = C2712i.m13855c(this.f12624b);
        String language = locale.getLanguage();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList localeList = LocaleList.getDefault();
            for (int i = 0; i < localeList.size(); i++) {
                arrayList.add(localeList.get(i).getLanguage());
            }
        }
        String m11507a = m11507a(this.f12624b, packageManager);
        String m11508a = m11508a(this.f12624b);
        String str = Build.FINGERPRINT;
        Context context = this.f12624b;
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                        z = resolveActivity.activityInfo.packageName.equals(dif.m9432a(context));
                        break;
                    }
                }
            }
        }
        z = false;
        return new cak(z2, z3, country, startsWith, m13854d, m13855c, language, arrayList, m11507a, m11508a, str, z, Build.MODEL, C2341q.m14742e().mo6936e());
    }
}
