package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zan.class */
final class zan extends zabq {
    public final /* synthetic */ Dialog zaa;
    public final /* synthetic */ zao zab;

    public zan(zao zaoVar, Dialog dialog) {
        this.zab = zaoVar;
        this.zaa = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabq
    public final void zaa() {
        this.zab.zaa.zaa();
        if (this.zaa.isShowing()) {
            this.zaa.dismiss();
        }
    }
}
