package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.b.a;
import com.google.android.gms.common.internal.o;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ca.class */
public final class ca extends db {

    /* renamed from: c  reason: collision with root package name */
    private long f29453c;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Integer> f29452b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Long> f29451a = new a();

    public ca(es esVar) {
        super(esVar);
    }

    private final void a(long j, hc hcVar) {
        if (hcVar == null) {
            this.t.c().k.a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.t.c().k.a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            hk.a(hcVar, bundle, true);
            this.t.f().a("am", "_xa", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar, String str, long j) {
        caVar.S_();
        o.a(str);
        if (caVar.f29452b.isEmpty()) {
            caVar.f29453c = j;
        }
        Integer num = caVar.f29452b.get(str);
        if (num != null) {
            caVar.f29452b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (caVar.f29452b.size() >= 100) {
            caVar.t.c().f.a("Too many ads visible");
        } else {
            caVar.f29452b.put(str, 1);
            caVar.f29451a.put(str, Long.valueOf(j));
        }
    }

    private final void a(String str, long j, hc hcVar) {
        if (hcVar == null) {
            this.t.c().k.a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.t.c().k.a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            hk.a(hcVar, bundle, true);
            this.t.f().a("am", "_xu", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ca caVar, String str, long j) {
        caVar.S_();
        o.a(str);
        Integer num = caVar.f29452b.get(str);
        if (num != null) {
            hc a2 = caVar.t.l().a(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                caVar.f29452b.remove(str);
                Long l = caVar.f29451a.get(str);
                if (l == null) {
                    caVar.t.c().f29506c.a("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    caVar.f29451a.remove(str);
                    caVar.a(str, j - longValue, a2);
                }
                if (caVar.f29452b.isEmpty()) {
                    long j2 = caVar.f29453c;
                    if (j2 == 0) {
                        caVar.t.c().f29506c.a("First ad exposure time was never set");
                        return;
                    }
                    caVar.a(j - j2, a2);
                    caVar.f29453c = 0L;
                    return;
                }
                return;
            }
            caVar.f29452b.put(str, Integer.valueOf(intValue));
            return;
        }
        caVar.t.c().f29506c.a("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    public final void a(long j) {
        hc a2 = this.t.l().a(false);
        for (String str : this.f29451a.keySet()) {
            a(str, j - this.f29451a.get(str).longValue(), a2);
        }
        if (!this.f29451a.isEmpty()) {
            a(j - this.f29453c, a2);
        }
        b(j);
    }

    public final void a(String str, long j) {
        if (str == null || str.length() == 0) {
            this.t.c().f29506c.a("Ad unit id must be a non-empty string");
        } else {
            this.t.d().a(new a(this, str, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(long j) {
        for (String str : this.f29451a.keySet()) {
            this.f29451a.put(str, Long.valueOf(j));
        }
        if (!this.f29451a.isEmpty()) {
            this.f29453c = j;
        }
    }

    public final void b(String str, long j) {
        if (str == null || str.length() == 0) {
            this.t.c().f29506c.a("Ad unit id must be a non-empty string");
        } else {
            this.t.d().a(new y(this, str, j));
        }
    }
}
