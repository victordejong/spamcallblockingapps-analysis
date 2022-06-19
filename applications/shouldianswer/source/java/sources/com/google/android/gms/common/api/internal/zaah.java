package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.SimpleClientAdapter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaah.class */
public final class zaah implements zabd {
    private final zabe zaft;
    private boolean zafu = false;

    public zaah(zabe zabeVar) {
        this.zaft = zabeVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void begin() {
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void connect() {
        if (this.zafu) {
            this.zafu = false;
            this.zaft.zaa(new zaaj(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final boolean disconnect() {
        if (this.zafu) {
            return false;
        }
        if (!this.zaft.zaee.zaax()) {
            this.zaft.zaf(null);
            return true;
        }
        this.zafu = true;
        for (zacm zacmVar : this.zaft.zaee.zahe) {
            zacmVar.zabv();
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        return (T) execute(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        try {
            this.zaft.zaee.zahf.zab(t);
            zaaw zaawVar = this.zaft.zaee;
            Api.Client client = zaawVar.zagz.get(t.getClientKey());
            Preconditions.checkNotNull(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !this.zaft.zahp.containsKey(t.getClientKey())) {
                Api.SimpleClient simpleClient = client;
                if (client instanceof SimpleClientAdapter) {
                    simpleClient = ((SimpleClientAdapter) client).getClient();
                }
                t.run(simpleClient);
            } else {
                t.setFailedResult(new Status(17));
            }
        } catch (DeadObjectException e) {
            this.zaft.zaa(new zaai(this, this));
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void onConnectionSuspended(int i) {
        this.zaft.zaf(null);
        this.zaft.zaht.zab(i, this.zafu);
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    public final void zaam() {
        if (this.zafu) {
            this.zafu = false;
            this.zaft.zaee.zahf.release();
            disconnect();
        }
    }
}
