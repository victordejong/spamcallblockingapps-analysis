package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zza.class */
public final class zza extends zzd {

    /* renamed from: d */
    private long f8829d;

    /* renamed from: c */
    private final Map<String, Integer> f8828c = new ArrayMap();

    /* renamed from: b */
    private final Map<String, Long> f8827b = new ArrayMap();

    public zza(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: A */
    public final void m11815A(long j) {
        for (String str : this.f8827b.keySet()) {
            this.f8827b.put(str, Long.valueOf(j));
        }
        if (!this.f8827b.isEmpty()) {
            this.f8829d = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: D */
    public final void m11812D(String str, long j) {
        mo11316e();
        Preconditions.m14527g(str);
        if (this.f8828c.isEmpty()) {
            this.f8829d = j;
        }
        Integer num = this.f8828c.get(str);
        if (num != null) {
            this.f8828c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f8828c.size() >= 100) {
            mo11081c().m11557G().m11540a("Too many ads visible");
        } else {
            this.f8828c.put(str, 1);
            this.f8827b.put(str, Long.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: E */
    public final void m11811E(String str, long j) {
        mo11316e();
        Preconditions.m14527g(str);
        Integer num = this.f8828c.get(str);
        if (num != null) {
            zzig C = m11597r().m11229C(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f8828c.remove(str);
                Long l = this.f8827b.get(str);
                if (l == null) {
                    mo11081c().m11560D().m11540a("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    this.f8827b.remove(str);
                    m11805z(str, j - longValue, C);
                }
                if (this.f8828c.isEmpty()) {
                    long j2 = this.f8829d;
                    if (j2 == 0) {
                        mo11081c().m11560D().m11540a("First ad exposure time was never set");
                        return;
                    }
                    m11809v(j - j2, C);
                    this.f8829d = 0L;
                    return;
                }
                return;
            }
            this.f8828c.put(str, Integer.valueOf(intValue));
            return;
        }
        mo11081c().m11560D().m11539b("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    @WorkerThread
    /* renamed from: v */
    private final void m11809v(long j, zzig zzigVar) {
        if (zzigVar == null) {
            mo11081c().m11552L().m11540a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            mo11081c().m11552L().m11539b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzij.m11221K(zzigVar, bundle, true);
            m11600o().m11273X("am", "_xa", bundle);
        }
    }

    @WorkerThread
    /* renamed from: z */
    private final void m11805z(String str, long j, zzig zzigVar) {
        if (zzigVar == null) {
            mo11081c().m11552L().m11540a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            mo11081c().m11552L().m11539b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzij.m11221K(zzigVar, bundle, true);
            m11600o().m11273X("am", "_xu", bundle);
        }
    }

    /* renamed from: C */
    public final void m11813C(String str, long j) {
        if (str == null || str.length() == 0) {
            mo11081c().m11560D().m11540a("Ad unit id must be a non-empty string");
        } else {
            mo11083b().m11409x(new zzb(this, str, j));
        }
    }

    @WorkerThread
    /* renamed from: u */
    public final void m11810u(long j) {
        zzig C = m11597r().m11229C(false);
        for (String str : this.f8827b.keySet()) {
            m11805z(str, j - this.f8827b.get(str).longValue(), C);
        }
        if (!this.f8827b.isEmpty()) {
            m11809v(j - this.f8829d, C);
        }
        m11815A(j);
    }

    /* renamed from: y */
    public final void m11806y(String str, long j) {
        if (str == null || str.length() == 0) {
            mo11081c().m11560D().m11540a("Ad unit id must be a non-empty string");
        } else {
            mo11083b().m11409x(new zzc(this, str, j));
        }
    }
}
