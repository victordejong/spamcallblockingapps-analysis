package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
/* renamed from: e.m.a.f.e.a.a.b0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/b0.class */
public final class HandlerC24909b0 extends zap {

    /* renamed from: a */
    public final /* synthetic */ ListenerHolder f69816a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24909b0(ListenerHolder listenerHolder, Looper looper) {
        super(looper);
        this.f69816a = listenerHolder;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        Preconditions.m38907a(z);
        ListenerHolder.Notifier notifier = (ListenerHolder.Notifier) message.obj;
        L l = this.f69816a.f5764b;
        if (l == 0) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(l);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }
}
