package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.base.zap;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaax.class */
public final class zaax extends zap {
    public final /* synthetic */ zaaz zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaax(zaaz zaazVar, Looper looper) {
        super(looper);
        this.zaa = zaazVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            zaaz.zai(this.zaa);
        } else if (i != 2) {
            C0028d.m8913g(31, "Unknown message id: ", i, "GoogleApiClientImpl");
        } else {
            zaaz.zah(this.zaa);
        }
    }
}
