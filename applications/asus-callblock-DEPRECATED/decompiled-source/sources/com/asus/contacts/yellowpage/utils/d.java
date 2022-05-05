package com.asus.contacts.yellowpage.utils;

import android.content.Context;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2886a = d.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<a> f2887b = new ArrayList<>();
    private static int c = 0;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/d$a.class */
    public interface a {
        void a();
    }

    public static int a() {
        return c;
    }

    private static void a(int i) {
        c = i;
        Log.d(f2886a, "Notify all observers. #Observers = " + f2887b.size());
        Iterator<a> it = f2887b.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x0328 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r8, java.lang.String r9, java.util.ArrayList<com.asus.contacts.yellowpage.c> r10) {
        /*
            Method dump skipped, instructions count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.utils.d.a(android.content.Context, java.lang.String, java.util.ArrayList):void");
    }

    public static void a(a aVar) {
        f2887b.add(aVar);
        Log.d(f2886a, "Register observer. #Observers = " + f2887b.size());
    }

    public static boolean a(Context context) {
        boolean z = false;
        try {
            if (Integer.parseInt(new String(new BufferedReader(new InputStreamReader(context.getAssets().open("AsusCategory_utf8.txt"), StandardCharsets.UTF_8)).readLine().getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8).split(",")[1]) != c.a(context, "key_category_table_version")) {
                z = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    public static void b(a aVar) {
        f2887b.remove(aVar);
        Log.d(f2886a, "Unregister observer. #Observers = " + f2887b.size());
    }
}
