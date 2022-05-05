package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Looper;
import android.os.Message;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
/* renamed from: h.i.a.e.d.k.q.t0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/t0.class */
public final class HandlerC6926t0 extends HandlerC7537i {

    /* renamed from: a */
    public final /* synthetic */ C6902n0 f16961a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6926t0(C6902n0 n0Var, Looper looper) {
        super(looper);
        this.f16961a = n0Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f16961a.m21631n();
        } else if (i != 2) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i);
            sb.toString();
        } else {
            this.f16961a.m21633l();
        }
    }
}
