package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbq.class */
public final class zzbq implements Callable<String> {
    private final /* synthetic */ zzbo zzye;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(zzbo zzboVar) {
        this.zzye = zzboVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        String zzdu;
        zzdu = this.zzye.zzdu();
        return zzdu;
    }
}
