package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabk.class */
public final class zabk implements BaseGmsClient.SignOutCallbacks {
    public final /* synthetic */ zabl zaa;

    public zabk(zabl zablVar) {
        this.zaa = zablVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    public final void onSignOutComplete() {
        Handler handler;
        handler = this.zaa.zaa.zat;
        handler.post(new zabj(this));
    }
}
