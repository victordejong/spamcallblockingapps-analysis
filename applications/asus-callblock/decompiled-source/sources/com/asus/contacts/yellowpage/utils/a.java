package com.asus.contacts.yellowpage.utils;

import android.content.ContentValues;
import android.content.Context;
import android.preference.PreferenceManager;
import android.util.Log;
import com.asus.contacts.yellowpage.provider.a;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2873a = a.class.getSimpleName();

    /* JADX WARN: Removed duplicated region for block: B:109:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0274 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.asus.contacts.yellowpage.a> a(android.content.Context r7, java.lang.String r8, double r9, double r11) {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.utils.a.a(android.content.Context, java.lang.String, double, double):java.util.ArrayList");
    }

    public static void a(Context context) {
        ContentValues contentValues;
        Log.d(f2873a, "clearInvalidRequstCache");
        try {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString("key_yellow_page_cdn_expiration_date_businessinfo", "168");
            long currentTimeMillis = System.currentTimeMillis();
            long parseInt = Integer.parseInt(string) * 60 * 60 * 1000;
            new ContentValues().put("is_expired", (Integer) 1);
            Log.d(f2873a, "clearInvalidRequstCache: Update request table numOfRow = " + context.getContentResolver().update(a.c.f2863a, contentValues, "cache_time < " + (currentTimeMillis - parseInt), null));
        } catch (Exception e) {
            Log.e(f2873a, "clearInvalidRequstCache failed. Exception:" + e.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0316  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r7, java.lang.String r8, java.util.ArrayList<com.asus.contacts.yellowpage.a> r9) {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.utils.a.a(android.content.Context, java.lang.String, java.util.ArrayList):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.utils.a.a(android.content.Context, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.utils.a.b(android.content.Context, java.lang.String):boolean");
    }
}
