package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.jy;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jk.class */
public final class jk implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29893a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ jo f29894b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jk(jo joVar, zzp zzpVar) {
        this.f29894b = joVar;
        this.f29893a = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        jy.b();
        String str = null;
        if (!this.f29894b.b().d(null, dc.aw) || (this.f29894b.a((String) o.a(this.f29893a.zza)).c() && f.a(this.f29893a.zzv).c())) {
            str = this.f29894b.c(this.f29893a).c();
        } else {
            this.f29894b.c().k.a("Analytics storage consent denied. Returning null app instance id");
        }
        return str;
    }
}
