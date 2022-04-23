package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ey.class */
final class ey implements Callable<List<zzaa>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29603a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29604b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29605c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ fl f29606d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ey(fl flVar, String str, String str2, String str3) {
        this.f29606d = flVar;
        this.f29603a = str;
        this.f29604b = str2;
        this.f29605c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzaa> call() throws Exception {
        jo joVar;
        jo joVar2;
        joVar = this.f29606d.f29644a;
        joVar.n();
        joVar2 = this.f29606d.f29644a;
        return joVar2.f().b(this.f29603a, this.f29604b, this.f29605c);
    }
}
