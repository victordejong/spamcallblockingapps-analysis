package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.ql;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster.class */
public class OfflineNotificationPoster extends Worker {
    private final ql zzdsh;

    public OfflineNotificationPoster(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zzdsh = ekb.b().a(context, new mj());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        try {
            this.zzdsh.a(d.a(getApplicationContext()), getInputData().a("uri"), getInputData().a("gws_query_id"));
            return ListenableWorker.a.a();
        } catch (RemoteException e) {
            return ListenableWorker.a.b();
        }
    }
}
