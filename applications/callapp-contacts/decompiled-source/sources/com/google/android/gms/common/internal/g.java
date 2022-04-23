package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/g.class */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static int f22892a = 4225;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f22893b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static g f22894c;

    public static int a() {
        return f22892a;
    }

    public static g a(Context context) {
        synchronized (f22893b) {
            if (f22894c == null) {
                f22894c = new bo(context.getApplicationContext());
            }
        }
        return f22894c;
    }

    protected abstract void a(bk bkVar, ServiceConnection serviceConnection);

    public final void a(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        a(new bk(str, str2, i, z), serviceConnection);
    }

    public final boolean a(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return a(new bk(componentName, f22892a), serviceConnection, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean a(bk bkVar, ServiceConnection serviceConnection, String str);

    public final void b(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        a(new bk(componentName, f22892a), serviceConnection);
    }
}
