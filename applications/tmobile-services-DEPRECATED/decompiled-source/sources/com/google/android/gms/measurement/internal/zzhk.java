package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhk.class */
public final class zzhk implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Bundle f9425f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9426g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhk(zzgy zzgyVar, Bundle bundle) {
        this.f9426g = zzgyVar;
        this.f9425f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9426g.m11296B0(this.f9425f);
    }
}
