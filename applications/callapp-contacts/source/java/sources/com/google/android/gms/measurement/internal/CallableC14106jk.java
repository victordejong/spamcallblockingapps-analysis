package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13620jy;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.jk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jk.class */
public final class CallableC14106jk implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ zzp f51949a;

    /* renamed from: b */
    final /* synthetic */ C14110jo f51950b;

    public CallableC14106jk(C14110jo c14110jo, zzp zzpVar) {
        this.f51950b = c14110jo;
        this.f51949a = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        C13620jy.m12411b();
        String str = null;
        if (!this.f51950b.m11670b().m12061d(null, C13935dc.f51335aw) || (this.f51950b.m11673a((String) C12045o.m19162a(this.f51949a.zza)).m11957c() && C13987f.m11963a(this.f51949a.zzv).m11957c())) {
            str = this.f51950b.m11659c(this.f51949a).m11946c();
        } else {
            this.f51950b.mo11661c().f51403k.m12092a("Analytics storage consent denied. Returning null app instance id");
        }
        return str;
    }
}
