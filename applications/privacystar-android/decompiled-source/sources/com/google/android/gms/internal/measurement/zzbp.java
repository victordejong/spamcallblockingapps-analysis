package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbp.class */
public final class zzbp implements Callable<String> {
    private final /* synthetic */ zzbo zzye;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbp(zzbo zzboVar) {
        this.zzye = zzboVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.zzye.zzdt();
    }
}
