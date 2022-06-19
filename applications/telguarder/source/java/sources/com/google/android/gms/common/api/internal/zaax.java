package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaax.class */
public final class zaax extends zap {
    final /* synthetic */ zaaz zaa;

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
        } else if (i == 2) {
            zaaz.zah(this.zaa);
        } else {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i2);
            Log.w("GoogleApiClientImpl", sb.toString());
        }
    }
}
