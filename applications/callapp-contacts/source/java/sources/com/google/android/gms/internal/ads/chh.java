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
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12106j;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chh.class */
public final class chh implements chb<che> {

    /* renamed from: a */
    final Context f45788a;

    /* renamed from: b */
    private final dbs f45789b;

    public chh(dbs dbsVar, Context context) {
        this.f45789b = dbsVar;
        this.f45788a = context;
    }

    /* renamed from: a */
    public static ResolveInfo m17456a(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* renamed from: a */
    public static String m17458a(Context context) {
        try {
            PackageInfo m19259b = C11946c.m19258a(context).m19259b("com.android.vending", 128);
            if (m19259b == null) {
                return null;
            }
            int i = m19259b.versionCode;
            String str = m19259b.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m17457a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo m17456a = m17456a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (m17456a == null || (activityInfo = m17456a.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo m19259b = C11946c.m19258a(context).m19259b(activityInfo.packageName, 0);
            if (m19259b == null) {
                return null;
            }
            int i = m19259b.versionCode;
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
    /* renamed from: a */
    public final dbt<che> mo17449a() {
        return this.f45789b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.chg

            /* renamed from: a */
            private final chh f45787a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45787a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                boolean z;
                chh chhVar = this.f45787a;
                PackageManager packageManager = chhVar.f45788a.getPackageManager();
                Locale locale = Locale.getDefault();
                boolean z2 = chh.m17456a(packageManager, "geo:0,0?q=donuts") != null;
                boolean z3 = chh.m17456a(packageManager, "http://www.google.com") != null;
                String country = locale.getCountry();
                boolean startsWith = Build.DEVICE.startsWith("generic");
                boolean m19030d = C12106j.m19030d(chhVar.f45788a);
                boolean m19029e = C12106j.m19029e(chhVar.f45788a);
                String language = locale.getLanguage();
                ArrayList arrayList = new ArrayList();
                if (Build.VERSION.SDK_INT >= 24) {
                    LocaleList localeList = LocaleList.getDefault();
                    for (int i = 0; i < localeList.size(); i++) {
                        arrayList.add(localeList.get(i).getLanguage());
                    }
                }
                String m17457a = chh.m17457a(chhVar.f45788a, packageManager);
                String m17458a = chh.m17458a(chhVar.f45788a);
                String str = Build.FINGERPRINT;
                Context context = chhVar.f45788a;
                if (packageManager != null) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
                    ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
                    List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                    if (queryIntentActivities != null && resolveActivity != null) {
                        for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                                z = resolveActivity.activityInfo.packageName.equals(dsu.m15758a(context));
                                break;
                            }
                        }
                    }
                }
                z = false;
                return new che(z2, z3, country, startsWith, m19030d, m19029e, language, arrayList, m17457a, m17458a, str, z, Build.MODEL, zzr.zzkx().zzzz());
            }
        });
    }
}
