package com.asus.contacts.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.SparseIntArray;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/a.class */
public final class a {
    private static SparseIntArray f;

    /* renamed from: a  reason: collision with root package name */
    private static int f2582a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static int f2583b = 1;
    private static int c = 0;
    private static int d = f2582a;
    private static int e = f2582a;
    private static long g = 500;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f = sparseIntArray;
        sparseIntArray.append(1, 2130771971);
        f.append(2, 2130771974);
    }

    public static Integer a(int i) {
        return Integer.valueOf(f.get(i));
    }

    public static void a() {
        d = f2582a;
    }

    public static void a(boolean z) {
        d = z ? f2583b : c;
    }

    public static boolean a(Context context) {
        if (d == f2582a) {
            if (context != null) {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                boolean isHighendDevice = PhoneCapabilityTester.isHighendDevice(context, 1L);
                d = isHighendDevice ? defaultSharedPreferences.getBoolean(AsusDialerSettingActivity.KEY_ENABLE_DIALPAD_ANIM, isHighendDevice) : false ? f2583b : c;
            } else {
                d = c;
            }
            b.a();
        }
        return d == f2583b;
    }

    public static void b() {
        e = f2582a;
    }

    public static void b(int i) {
        switch (i) {
            case 0:
                g = 300L;
                return;
            case 1:
                g = 500L;
                return;
            case 2:
                g = 800L;
                return;
            default:
                g = 500L;
                return;
        }
    }

    public static void b(boolean z) {
        e = z ? f2583b : c;
    }

    public static boolean b(Context context) {
        boolean z = true;
        if (e == f2582a) {
            if (context != null) {
                e = PreferenceManager.getDefaultSharedPreferences(context).getBoolean(AsusDialerSettingActivity.KEY_SWIPE_DOWN_HIDE_DIALPAD, !PhoneCapabilityTester.isUsingTwoPanes(context)) ? f2583b : c;
            } else {
                e = c;
            }
            b.a();
        }
        if (e != f2583b) {
            z = false;
        }
        return z;
    }

    public static long c() {
        return g;
    }
}
