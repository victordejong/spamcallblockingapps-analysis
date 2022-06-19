package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
import e.m.a.f.l.a.z;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzfc.class */
public final /* synthetic */ class zzfc implements Callable {

    /* renamed from: a */
    public final /* synthetic */ zzfi f6398a;

    /* renamed from: b */
    public final /* synthetic */ String f6399b;

    public /* synthetic */ zzfc(zzfi zzfiVar, String str) {
        this.f6398a = zzfiVar;
        this.f6399b = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzn("internal.remoteConfig", new z(this.f6398a, this.f6399b));
    }
}
