package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacl.class */
public final class zacl implements Runnable {
    private final /* synthetic */ Result zaa;
    private final /* synthetic */ zaci zab;

    public zacl(zaci zaciVar, Result result) {
        this.zab = zaciVar;
        this.zaa = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                ThreadLocal threadLocal = BasePendingResult.zaa;
                threadLocal.set(Boolean.TRUE);
                zaci.zab(this.zab).sendMessage(zaci.zab(this.zab).obtainMessage(0, ((ResultTransform) Preconditions.checkNotNull(zaci.zaa(this.zab))).onSuccess(this.zaa)));
                threadLocal.set(Boolean.FALSE);
                zaci.zaa(this.zab, this.zaa);
                GoogleApiClient googleApiClient = (GoogleApiClient) zaci.zac(this.zab).get();
                if (googleApiClient == null) {
                    return;
                }
                googleApiClient.zab(this.zab);
            } catch (RuntimeException e) {
                zaci.zab(this.zab).sendMessage(zaci.zab(this.zab).obtainMessage(1, e));
                BasePendingResult.zaa.set(Boolean.FALSE);
                zaci.zaa(this.zab, this.zaa);
                GoogleApiClient googleApiClient2 = (GoogleApiClient) zaci.zac(this.zab).get();
                if (googleApiClient2 == null) {
                    return;
                }
                googleApiClient2.zab(this.zab);
            }
        } catch (Throwable th) {
            BasePendingResult.zaa.set(Boolean.FALSE);
            zaci.zaa(this.zab, this.zaa);
            GoogleApiClient googleApiClient3 = (GoogleApiClient) zaci.zac(this.zab).get();
            if (googleApiClient3 != null) {
                googleApiClient3.zab(this.zab);
            }
            throw th;
        }
    }
}
