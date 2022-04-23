package com.asus.contacts.b;

import android.content.Context;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f2585a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static int f2586b = -1;

    public static void a(Context context) {
        Log.d(f2585a, "open ASUS meal one for test");
        context.getSharedPreferences(context.getPackageName(), 0).edit().putBoolean("AsusMealOne", true).commit();
        a.a();
        a.b();
        f2586b = 1;
        e.a().a("FloatingActionButton");
        e.a().a("FontSettings");
    }

    public static boolean a() {
        return true;
    }
}
