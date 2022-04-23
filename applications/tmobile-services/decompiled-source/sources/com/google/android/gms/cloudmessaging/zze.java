package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zza;
import com.google.android.gms.internal.cloudmessaging.zzf;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zze.class */
public final class zze {
    @Nullable
    @GuardedBy

    /* renamed from: e */
    private static zze f6925e;

    /* renamed from: a */
    private final Context f6926a;

    /* renamed from: b */
    private final ScheduledExecutorService f6927b;
    @GuardedBy

    /* renamed from: c */
    private zzf f6928c = new zzf(this, null);
    @GuardedBy

    /* renamed from: d */
    private int f6929d = 1;

    @VisibleForTesting
    private zze(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f6927b = scheduledExecutorService;
        this.f6926a = context.getApplicationContext();
    }

    /* renamed from: a */
    private final int m15117a() {
        int i;
        synchronized (this) {
            i = this.f6929d;
            this.f6929d = i + 1;
        }
        return i;
    }

    /* renamed from: c */
    public static zze m15115c(Context context) {
        zze zzeVar;
        synchronized (zze.class) {
            try {
                if (f6925e == null) {
                    f6925e = new zze(context, zza.m14101a().mo14099b(1, new NamedThreadFactory("MessengerIpcClient"), zzf.f7842b));
                }
                zzeVar = f6925e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzeVar;
    }

    /* renamed from: e */
    private final <T> Task<T> m15113e(zzq<T> zzqVar) {
        Task<T> a;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(zzqVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.f6928c.m15106e(zzqVar)) {
                zzf zzfVar = new zzf(this, null);
                this.f6928c = zzfVar;
                zzfVar.m15106e(zzqVar);
            }
            a = zzqVar.f6947b.m10830a();
        }
        return a;
    }

    /* renamed from: d */
    public final Task<Void> m15114d(int i, Bundle bundle) {
        return m15113e(new zzn(m15117a(), 2, bundle));
    }

    /* renamed from: f */
    public final Task<Bundle> m15112f(int i, Bundle bundle) {
        return m15113e(new zzs(m15117a(), 1, bundle));
    }
}
