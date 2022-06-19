package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drz.class */
public abstract class drz {
    /* renamed from: a */
    public static drz m15790a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new drw(cls.getSimpleName()) : new dry(cls.getSimpleName());
    }

    /* renamed from: a */
    public abstract void mo15789a(String str);
}
