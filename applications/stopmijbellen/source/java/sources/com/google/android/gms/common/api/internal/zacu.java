package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacu.class */
public final class zacu extends zap {
    public final /* synthetic */ zacv zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zacu(zacv zacvVar, Looper looper) {
        super(looper);
        this.zaa = zacvVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zacv zacvVar;
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            if (valueOf.length() != 0) {
                "Runtime exception on the transformation worker thread: ".concat(valueOf);
            }
            throw runtimeException;
        }
        PendingResult<?> pendingResult = (PendingResult) message.obj;
        obj = this.zaa.zae;
        synchronized (obj) {
            zacvVar = this.zaa.zab;
            zacv zacvVar2 = (zacv) Preconditions.checkNotNull(zacvVar);
            if (pendingResult == null) {
                zacvVar2.zak(new Status(13, "Transform returned null"));
            } else if (pendingResult instanceof zack) {
                zacvVar2.zak(((zack) pendingResult).zaa());
            } else {
                zacvVar2.zaa(pendingResult);
            }
        }
    }
}
