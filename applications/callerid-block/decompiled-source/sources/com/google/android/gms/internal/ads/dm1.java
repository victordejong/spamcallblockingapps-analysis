package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dm1.class */
public final class dm1 {
    /* renamed from: a */
    public static Bundle m7728a(Bundle bundle, String str) {
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        return bundle3;
    }

    /* renamed from: b */
    public static void m7727b(Bundle bundle, String str, String str2, boolean z) {
        if (z) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: c */
    public static void m7726c(Bundle bundle, String str, Integer num, boolean z) {
        if (z) {
            bundle.putInt(str, num.intValue());
        }
    }

    /* renamed from: d */
    public static void m7725d(Bundle bundle, String str, Boolean bool, boolean z) {
        if (z) {
            bundle.putBoolean(str, bool.booleanValue());
        }
    }

    /* renamed from: e */
    public static void m7724e(Bundle bundle, String str, String str2) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: f */
    public static void m7723f(Bundle bundle, String str, Bundle bundle2) {
        if (bundle2 != null) {
            bundle.putBundle(str, bundle2);
        }
    }

    /* renamed from: g */
    public static void m7722g(Bundle bundle, String str, List<String> list) {
        if (list != null) {
            bundle.putStringArrayList(str, new ArrayList<>(list));
        }
    }
}
