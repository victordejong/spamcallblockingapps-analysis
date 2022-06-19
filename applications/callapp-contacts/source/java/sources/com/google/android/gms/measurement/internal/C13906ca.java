package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.C12045o;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ca */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ca.class */
public final class C13906ca extends C13934db {

    /* renamed from: c */
    private long f51246c;

    /* renamed from: b */
    private final Map<String, Integer> f51245b = new C0428a();

    /* renamed from: a */
    private final Map<String, Long> f51244a = new C0428a();

    public C13906ca(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    private final void m12124a(long j, C14044hc c14044hc) {
        if (c14044hc == null) {
            this.f51637t.mo11661c().f51403k.m12092a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.f51637t.mo11661c().f51403k.m12091a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C14052hk.m11825a(c14044hc, bundle, true);
            this.f51637t.m11989f().m11856a("am", "_xa", bundle);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m12123a(C13906ca c13906ca, String str, long j) {
        c13906ca.mo11884S_();
        C12045o.m19160a(str);
        if (c13906ca.f51245b.isEmpty()) {
            c13906ca.f51246c = j;
        }
        Integer num = c13906ca.f51245b.get(str);
        if (num != null) {
            c13906ca.f51245b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (c13906ca.f51245b.size() >= 100) {
            c13906ca.f51637t.mo11661c().f51398f.m12092a("Too many ads visible");
        } else {
            c13906ca.f51245b.put(str, 1);
            c13906ca.f51244a.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: a */
    private final void m12121a(String str, long j, C14044hc c14044hc) {
        if (c14044hc == null) {
            this.f51637t.mo11661c().f51403k.m12092a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.f51637t.mo11661c().f51403k.m12091a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C14052hk.m11825a(c14044hc, bundle, true);
            this.f51637t.m11989f().m11856a("am", "_xu", bundle);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m12119b(C13906ca c13906ca, String str, long j) {
        c13906ca.mo11884S_();
        C12045o.m19160a(str);
        Integer num = c13906ca.f51245b.get(str);
        if (num == null) {
            c13906ca.f51637t.mo11661c().f51395c.m12091a("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        C14044hc m11819a = c13906ca.f51637t.m11985l().m11819a(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            c13906ca.f51245b.put(str, Integer.valueOf(intValue));
            return;
        }
        c13906ca.f51245b.remove(str);
        Long l = c13906ca.f51244a.get(str);
        if (l == null) {
            c13906ca.f51637t.mo11661c().f51395c.m12092a("First ad unit exposure time was never set");
        } else {
            long longValue = l.longValue();
            c13906ca.f51244a.remove(str);
            c13906ca.m12121a(str, j - longValue, m11819a);
        }
        if (!c13906ca.f51245b.isEmpty()) {
            return;
        }
        long j2 = c13906ca.f51246c;
        if (j2 == 0) {
            c13906ca.f51637t.mo11661c().f51395c.m12092a("First ad exposure time was never set");
            return;
        }
        c13906ca.m12124a(j - j2, m11819a);
        c13906ca.f51246c = 0L;
    }

    /* renamed from: a */
    public final void m12125a(long j) {
        C14044hc m11819a = this.f51637t.m11985l().m11819a(false);
        for (String str : this.f51244a.keySet()) {
            m12121a(str, j - this.f51244a.get(str).longValue(), m11819a);
        }
        if (!this.f51244a.isEmpty()) {
            m12124a(j - this.f51246c, m11819a);
        }
        m12120b(j);
    }

    /* renamed from: a */
    public final void m12122a(String str, long j) {
        if (str == null || str.length() == 0) {
            this.f51637t.mo11661c().f51395c.m12092a("Ad unit id must be a non-empty string");
        } else {
            this.f51637t.mo11658d().m12011a(new RunnableC13851a(this, str, j));
        }
    }

    /* renamed from: b */
    public final void m12120b(long j) {
        for (String str : this.f51244a.keySet()) {
            this.f51244a.put(str, Long.valueOf(j));
        }
        if (!this.f51244a.isEmpty()) {
            this.f51246c = j;
        }
    }

    /* renamed from: b */
    public final void m12118b(String str, long j) {
        if (str == null || str.length() == 0) {
            this.f51637t.mo11661c().f51395c.m12092a("Ad unit id must be a non-empty string");
        } else {
            this.f51637t.mo11658d().m12011a(new RunnableC14147y(this, str, j));
        }
    }
}
