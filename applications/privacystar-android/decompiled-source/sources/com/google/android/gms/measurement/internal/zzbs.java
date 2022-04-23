package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbs.class */
public final class zzbs extends Thread {
    private final /* synthetic */ zzbo zzapg;
    private final Object zzapj = new Object();
    private final BlockingQueue<zzbr<?>> zzapk;

    public zzbs(zzbo zzboVar, String str, BlockingQueue<zzbr<?>> blockingQueue) {
        this.zzapg = zzboVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zzapk = blockingQueue;
        setName(str);
    }

    private final void zza(InterruptedException interruptedException) {
        this.zzapg.zzgo().zzjg().zzg(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzbs.run():void");
    }

    public final void zzke() {
        synchronized (this.zzapj) {
            this.zzapj.notifyAll();
        }
    }
}
