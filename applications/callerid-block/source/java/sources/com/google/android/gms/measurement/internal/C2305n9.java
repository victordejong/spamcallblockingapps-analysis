package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.x1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.n9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n9.class */
final class C2305n9 {

    /* renamed from: a */
    x1 f10319a;

    /* renamed from: b */
    List<Long> f10320b;

    /* renamed from: c */
    List<p1> f10321c;

    /* renamed from: d */
    long f10322d;

    /* renamed from: e */
    final /* synthetic */ o9 f10323e;

    /* renamed from: b */
    private static final long m3869b(p1 p1Var) {
        return ((p1Var.A() / 1000) / 60) / 60;
    }

    /* renamed from: a */
    public final boolean m3870a(long j, p1 p1Var) {
        C1581h.m8347h(p1Var);
        if (this.f10321c == null) {
            this.f10321c = new ArrayList();
        }
        if (this.f10320b == null) {
            this.f10320b = new ArrayList();
        }
        if (this.f10321c.size() <= 0 || m3869b(this.f10321c.get(0)) == m3869b(p1Var)) {
            long b = this.f10322d + p1Var.b();
            this.f10323e.T();
            if (b >= Math.max(0, C2232c3.f10054i.m4027b(null).intValue())) {
                return false;
            }
            this.f10322d = b;
            this.f10321c.add(p1Var);
            this.f10320b.add(Long.valueOf(j));
            int size = this.f10321c.size();
            this.f10323e.T();
            return size < Math.max(1, C2232c3.f10056j.m4027b(null).intValue());
        }
        return false;
    }
}
