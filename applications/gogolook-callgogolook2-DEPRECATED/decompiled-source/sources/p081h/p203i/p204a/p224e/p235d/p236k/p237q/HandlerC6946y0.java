package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Looper;
import android.os.Message;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
/* renamed from: h.i.a.e.d.k.q.y0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/y0.class */
public final class HandlerC6946y0 extends HandlerC7537i {

    /* renamed from: a */
    public final /* synthetic */ C6938w0 f17029a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6946y0(C6938w0 w0Var, Looper looper) {
        super(looper);
        this.f17029a = w0Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ((AbstractC6942x0) message.obj).m21490a(this.f17029a);
        } else if (i != 2) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i);
            sb.toString();
        } else {
            throw ((RuntimeException) message.obj);
        }
    }
}
