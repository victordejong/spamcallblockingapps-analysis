package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ez.class */
final class ez implements Callable<List<zzaa>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29607a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29608b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29609c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ fl f29610d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(fl flVar, String str, String str2, String str3) {
        this.f29610d = flVar;
        this.f29607a = str;
        this.f29608b = str2;
        this.f29609c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzaa> call() throws Exception {
        jo joVar;
        jo joVar2;
        joVar = this.f29610d.f29644a;
        joVar.n();
        joVar2 = this.f29610d.f29644a;
        return joVar2.f().b(this.f29607a, this.f29608b, this.f29609c);
    }
}
