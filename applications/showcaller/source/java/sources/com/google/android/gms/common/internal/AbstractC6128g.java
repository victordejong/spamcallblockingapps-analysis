package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g.class */
public abstract class AbstractC6128g {

    /* renamed from: a */
    private static int f19555a = 4225;

    /* renamed from: b */
    private static final Object f19556b = new Object();

    /* renamed from: c */
    private static AbstractC6128g f19557c;

    /* renamed from: b */
    public static int m17059b() {
        return f19555a;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static AbstractC6128g m17058c(@RecentlyNonNull Context context) {
        synchronized (f19556b) {
            if (f19557c == null) {
                f19557c = new C6157o1(context.getApplicationContext());
            }
        }
        return f19557c;
    }

    /* renamed from: a */
    public boolean m17060a(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str) {
        return mo17012f(new C6143k1(componentName, m17059b()), serviceConnection, str);
    }

    /* renamed from: d */
    public void m17057d(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str) {
        mo17011g(new C6143k1(componentName, m17059b()), serviceConnection, str);
    }

    /* renamed from: e */
    public final void m17056e(@RecentlyNonNull String str, @RecentlyNonNull String str2, int i, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str3, boolean z) {
        mo17011g(new C6143k1(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: f */
    public abstract boolean mo17012f(C6143k1 c6143k1, ServiceConnection serviceConnection, String str);

    /* renamed from: g */
    protected abstract void mo17011g(C6143k1 c6143k1, ServiceConnection serviceConnection, String str);
}
