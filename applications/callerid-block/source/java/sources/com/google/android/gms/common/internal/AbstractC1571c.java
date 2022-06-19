package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c.class */
public abstract class AbstractC1571c {

    /* renamed from: a */
    private static int f5849a = 4225;

    /* renamed from: b */
    private static final Object f5850b = new Object();

    /* renamed from: c */
    private static AbstractC1571c f5851c;

    /* renamed from: a */
    public static int m8373a() {
        return f5849a;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static AbstractC1571c m8372b(@RecentlyNonNull Context context) {
        synchronized (f5850b) {
            if (f5851c == null) {
                f5851c = new i0(context.getApplicationContext());
            }
        }
        return f5851c;
    }

    /* renamed from: c */
    public final void m8371c(@RecentlyNonNull String str, @RecentlyNonNull String str2, int i, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str3, boolean z) {
        m8369e(new C1576e0(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: d */
    public abstract boolean m8370d(C1576e0 c1576e0, ServiceConnection serviceConnection, String str);

    /* renamed from: e */
    protected abstract void m8369e(C1576e0 c1576e0, ServiceConnection serviceConnection, String str);
}
