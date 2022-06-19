package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7291a2;
import com.google.android.gms.internal.measurement.C7540s1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.n9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n9.class */
public final class C7808n9 {

    /* renamed from: a */
    C7291a2 f35494a;

    /* renamed from: b */
    List<Long> f35495b;

    /* renamed from: c */
    List<C7540s1> f35496c;

    /* renamed from: d */
    long f35497d;

    /* renamed from: e */
    final /* synthetic */ C7819o9 f35498e;

    public /* synthetic */ C7808n9(C7819o9 c7819o9, RunnableC7738h9 runnableC7738h9) {
        this.f35498e = c7819o9;
    }

    /* renamed from: b */
    private static final long m6205b(C7540s1 c7540s1) {
        return ((c7540s1.m6949F() / 1000) / 60) / 60;
    }

    /* renamed from: a */
    public final boolean m6206a(long j, C7540s1 c7540s1) {
        C6155o.m17018j(c7540s1);
        if (this.f35496c == null) {
            this.f35496c = new ArrayList();
        }
        if (this.f35495b == null) {
            this.f35495b = new ArrayList();
        }
        if (this.f35496c.size() <= 0 || m6205b(this.f35496c.get(0)) == m6205b(c7540s1)) {
            long mo6727g = this.f35497d + c7540s1.mo6727g();
            this.f35498e.m6161T();
            if (mo6727g >= Math.max(0, C7672c3.f35080j.m6589b(null).intValue())) {
                return false;
            }
            this.f35497d = mo6727g;
            this.f35496c.add(c7540s1);
            this.f35495b.add(Long.valueOf(j));
            int size = this.f35496c.size();
            this.f35498e.m6161T();
            return size < Math.max(1, C7672c3.f35082k.m6589b(null).intValue());
        }
        return false;
    }
}
