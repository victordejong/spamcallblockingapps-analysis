package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
/* renamed from: com.google.android.gms.common.internal.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/g.class */
public abstract class AbstractC12034g {

    /* renamed from: a */
    private static int f39558a = 4225;

    /* renamed from: b */
    private static final Object f39559b = new Object();

    /* renamed from: c */
    private static AbstractC12034g f39560c;

    /* renamed from: a */
    public static int m19182a() {
        return f39558a;
    }

    /* renamed from: a */
    public static AbstractC12034g m19180a(Context context) {
        synchronized (f39559b) {
            if (f39560c == null) {
                f39560c = new C12016bo(context.getApplicationContext());
            }
        }
        return f39560c;
    }

    /* renamed from: a */
    protected abstract void mo19179a(C12012bk c12012bk, ServiceConnection serviceConnection);

    /* renamed from: a */
    public final void m19177a(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        mo19179a(new C12012bk(str, str2, i, z), serviceConnection);
    }

    /* renamed from: a */
    public final boolean m19181a(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return mo19178a(new C12012bk(componentName, f39558a), serviceConnection, str);
    }

    /* renamed from: a */
    public abstract boolean mo19178a(C12012bk c12012bk, ServiceConnection serviceConnection, String str);

    /* renamed from: b */
    public final void m19176b(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        mo19179a(new C12012bk(componentName, f39558a), serviceConnection);
    }
}
