package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.Executor;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24980q;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {

    /* renamed from: a */
    public static final Object f5975a = new Object();

    /* renamed from: b */
    public static C24980q f5976b;

    @KeepForSdk
    /* renamed from: a */
    public static GmsClientSupervisor m38918a(Context context) {
        synchronized (f5975a) {
            if (f5976b == null) {
                f5976b = new C24980q(context.getApplicationContext(), context.getMainLooper());
            }
        }
        return f5976b;
    }

    /* renamed from: b */
    public abstract void mo4247b(zzn zznVar, ServiceConnection serviceConnection, String str);

    /* renamed from: c */
    public abstract boolean mo4246c(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor);
}
