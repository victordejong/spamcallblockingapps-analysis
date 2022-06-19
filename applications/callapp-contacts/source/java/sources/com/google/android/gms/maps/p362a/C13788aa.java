package com.google.android.gms.maps.p362a;

import android.os.Bundle;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.maps.a.aa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/aa.class */
public final class C13788aa {
    private C13788aa() {
    }

    /* renamed from: a */
    private static <T extends Parcelable> T m12248a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(C13788aa.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(C13788aa.class.getClassLoader());
        return (T) bundle2.getParcelable(str);
    }

    /* renamed from: a */
    public static void m12249a(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return;
        }
        Parcelable m12248a = m12248a(bundle, "MapOptions");
        if (m12248a != null) {
            m12247a(bundle2, "MapOptions", m12248a);
        }
        Parcelable m12248a2 = m12248a(bundle, "StreetViewPanoramaOptions");
        if (m12248a2 != null) {
            m12247a(bundle2, "StreetViewPanoramaOptions", m12248a2);
        }
        Parcelable m12248a3 = m12248a(bundle, "camera");
        if (m12248a3 != null) {
            m12247a(bundle2, "camera", m12248a3);
        }
        if (bundle.containsKey("position")) {
            bundle2.putString("position", bundle.getString("position"));
        }
        if (!bundle.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
            return;
        }
        bundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", bundle.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
    }

    /* renamed from: a */
    public static void m12247a(Bundle bundle, String str, Parcelable parcelable) {
        bundle.setClassLoader(C13788aa.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        bundle3.setClassLoader(C13788aa.class.getClassLoader());
        bundle3.putParcelable(str, parcelable);
        bundle.putBundle("map_state", bundle3);
    }
}
