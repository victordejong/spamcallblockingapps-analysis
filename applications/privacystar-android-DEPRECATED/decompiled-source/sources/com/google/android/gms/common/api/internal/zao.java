package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zao.class */
final class zao extends zabr {
    private final /* synthetic */ Dialog zadk;
    private final /* synthetic */ zan zadl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zao(zan zanVar, Dialog dialog) {
        this.zadl = zanVar;
        this.zadk = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zas() {
        this.zadl.zadj.zaq();
        if (this.zadk.isShowing()) {
            this.zadk.dismiss();
        }
    }
}
