package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbxe;
import com.google.android.gms.internal.ads.zzcbg;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster.class */
public class OfflineNotificationPoster extends Worker {
    private final zzcbg zza;

    public OfflineNotificationPoster(@RecentlyNonNull Context context, @RecentlyNonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zza = zzbgo.zza().zzl(context, new zzbxe());
    }

    @Override // androidx.work.Worker
    @RecentlyNonNull
    public final ListenableWorker.AbstractC0671a doWork() {
        try {
            this.zza.zzg(ObjectWrapper.wrap(getApplicationContext()), getInputData().m7484b("uri"), getInputData().m7484b("gws_query_id"));
            return new ListenableWorker.AbstractC0671a.C0674c();
        } catch (RemoteException e) {
            return new ListenableWorker.AbstractC0671a.C0672a();
        }
    }
}
