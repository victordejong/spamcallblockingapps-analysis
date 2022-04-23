package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fi.class */
final class fi implements Callable<List<js>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29636a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ fl f29637b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fi(fl flVar, String str) {
        this.f29637b = flVar;
        this.f29636a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<js> call() throws Exception {
        jo joVar;
        jo joVar2;
        joVar = this.f29637b.f29644a;
        joVar.n();
        joVar2 = this.f29637b.f29644a;
        return joVar2.f().a(this.f29636a);
    }
}
