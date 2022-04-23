package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ex.class */
final class ex implements Callable<List<js>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29599a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29600b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29601c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ fl f29602d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(fl flVar, String str, String str2, String str3) {
        this.f29602d = flVar;
        this.f29599a = str;
        this.f29600b = str2;
        this.f29601c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<js> call() throws Exception {
        jo joVar;
        jo joVar2;
        joVar = this.f29602d.f29644a;
        joVar.n();
        joVar2 = this.f29602d.f29644a;
        return joVar2.f().a(this.f29599a, this.f29600b, this.f29601c);
    }
}
