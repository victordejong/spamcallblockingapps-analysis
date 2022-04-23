package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.z4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z4.class */
final class CallableC2382z4 implements Callable<List<zzaa>> {

    /* renamed from: a */
    final /* synthetic */ String f10517a;

    /* renamed from: b */
    final /* synthetic */ String f10518b;

    /* renamed from: c */
    final /* synthetic */ String f10519c;

    /* renamed from: d */
    final /* synthetic */ l5 f10520d;

    CallableC2382z4(l5 l5Var, String str, String str2, String str3) {
        this.f10520d = l5Var;
        this.f10517a = str;
        this.f10518b = str2;
        this.f10519c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzaa> call() {
        l5.w4(this.f10520d).k();
        return l5.w4(this.f10520d).V().a0(this.f10517a, this.f10518b, this.f10519c);
    }
}
