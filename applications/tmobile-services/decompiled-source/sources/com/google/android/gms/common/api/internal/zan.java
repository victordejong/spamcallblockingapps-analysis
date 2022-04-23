package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zan.class */
final class zan extends zabp {

    /* renamed from: a */
    private final /* synthetic */ Dialog f7317a;

    /* renamed from: b */
    private final /* synthetic */ zal f7318b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zan(zal zalVar, Dialog dialog) {
        this.f7318b = zalVar;
        this.f7317a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabp
    /* renamed from: a */
    public final void mo14716a() {
        this.f7318b.f7314g.m14719p();
        if (this.f7317a.isShowing()) {
            this.f7317a.dismiss();
        }
    }
}
