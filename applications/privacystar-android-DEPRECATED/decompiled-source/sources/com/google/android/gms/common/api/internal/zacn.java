package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacn.class */
final class zacn implements Runnable {
    private final /* synthetic */ Result zaku;
    private final /* synthetic */ zacm zakv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacn(zacm zacmVar, Result result) {
        this.zakv = zacmVar;
        this.zaku = result;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        zaco zacoVar;
        zaco zacoVar2;
        WeakReference weakReference;
        WeakReference weakReference2;
        ResultTransform resultTransform;
        zaco zacoVar3;
        zaco zacoVar4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.zadm.set(true);
                resultTransform = this.zakv.zakn;
                PendingResult onSuccess = resultTransform.onSuccess(this.zaku);
                zacoVar3 = this.zakv.zaks;
                zacoVar4 = this.zakv.zaks;
                zacoVar3.sendMessage(zacoVar4.obtainMessage(0, onSuccess));
                BasePendingResult.zadm.set(false);
                zacm zacmVar = this.zakv;
                zacm.zab(this.zaku);
                weakReference3 = this.zakv.zadp;
                GoogleApiClient googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient != null) {
                    googleApiClient.zab(this.zakv);
                }
            } catch (RuntimeException e) {
                zacoVar = this.zakv.zaks;
                zacoVar2 = this.zakv.zaks;
                zacoVar.sendMessage(zacoVar2.obtainMessage(1, e));
                BasePendingResult.zadm.set(false);
                zacm zacmVar2 = this.zakv;
                zacm.zab(this.zaku);
                weakReference = this.zakv.zadp;
                GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
                if (googleApiClient2 != null) {
                    googleApiClient2.zab(this.zakv);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.zadm.set(false);
            zacm zacmVar3 = this.zakv;
            zacm.zab(this.zaku);
            weakReference2 = this.zakv.zadp;
            GoogleApiClient googleApiClient3 = (GoogleApiClient) weakReference2.get();
            if (googleApiClient3 != null) {
                googleApiClient3.zab(this.zakv);
            }
            throw th;
        }
    }
}
