package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zact.class */
final class zact implements Runnable {
    final /* synthetic */ Result zaa;
    final /* synthetic */ zacv zab;

    public zact(zacv zacvVar, Result result) {
        this.zab = zacvVar;
        this.zaa = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacu zacuVar;
        zacu zacuVar2;
        WeakReference weakReference;
        GoogleApiClient googleApiClient;
        WeakReference weakReference2;
        ResultTransform resultTransform;
        zacu zacuVar3;
        zacu zacuVar4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.zaa.set(true);
                resultTransform = this.zab.zaa;
                PendingResult onSuccess = ((ResultTransform) Preconditions.checkNotNull(resultTransform)).onSuccess(this.zaa);
                zacuVar3 = this.zab.zah;
                zacuVar4 = this.zab.zah;
                zacuVar3.sendMessage(zacuVar4.obtainMessage(0, onSuccess));
                BasePendingResult.zaa.set(false);
                zacv zacvVar = this.zab;
                zacv.zan(this.zaa);
                weakReference3 = this.zab.zag;
                googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient == null) {
                    return;
                }
            } catch (RuntimeException e) {
                zacuVar = this.zab.zah;
                zacuVar2 = this.zab.zah;
                zacuVar.sendMessage(zacuVar2.obtainMessage(1, e));
                BasePendingResult.zaa.set(false);
                zacv zacvVar2 = this.zab;
                zacv.zan(this.zaa);
                weakReference = this.zab.zag;
                googleApiClient = (GoogleApiClient) weakReference.get();
                if (googleApiClient == null) {
                    return;
                }
            }
            googleApiClient.zap(this.zab);
        } catch (Throwable th) {
            BasePendingResult.zaa.set(false);
            zacv zacvVar3 = this.zab;
            zacv.zan(this.zaa);
            weakReference2 = this.zab.zag;
            GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference2.get();
            if (googleApiClient2 != null) {
                googleApiClient2.zap(this.zab);
            }
            throw th;
        }
    }
}
