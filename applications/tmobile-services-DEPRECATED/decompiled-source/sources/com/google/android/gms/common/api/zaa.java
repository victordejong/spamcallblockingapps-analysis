package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/zaa.class */
final class zaa implements PendingResult.StatusListener {

    /* renamed from: a */
    private final /* synthetic */ Batch f7377a;

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    /* renamed from: a */
    public final void mo14432a(Status status) {
        Object obj;
        int i;
        boolean z;
        boolean z2;
        PendingResult[] pendingResultArr;
        obj = this.f7377a.f7007u;
        synchronized (obj) {
            if (!this.f7377a.m14976g()) {
                if (status.m14997Y()) {
                    this.f7377a.f7005s = true;
                } else if (!status.m14996d0()) {
                    this.f7377a.f7004r = true;
                }
                Batch.m15018w(this.f7377a);
                i = this.f7377a.f7003q;
                if (i == 0) {
                    z = this.f7377a.f7005s;
                    if (z) {
                        zaa.super.mo14772b();
                    } else {
                        z2 = this.f7377a.f7004r;
                        Status status2 = z2 ? new Status(13) : Status.f7023j;
                        Batch batch = this.f7377a;
                        pendingResultArr = this.f7377a.f7006t;
                        batch.m14974i(new BatchResult(status2, pendingResultArr));
                    }
                }
            }
        }
    }
}
