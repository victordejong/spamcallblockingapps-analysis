package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.internal.base.zap;
import java.util.Objects;
import java.util.concurrent.locks.Lock;
/* renamed from: e.m.a.f.e.a.a.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/r.class */
public final class HandlerC24941r extends zap {

    /* renamed from: a */
    public final /* synthetic */ zabd f69867a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24941r(zabd zabdVar, Looper looper) {
        super(looper);
        this.f69867a = zabdVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Lock lock;
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                throw ((RuntimeException) message.obj);
            }
            return;
        }
        AbstractC24939q abstractC24939q = (AbstractC24939q) message.obj;
        zabd zabdVar = this.f69867a;
        Objects.requireNonNull(abstractC24939q);
        zabdVar.f5833a.lock();
        try {
            if (zabdVar.f5843k != abstractC24939q.f69864a) {
                lock = zabdVar.f5833a;
            } else {
                abstractC24939q.mo4282a();
                lock = zabdVar.f5833a;
            }
            lock.unlock();
        } catch (Throwable th) {
            zabdVar.f5833a.unlock();
            throw th;
        }
    }
}
