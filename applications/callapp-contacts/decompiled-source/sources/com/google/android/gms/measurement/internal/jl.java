package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jl.class */
final class jl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29895a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29896b = "_err";

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Bundle f29897c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ jm f29898d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jl(jm jmVar, String str, String str2, Bundle bundle) {
        this.f29898d = jmVar;
        this.f29895a = str;
        this.f29897c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29898d.f29899a.a((zzas) o.a(this.f29898d.f29899a.h().a(this.f29895a, this.f29896b, this.f29897c, "auto", this.f29898d.f29899a.Y_().a(), false)), this.f29895a);
    }
}
