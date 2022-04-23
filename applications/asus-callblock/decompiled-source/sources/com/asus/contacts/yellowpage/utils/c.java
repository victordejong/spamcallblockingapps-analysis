package com.asus.contacts.yellowpage.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/c.class */
public class c {
    private static final String e = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2884a = {"99GC01", "99IC02", "99PC01", "99NC03"};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f2885b = {2131165970, 2131165981, 2131165968, 2131165974};
    public static final String[] c = {"99FC", "99IC", "99JC01", "04PC01", "05GC01", "05NC0", "05OC00", "07BC0"};
    public static final int[] d = {2131165977, 2131165975, 2131165980, 2131165969, 2131165976, 2131165983, 2131165972, 2131165978, 2131165979, 2131165971, 2131165973, 2131165982, 2131165966, 2131165967, 2131165984};

    public static int a(Context context, String str) {
        int i = -1;
        try {
            i = PreferenceManager.getDefaultSharedPreferences(context).getInt(str, -1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return i;
    }

    public static void a(String str, ArrayList<String> arrayList) {
        if (str != null && arrayList != null) {
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(' ');
            simpleStringSplitter.setString(str);
            while (simpleStringSplitter.hasNext()) {
                String next = simpleStringSplitter.next();
                if (!TextUtils.isEmpty(next.trim())) {
                    arrayList.add(next);
                }
            }
        }
    }

    public static boolean a(Context context, String str, int i) {
        boolean z;
        try {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
            edit.putInt(str, i);
            edit.commit();
            z = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            z = false;
        }
        return z;
    }

    public static boolean a(Context context, String str, String str2) {
        boolean z;
        try {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
            edit.putString(str, str2);
            edit.commit();
            z = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            z = false;
        }
        return z;
    }

    public static String b(Context context, String str, String str2) {
        String str3 = null;
        try {
            str3 = PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return str3;
    }

    public static boolean b(Context context, String str) {
        boolean z;
        try {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).commit();
            z = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            z = false;
        }
        return z;
    }
}
