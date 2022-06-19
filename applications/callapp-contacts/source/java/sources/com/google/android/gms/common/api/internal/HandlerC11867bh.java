package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.base.HandlerC13160j;
/* renamed from: com.google.android.gms.common.api.internal.bh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bh.class */
final class HandlerC11867bh extends HandlerC13160j {

    /* renamed from: a */
    final /* synthetic */ C11868bi f39284a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC11867bh(C11868bi c11868bi, Looper looper) {
        super(looper);
        this.f39284a = c11868bi;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
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
        AbstractC11921j<R> abstractC11921j = (AbstractC11921j) message.obj;
        synchronized (this.f39284a.f39289e) {
            C11868bi c11868bi = (C11868bi) C12045o.m19162a(this.f39284a.f39286b);
            if (abstractC11921j == 0) {
                c11868bi.m19389a(new Status(13, "Transform returned null"));
            } else if (abstractC11921j instanceof C11857ay) {
                c11868bi.m19389a(((C11857ay) abstractC11921j).f39265a);
            } else {
                synchronized (c11868bi.f39289e) {
                    c11868bi.f39288d = abstractC11921j;
                    if (c11868bi.f39285a != null || c11868bi.f39287c != null) {
                        AbstractC11826g abstractC11826g = c11868bi.f39291g.get();
                        if (!c11868bi.f39293i && c11868bi.f39285a != null && abstractC11826g != null) {
                            abstractC11826g.mo19402f();
                            c11868bi.f39293i = true;
                        }
                        Status status = c11868bi.f39290f;
                        if (status != null) {
                            c11868bi.m19388b(status);
                        } else {
                            AbstractC11921j<R> abstractC11921j2 = c11868bi.f39288d;
                            if (abstractC11921j2 != 0) {
                                abstractC11921j2.mo19291a(c11868bi);
                            }
                        }
                    }
                }
            }
        }
    }
}
