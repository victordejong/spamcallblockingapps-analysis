package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zack;
import com.google.android.gms.common.api.internal.zacv;
import com.google.android.gms.internal.base.zap;
import java.util.Objects;
/* renamed from: e.m.a.f.e.a.a.l0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/l0.class */
public final class HandlerC24930l0 extends zap {

    /* renamed from: a */
    public final /* synthetic */ zacv f69851a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24930l0(zacv zacvVar, Looper looper) {
        super(looper);
        this.f69851a = zacvVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            if (valueOf.length() != 0) {
                "Runtime exception on the transformation worker thread: ".concat(valueOf);
            } else {
                new String("Runtime exception on the transformation worker thread: ");
            }
            throw runtimeException;
        }
        PendingResult<R> pendingResult = (PendingResult) message.obj;
        synchronized (this.f69851a.f5883d) {
            zacv<? extends Result> zacvVar = this.f69851a.f5881b;
            Objects.requireNonNull(zacvVar, "null reference");
            if (pendingResult == 0) {
                zacvVar.m38944e(new Status(13, "Transform returned null"));
            } else if (pendingResult instanceof zack) {
                zack zackVar = (zack) pendingResult;
                zacvVar.m38944e(null);
            } else {
                synchronized (zacvVar.f5883d) {
                    zacvVar.f5882c = pendingResult;
                    zacvVar.m38945d();
                }
            }
        }
    }
}
