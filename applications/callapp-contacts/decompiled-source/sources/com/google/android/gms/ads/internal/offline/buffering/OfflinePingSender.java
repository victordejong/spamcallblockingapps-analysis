package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.ql;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflinePingSender.class */
public class OfflinePingSender extends Worker {
    private final ql zzdsh;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zzdsh = ekb.b().a(context, new mj());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        try {
            this.zzdsh.a();
            return ListenableWorker.a.a();
        } catch (RemoteException e) {
            return ListenableWorker.a.b();
        }
    }
}
