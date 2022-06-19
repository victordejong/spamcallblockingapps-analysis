package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabj.class */
public final class zabj implements Runnable {
    private final /* synthetic */ ConnectionResult zaa;
    private final /* synthetic */ GoogleApiManager.zab zab;

    public zabj(GoogleApiManager.zab zabVar, ConnectionResult connectionResult) {
        this.zab = zabVar;
        this.zaa = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        map = this.zab.zaa.zam;
        GoogleApiManager.zaa zaaVar = (GoogleApiManager.zaa) map.get(GoogleApiManager.zab.zaa(this.zab));
        if (zaaVar == null) {
            return;
        }
        if (!this.zaa.isSuccess()) {
            zaaVar.onConnectionFailed(this.zaa);
            return;
        }
        GoogleApiManager.zab.zaa(this.zab, true);
        if (GoogleApiManager.zab.zab(this.zab).requiresSignIn()) {
            GoogleApiManager.zab.zac(this.zab);
            return;
        }
        try {
            GoogleApiManager.zab.zab(this.zab).getRemoteService((IAccountAccessor) null, GoogleApiManager.zab.zab(this.zab).getScopesForConnectionlessNonSignIn());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            GoogleApiManager.zab.zab(this.zab).disconnect("Failed to get service from broker.");
            zaaVar.onConnectionFailed(new ConnectionResult(10));
        }
    }
}
