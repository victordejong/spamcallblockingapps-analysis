package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.base.zap;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabc.class */
public final class zabc extends zap {
    public final /* synthetic */ zabd zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zabc(zabd zabdVar, Looper looper) {
        super(looper);
        this.zaa = zabdVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ((zabb) message.obj).zab(this.zaa);
        } else if (i == 2) {
            throw ((RuntimeException) message.obj);
        } else {
            C0028d.m8913g(31, "Unknown message id: ", i, "GACStateManager");
        }
    }
}
