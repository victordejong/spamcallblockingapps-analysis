package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/zab.class */
public final class zab implements PendingResult.StatusListener {
    public final /* synthetic */ Batch zaa;

    public zab(Batch batch) {
        this.zaa = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Object obj;
        int i;
        boolean z;
        boolean z2;
        PendingResult[] pendingResultArr;
        obj = this.zaa.zai;
        synchronized (obj) {
            if (this.zaa.isCanceled()) {
                return;
            }
            if (status.isCanceled()) {
                this.zaa.zag = true;
            } else if (!status.isSuccess()) {
                this.zaa.zaf = true;
            }
            Batch.zad(this.zaa);
            i = this.zaa.zae;
            if (i == 0) {
                z = this.zaa.zag;
                if (z) {
                    zab.super.cancel();
                } else {
                    z2 = this.zaa.zaf;
                    Status status2 = z2 ? new Status(13) : Status.RESULT_SUCCESS;
                    Batch batch = this.zaa;
                    pendingResultArr = batch.zah;
                    batch.setResult(new BatchResult(status2, pendingResultArr));
                }
            }
        }
    }
}
