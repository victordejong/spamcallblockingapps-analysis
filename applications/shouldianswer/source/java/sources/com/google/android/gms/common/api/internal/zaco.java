package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaco.class */
public final class zaco extends zap {
    private final /* synthetic */ zacm zakw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaco(zacm zacmVar, Looper looper) {
        super(looper);
        this.zakw = zacmVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zacm zacmVar;
        zacm zacmVar2;
        zacm zacmVar3;
        int i = message.what;
        if (i != 0) {
            if (i == 1) {
                RuntimeException runtimeException = (RuntimeException) message.obj;
                String valueOf = String.valueOf(runtimeException.getMessage());
                Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                throw runtimeException;
            }
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(70);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i2);
            Log.e("TransformedResultImpl", sb.toString());
            return;
        }
        PendingResult<?> pendingResult = (PendingResult) message.obj;
        obj = this.zakw.zado;
        synchronized (obj) {
            if (pendingResult == null) {
                zacmVar3 = this.zakw.zakp;
                zacmVar3.zad(new Status(13, "Transform returned null"));
            } else if (pendingResult instanceof zacd) {
                zacmVar2 = this.zakw.zakp;
                zacmVar2.zad(((zacd) pendingResult).getStatus());
            } else {
                zacmVar = this.zakw.zakp;
                zacmVar.zaa(pendingResult);
            }
        }
    }
}
