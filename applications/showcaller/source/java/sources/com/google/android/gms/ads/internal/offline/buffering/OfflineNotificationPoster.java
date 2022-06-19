package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.ab0;
import com.google.android.gms.internal.ads.p70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster.class */
public class OfflineNotificationPoster extends Worker {

    /* renamed from: j */
    private final ab0 f18311j;

    public OfflineNotificationPoster(@RecentlyNonNull Context context, @RecentlyNonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f18311j = C7118wr.m9484b().m10184p(context, new p70());
    }

    @Override // androidx.work.Worker
    @RecentlyNonNull
    public final ListenableWorker.AbstractC1224a doWork() {
        try {
            this.f18311j.mo8876O0(BinderC6255b.m16744m2(getApplicationContext()), getInputData().m30550i("uri"), getInputData().m30550i("gws_query_id"));
            return ListenableWorker.AbstractC1224a.m30616c();
        } catch (RemoteException e) {
            return ListenableWorker.AbstractC1224a.m30618a();
        }
    }
}
