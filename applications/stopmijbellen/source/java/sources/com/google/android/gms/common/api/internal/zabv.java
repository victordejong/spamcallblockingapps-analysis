package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabv.class */
public final class zabv extends zap {
    public final /* synthetic */ ListenerHolder zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zabv(ListenerHolder listenerHolder, Looper looper) {
        super(looper);
        this.zaa = listenerHolder;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.zaa.notifyListenerInternal((ListenerHolder.Notifier) message.obj);
    }
}
