package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/zzby.class */
public final class zzby {
    private zzby() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m38647a(Bundle bundle, String str) {
        bundle.setClassLoader(zzby.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(zzby.class.getClassLoader());
        return (T) bundle2.getParcelable(str);
    }

    /* renamed from: b */
    public static void m38646b(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return;
        }
        Parcelable m38647a = m38647a(bundle, "MapOptions");
        if (m38647a != null) {
            m38645c(bundle2, "MapOptions", m38647a);
        }
        Parcelable m38647a2 = m38647a(bundle, "StreetViewPanoramaOptions");
        if (m38647a2 != null) {
            m38645c(bundle2, "StreetViewPanoramaOptions", m38647a2);
        }
        Parcelable m38647a3 = m38647a(bundle, "camera");
        if (m38647a3 != null) {
            m38645c(bundle2, "camera", m38647a3);
        }
        if (bundle.containsKey("position")) {
            bundle2.putString("position", bundle.getString("position"));
        }
        if (!bundle.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
            return;
        }
        bundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", bundle.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
    }

    /* renamed from: c */
    public static void m38645c(Bundle bundle, String str, Parcelable parcelable) {
        bundle.setClassLoader(zzby.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        bundle3.setClassLoader(zzby.class.getClassLoader());
        bundle3.putParcelable(str, parcelable);
        bundle.putBundle("map_state", bundle3);
    }
}
