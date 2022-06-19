package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.AbstractC12854ql;
import com.google.android.gms.internal.ads.BinderC12743mj;
import com.google.android.gms.internal.ads.ekb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflinePingSender.class */
public class OfflinePingSender extends Worker {
    private final AbstractC12854ql zzdsh;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zzdsh = ekb.m14834b().m14859a(context, new BinderC12743mj());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC2980a doWork() {
        try {
            this.zzdsh.mo14234a();
            return ListenableWorker.AbstractC2980a.m39519a();
        } catch (RemoteException e) {
            return ListenableWorker.AbstractC2980a.m39518b();
        }
    }
}
