package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanf;
import com.google.android.gms.internal.ads.zzarf;
import com.google.android.gms.internal.ads.zzwr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster.class */
public class OfflineNotificationPoster extends Worker {
    private final zzarf zzdqx;

    public OfflineNotificationPoster(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zzdqx = zzwr.zzqo().zzb(context, new zzanf());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        try {
            this.zzdqx.zzc(ObjectWrapper.wrap(getApplicationContext()), getInputData().getString(ShareConstants.MEDIA_URI), getInputData().getString("gws_query_id"));
            return ListenableWorker.Result.success();
        } catch (RemoteException e) {
            return ListenableWorker.Result.failure();
        }
    }
}
