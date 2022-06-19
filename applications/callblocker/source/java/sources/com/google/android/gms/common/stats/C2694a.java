package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.util.C2707d;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.common.stats.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public class C2694a {

    /* renamed from: b */
    private static volatile C2694a f7481b;

    /* renamed from: d */
    private final List<String> f7483d = Collections.EMPTY_LIST;

    /* renamed from: e */
    private final List<String> f7484e = Collections.EMPTY_LIST;

    /* renamed from: f */
    private final List<String> f7485f = Collections.EMPTY_LIST;

    /* renamed from: g */
    private final List<String> f7486g = Collections.EMPTY_LIST;

    /* renamed from: a */
    private static final Object f7480a = new Object();

    /* renamed from: c */
    private static boolean f7482c = false;

    private C2694a() {
    }

    /* renamed from: a */
    public static C2694a m13893a() {
        if (f7481b == null) {
            synchronized (f7480a) {
                if (f7481b == null) {
                    f7481b = new C2694a();
                }
            }
        }
        return f7481b;
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: a */
    public void m13891a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    /* renamed from: a */
    public boolean m13892a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m13890a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    /* renamed from: a */
    public final boolean m13890a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        boolean bindService;
        ComponentName component = intent.getComponent();
        if (component == null ? false : C2707d.m13874a(context, component.getPackageName())) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            bindService = false;
        } else {
            bindService = context.bindService(intent, serviceConnection, i);
        }
        return bindService;
    }
}
