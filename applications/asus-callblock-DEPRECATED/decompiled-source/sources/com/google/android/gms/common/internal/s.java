package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/s.class */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4030a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static s f4031b;

    public static s a(Context context) {
        synchronized (f4030a) {
            if (f4031b == null) {
                f4031b = new t(context.getApplicationContext());
            }
        }
        return f4031b;
    }

    public abstract void a(String str, String str2, ServiceConnection serviceConnection);

    public abstract boolean a(String str, String str2, ServiceConnection serviceConnection, String str3);
}
