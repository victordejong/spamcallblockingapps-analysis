package com.google.android.gms.common.api.internal;

import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacm.class */
public final class zacm extends zar {

    /* renamed from: a */
    private final /* synthetic */ zack f7279a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zack zackVar;
        zack zackVar2;
        zack zackVar3;
        int i = message.what;
        if (i == 0) {
            PendingResult<?> pendingResult = (PendingResult) message.obj;
            obj = this.f7279a.f7274e;
            synchronized (obj) {
                if (pendingResult == null) {
                    zackVar3 = this.f7279a.f7271b;
                    zackVar3.m14750k(new Status(13, "Transform returned null"));
                } else if (pendingResult instanceof zacc) {
                    zackVar2 = this.f7279a.f7271b;
                    zackVar2.m14750k(((zacc) pendingResult).m14770d());
                } else {
                    zackVar = this.f7279a.f7271b;
                    zackVar.m14759b(pendingResult);
                }
            }
        } else if (i != 1) {
            StringBuilder sb = new StringBuilder(70);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i);
            Log.e("TransformedResultImpl", sb.toString());
        } else {
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
            throw runtimeException;
        }
    }
}
