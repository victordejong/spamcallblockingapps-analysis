package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ew.class */
final class ew implements Callable<List<js>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29595a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29596b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29597c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ fl f29598d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ew(fl flVar, String str, String str2, String str3) {
        this.f29598d = flVar;
        this.f29595a = str;
        this.f29596b = str2;
        this.f29597c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<js> call() throws Exception {
        jo joVar;
        jo joVar2;
        joVar = this.f29598d.f29644a;
        joVar.n();
        joVar2 = this.f29598d.f29644a;
        return joVar2.f().a(this.f29595a, this.f29596b, this.f29597c);
    }
}
