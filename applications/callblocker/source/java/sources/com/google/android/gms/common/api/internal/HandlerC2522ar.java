package com.google.android.gms.common.api.internal;

import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p137d.HandlerC3718f;
/* renamed from: com.google.android.gms.common.api.internal.ar */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ar.class */
public final class HandlerC2522ar extends HandlerC3718f {

    /* renamed from: a */
    private final /* synthetic */ C2521aq f7116a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        C2521aq c2521aq;
        C2521aq c2521aq2;
        C2521aq c2521aq3;
        switch (message.what) {
            case 0:
                AbstractC2495e<?> abstractC2495e = (AbstractC2495e) message.obj;
                obj = this.f7116a.f7111e;
                synchronized (obj) {
                    if (abstractC2495e == null) {
                        c2521aq3 = this.f7116a.f7108b;
                        c2521aq3.m14378a(new Status(13, "Transform returned null"));
                    } else if (abstractC2495e instanceof C2516al) {
                        c2521aq2 = this.f7116a.f7108b;
                        c2521aq2.m14378a(((C2516al) abstractC2495e).m14386b());
                    } else {
                        c2521aq = this.f7116a.f7108b;
                        c2521aq.m14377a(abstractC2495e);
                    }
                }
                return;
            case 1:
                RuntimeException runtimeException = (RuntimeException) message.obj;
                String valueOf = String.valueOf(runtimeException.getMessage());
                Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                throw runtimeException;
            default:
                Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                return;
        }
    }
}
