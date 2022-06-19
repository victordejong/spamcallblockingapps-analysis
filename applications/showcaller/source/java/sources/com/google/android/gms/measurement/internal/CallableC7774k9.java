package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7382g9;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.k9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k9.class */
public final class CallableC7774k9 implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ zzp f35408a;

    /* renamed from: b */
    final /* synthetic */ C7819o9 f35409b;

    public CallableC7774k9(C7819o9 c7819o9, zzp zzpVar) {
        this.f35409b = c7819o9;
        this.f35408a = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        C7382g9.m7385a();
        String str = null;
        if (!this.f35409b.m6161T().m6471u(null, C7672c3.f35111y0) || (this.f35409b.m6144g0((String) C6155o.m17018j(this.f35408a.f35883d)).m6443h() && C7704f.m6448c(this.f35408a.f35904y).m6443h())) {
            str = this.f35409b.m6122y(this.f35408a).m6542O();
        } else {
            this.f35409b.mo6047C().m6187u().m6216a("Analytics storage consent denied. Returning null app instance id");
        }
        return str;
    }
}
