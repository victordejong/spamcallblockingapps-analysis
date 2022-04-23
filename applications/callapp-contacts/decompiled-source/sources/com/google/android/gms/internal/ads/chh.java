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
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.util.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chh.class */
final class chh implements chb<che> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25832a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25833b;

    public chh(dbs dbsVar, Context context) {
        this.f25833b = dbsVar;
        this.f25832a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResolveInfo a(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        try {
            PackageInfo b2 = c.a(context).b("com.android.vending", 128);
            if (b2 == null) {
                return null;
            }
            int i = b2.versionCode;
            String str = b2.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a2 = a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a2 == null || (activityInfo = a2.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo b2 = c.a(context).b(activityInfo.packageName, 0);
            if (b2 == null) {
                return null;
            }
            int i = b2.versionCode;
            String str = activityInfo.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<che> a() {
        return this.f25833b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.chg

            /* renamed from: a  reason: collision with root package name */
            private final chh f25831a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25831a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                boolean z;
                chh chhVar = this.f25831a;
                PackageManager packageManager = chhVar.f25832a.getPackageManager();
                Locale locale = Locale.getDefault();
                boolean z2 = chh.a(packageManager, "geo:0,0?q=donuts") != null;
                boolean z3 = chh.a(packageManager, "http://www.google.com") != null;
                String country = locale.getCountry();
                boolean startsWith = Build.DEVICE.startsWith("generic");
                boolean d2 = j.d(chhVar.f25832a);
                boolean e = j.e(chhVar.f25832a);
                String language = locale.getLanguage();
                ArrayList arrayList = new ArrayList();
                if (Build.VERSION.SDK_INT >= 24) {
                    LocaleList localeList = LocaleList.getDefault();
                    for (int i = 0; i < localeList.size(); i++) {
                        arrayList.add(localeList.get(i).getLanguage());
                    }
                }
                String a2 = chh.a(chhVar.f25832a, packageManager);
                String a3 = chh.a(chhVar.f25832a);
                String str = Build.FINGERPRINT;
                Context context = chhVar.f25832a;
                if (packageManager != null) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
                    ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
                    List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                    if (!(queryIntentActivities == null || resolveActivity == null)) {
                        for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                                z = resolveActivity.activityInfo.packageName.equals(dsu.a(context));
                                break;
                            }
                        }
                    }
                }
                z = false;
                return new che(z2, z3, country, startsWith, d2, e, language, arrayList, a2, a3, str, z, Build.MODEL, zzr.zzkx().zzzz());
            }
        });
    }
}
