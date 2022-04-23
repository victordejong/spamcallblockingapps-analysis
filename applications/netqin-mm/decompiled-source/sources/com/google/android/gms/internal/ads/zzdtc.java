package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtc.class */
public final class zzdtc {

    /* renamed from: d */
    public static volatile zzbw.zza.zzc f27816d = zzbw.zza.zzc.UNKNOWN;

    /* renamed from: a */
    public final Context f27817a;

    /* renamed from: b */
    public final Executor f27818b;

    /* renamed from: c */
    public final Task<zztx> f27819c;

    public zzdtc(Context context, Executor executor, Task<zztx> task) {
        this.f27817a = context;
        this.f27818b = executor;
        this.f27819c = task;
    }

    /* renamed from: a */
    public static zzdtc m13216a(final Context context, Executor executor) {
        return new zzdtc(context, executor, Tasks.m8589a(executor, new Callable(context) { // from class: c.d.b.d.g.a.xz

            /* renamed from: a */
            public final Context f16077a;

            {
                this.f16077a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdtc.m13217a(this.f16077a);
            }
        }));
    }

    /* renamed from: a */
    public static final /* synthetic */ zztx m13217a(Context context) throws Exception {
        return new zztx(context, "GLAS", null);
    }

    /* renamed from: a */
    public static final /* synthetic */ Boolean m13215a(zzbw.zza.C10490zza zzaVar, int i, Task task) throws Exception {
        if (!task.mo8601e()) {
            return false;
        }
        zzub a = ((zztx) task.mo8606b()).m11418a(((zzbw.zza) ((zzejz) zzaVar.mo12342K())).mo12349c());
        a.m11208b(i);
        a.m11210a();
        return true;
    }

    /* renamed from: a */
    public static void m13214a(zzbw.zza.zzc zzcVar) {
        f27816d = zzcVar;
    }

    /* renamed from: a */
    public final Task<Boolean> m13222a(int i, long j) {
        return m13220a(i, j, null, null, null, null);
    }

    /* renamed from: a */
    public final Task<Boolean> m13221a(int i, long j, Exception exc) {
        return m13220a(i, j, exc, null, null, null);
    }

    /* renamed from: a */
    public final Task<Boolean> m13220a(final int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        final zzbw.zza.C10490zza m = zzbw.zza.m14994m();
        m.m14990a(this.f27817a.getPackageName());
        m.m14992a(j);
        m.m14991a(f27816d);
        if (exc != null) {
            m.m14989b(zzdwh.m13084a(exc));
            m.m14988c(exc.getClass().getName());
        }
        if (str2 != null) {
            m.m14987d(str2);
        }
        if (str != null) {
            m.m14986e(str);
        }
        return this.f27819c.mo8611a(this.f27818b, new Continuation(m, i) { // from class: c.d.b.d.g.a.yz

            /* renamed from: a */
            public final zzbw.zza.C10490zza f16241a;

            /* renamed from: b */
            public final int f16242b;

            {
                this.f16241a = m;
                this.f16242b = i;
            }

            @Override // com.google.android.gms.tasks.Continuation
            /* renamed from: a */
            public final Object mo8621a(Task task) {
                return zzdtc.m13215a(this.f16241a, this.f16242b, task);
            }
        });
    }

    /* renamed from: a */
    public final Task<Boolean> m13219a(int i, long j, String str, Map<String, String> map) {
        return m13220a(i, j, null, str, null, null);
    }

    /* renamed from: a */
    public final Task<Boolean> m13218a(int i, String str) {
        return m13220a(4007, 0L, null, null, null, str);
    }
}
