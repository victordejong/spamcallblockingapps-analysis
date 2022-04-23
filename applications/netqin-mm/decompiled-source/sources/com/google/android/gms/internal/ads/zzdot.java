package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdot.class */
public final class zzdot {
    /* renamed from: a */
    public static Bundle m13397a(Bundle bundle, String str) {
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        return bundle3;
    }

    /* renamed from: a */
    public static void m13396a(Bundle bundle, String str, Bundle bundle2) {
        if (bundle2 != null) {
            bundle.putBundle(str, bundle2);
        }
    }

    /* renamed from: a */
    public static void m13395a(Bundle bundle, String str, Boolean bool, boolean z) {
        if (z) {
            bundle.putBoolean(str, bool.booleanValue());
        }
    }

    /* renamed from: a */
    public static void m13394a(Bundle bundle, String str, Integer num, boolean z) {
        if (z) {
            bundle.putInt(str, num.intValue());
        }
    }

    /* renamed from: a */
    public static void m13393a(Bundle bundle, String str, String str2) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: a */
    public static void m13392a(Bundle bundle, String str, String str2, boolean z) {
        if (z) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: a */
    public static void m13391a(Bundle bundle, String str, List<String> list) {
        if (list != null) {
            bundle.putStringArrayList(str, new ArrayList<>(list));
        }
    }
}
