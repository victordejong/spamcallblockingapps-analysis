package com.android.contacts.list;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.util.AddHKQuickIndexUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    static String f1762a = "ContactsPreInflater";

    /* renamed from: b  reason: collision with root package name */
    static View f1763b = null;
    static boolean c = false;
    private static boolean d = false;

    public static void a() {
        f1763b = null;
    }

    public static void a(Context context, boolean z) {
        LayoutInflater from = LayoutInflater.from(context);
        try {
            if (z) {
                f1763b = from.inflate(2131427365, (ViewGroup) null);
            } else {
                f1763b = from.inflate(2131427366, (ViewGroup) null);
            }
            c = z;
        } catch (RuntimeException e) {
            Log.e(f1762a, "fail to initContactsView due to:" + e.toString());
        }
    }

    public static boolean a(Context context) {
        Locale locale = Locale.getDefault();
        boolean z = locale.toString().startsWith(Locale.TRADITIONAL_CHINESE.toString()) || locale.toString().startsWith(Locale.SIMPLIFIED_CHINESE.toString()) || locale.toString().startsWith("en") || locale.toString().startsWith("pt") || locale.toString().startsWith("it") || locale.toString().startsWith("fr") || locale.toString().startsWith("es") || locale.toString().startsWith("de") || locale.toString().startsWith("nl");
        boolean z2 = z;
        if (!PhoneCapabilityTester.IsUnbundled()) {
            z2 = z;
            if (Locale.getDefault().toString().equals("zh_HK")) {
                z2 = AddHKQuickIndexUtils.isSupportHKQuickIndex(context);
            }
        }
        return z2;
    }

    public static View b(Context context, boolean z) {
        if (f1763b == null || f1763b.getParent() != null) {
            a(context, z);
        } else if (c != z) {
            a(context, z);
        }
        c = z;
        return f1763b;
    }
}
