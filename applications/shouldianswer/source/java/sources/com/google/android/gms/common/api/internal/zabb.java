package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabb.class */
public final class zabb extends zap {
    private final /* synthetic */ zaaw zahh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zabb(zaaw zaawVar, Looper looper) {
        super(looper);
        this.zahh = zaawVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.zahh.zaav();
        } else if (i == 2) {
            this.zahh.resume();
        } else {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i2);
            Log.w("GoogleApiClientImpl", sb.toString());
        }
    }
}
