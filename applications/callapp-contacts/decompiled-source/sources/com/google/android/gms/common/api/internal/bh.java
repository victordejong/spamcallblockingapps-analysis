package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.base.j;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bh.class */
final class bh extends j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bi f22683a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bh(bi biVar, Looper looper) {
        super(looper);
        this.f22683a = biVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            com.google.android.gms.common.api.j<R> jVar = (com.google.android.gms.common.api.j) message.obj;
            synchronized (this.f22683a.e) {
                bi biVar = (bi) o.a(this.f22683a.f22685b);
                if (jVar == 0) {
                    biVar.a(new Status(13, "Transform returned null"));
                } else if (jVar instanceof ay) {
                    biVar.a(((ay) jVar).f22668a);
                } else {
                    synchronized (biVar.e) {
                        biVar.f22687d = jVar;
                        if (!(biVar.f22684a == null && biVar.f22686c == null)) {
                            g gVar = biVar.g.get();
                            if (!(biVar.i || biVar.f22684a == null || gVar == null)) {
                                gVar.f();
                                biVar.i = true;
                            }
                            Status status = biVar.f;
                            if (status != null) {
                                biVar.b(status);
                            } else {
                                com.google.android.gms.common.api.j<R> jVar2 = biVar.f22687d;
                                if (jVar2 != 0) {
                                    jVar2.a(biVar);
                                }
                            }
                        }
                    }
                }
            }
        } else if (i != 1) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(70);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i2);
            Log.e("TransformedResultImpl", sb.toString());
        } else {
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
            throw runtimeException;
        }
    }
}
