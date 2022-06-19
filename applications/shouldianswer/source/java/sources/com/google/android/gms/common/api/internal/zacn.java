package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacn.class */
final class zacn implements Runnable {
    private final /* synthetic */ Result zakv;
    private final /* synthetic */ zacm zakw;

    public zacn(zacm zacmVar, Result result) {
        this.zakw = zacmVar;
        this.zakv = result;
    }

    @Override // java.lang.Runnable
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
                BasePendingResult.zadn.set(true);
                resultTransform = this.zakw.zako;
                PendingResult onSuccess = resultTransform.onSuccess(this.zakv);
                zacoVar3 = this.zakw.zakt;
                zacoVar4 = this.zakw.zakt;
                zacoVar3.sendMessage(zacoVar4.obtainMessage(0, onSuccess));
                BasePendingResult.zadn.set(false);
                zacm zacmVar = this.zakw;
                zacm.zab(this.zakv);
                weakReference3 = this.zakw.zadq;
                GoogleApiClient googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient == null) {
                    return;
                }
                googleApiClient.zab(this.zakw);
            } catch (RuntimeException e) {
                zacoVar = this.zakw.zakt;
                zacoVar2 = this.zakw.zakt;
                zacoVar.sendMessage(zacoVar2.obtainMessage(1, e));
                BasePendingResult.zadn.set(false);
                zacm zacmVar2 = this.zakw;
                zacm.zab(this.zakv);
                weakReference = this.zakw.zadq;
                GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
                if (googleApiClient2 == null) {
                    return;
                }
                googleApiClient2.zab(this.zakw);
            }
        } catch (Throwable th) {
            BasePendingResult.zadn.set(false);
            zacm zacmVar3 = this.zakw;
            zacm.zab(this.zakv);
            weakReference2 = this.zakw.zadq;
            GoogleApiClient googleApiClient3 = (GoogleApiClient) weakReference2.get();
            if (googleApiClient3 != null) {
                googleApiClient3.zab(this.zakw);
            }
            throw th;
        }
    }
}
