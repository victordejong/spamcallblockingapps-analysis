package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.ab0;
import com.google.android.gms.internal.ads.p70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflinePingSender.class */
public class OfflinePingSender extends Worker {

    /* renamed from: j */
    private final ab0 f18312j;

    public OfflinePingSender(@RecentlyNonNull Context context, @RecentlyNonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f18312j = C7118wr.m9484b().m10184p(context, new p70());
    }

    @Override // androidx.work.Worker
    @RecentlyNonNull
    public final ListenableWorker.AbstractC1224a doWork() {
        try {
            this.f18312j.zzg();
            return ListenableWorker.AbstractC1224a.m30616c();
        } catch (RemoteException e) {
            return ListenableWorker.AbstractC1224a.m30618a();
        }
    }
}
