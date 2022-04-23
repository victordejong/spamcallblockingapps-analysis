package com.uservoice.uservoicesdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import com.uservoice.uservoicesdk.activity.PortalActivity;
import com.uservoice.uservoicesdk.h.a;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f4677a;

    /* renamed from: b  reason: collision with root package name */
    public static int f4678b;
    public static boolean c;

    static {
        f4677a = "TRUE".equalsIgnoreCase(f.a("use_uservoice_debug_server"));
        f4678b = Color.argb(255, 255, 174, 201);
        c = false;
    }

    public static void a() {
        a.a();
    }

    public static void a(Context context) {
        com.uservoice.uservoicesdk.a.a.a(context);
        com.uservoice.uservoicesdk.a.a.a(e.a().f4631b.j);
        Intent intent = new Intent(context, PortalActivity.class);
        intent.addFlags(335544320);
        context.startActivity(intent);
    }

    public static void a(b bVar, Context context) {
        String str;
        String str2;
        a.b();
        a aVar = f4677a ? new a("asus2.uservoice.com", "ShrXMaOif6Rut6Ky828XLA", "2EmjiP6sd3AqOAZD4OiAsn06eLfm3veTcRQbWTrKODg") : new a("asus.uservoice.com", "YRVMmyxiwx992928okg", "3L10HXrOyfHPj5DZO8sLdpmVct7qPKoVM5amYI3sQ");
        aVar.i = bVar.b();
        aVar.h = bVar.a();
        aVar.o = Build.VERSION.RELEASE;
        HashMap hashMap = new HashMap();
        if (bVar instanceof c) {
            c cVar = (c) bVar;
            hashMap.put("APP_ID", cVar.b());
            hashMap.put("APP_Version", cVar.c());
            hashMap.put("APP_Label", cVar.a());
            hashMap.put("From_AppsHelp", "true");
            aVar.p = true;
            aVar.l = cVar.d();
            aVar.m = cVar.b();
            aVar.n = cVar.a();
        } else {
            try {
                str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (Exception e) {
                str = "Unknown";
            }
            hashMap.put("APP_Version", str);
            Resources resources = context.getResources();
            Configuration configuration = new Configuration(resources.getConfiguration());
            try {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                Configuration configuration2 = new Configuration();
                configuration2.locale = Locale.ENGLISH;
                resources.updateConfiguration(configuration2, resources.getDisplayMetrics());
                str2 = resources.getString(applicationInfo.labelRes);
            } catch (Exception e2) {
                e2.printStackTrace();
                str2 = "Unknown";
            } finally {
                resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            }
            hashMap.put("APP_Label", str2);
            hashMap.put("APP_ID", context.getPackageName());
            hashMap.put("From_AppsHelp", "false");
            aVar.p = false;
            aVar.m = context.getPackageName();
            aVar.n = str2;
        }
        aVar.g = hashMap;
        f4678b = bVar.c();
        e.b();
        e.a().f4630a = context.getApplicationContext();
        Locale locale = context.getResources().getConfiguration().locale;
        aVar.g.put("User info", "Country: " + locale.getCountry() + "; Language: " + locale.getLanguage());
        aVar.g.put("Model_Name", Build.MODEL);
        aVar.g.put("Build number", Build.DISPLAY);
        aVar.g.put("Serial_Number", TextUtils.isEmpty(Build.SERIAL) ? "-" : Build.SERIAL);
        aVar.g.put("OS", Build.VERSION.RELEASE);
        e a2 = e.a();
        a2.f4631b = aVar;
        if (aVar.d != null) {
            a2.a(aVar.e, aVar.d);
        }
    }

    public static String b() {
        return "1.1.1.151221_1";
    }
}
