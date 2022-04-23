package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.internal.base.zap;
/* renamed from: c.d.b.d.d.a.a.q */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/q.class */
public final class HandlerC3274q extends zap {

    /* renamed from: a */
    public final /* synthetic */ zaaz f11981a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3274q(zaaz zaazVar, Looper looper) {
        super(looper);
        this.f11981a = zaazVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ((AbstractC3272p) message.obj).m27275a(this.f11981a);
        } else if (i != 2) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i);
            Log.w("GACStateManager", sb.toString());
        } else {
            throw ((RuntimeException) message.obj);
        }
    }
}
