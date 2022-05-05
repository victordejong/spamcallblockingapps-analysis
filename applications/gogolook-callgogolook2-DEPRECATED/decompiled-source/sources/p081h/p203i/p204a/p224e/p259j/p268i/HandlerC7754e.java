package p081h.p203i.p204a.p224e.p259j.p268i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CallSuper;
/* renamed from: h.i.a.e.j.i.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/i/e.class */
public class HandlerC7754e extends Handler {

    /* renamed from: a */
    public static AbstractC7756g f18145a;

    public HandlerC7754e(Looper looper) {
        super(looper);
    }

    public HandlerC7754e(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    @CallSuper
    /* renamed from: a */
    public void m19588a(Message message) {
        super.dispatchMessage(message);
    }

    /* renamed from: a */
    public final void m19587a(Message message, long j) {
        AbstractC7756g gVar = f18145a;
        if (gVar != null) {
            gVar.m19585a(this, message, j);
        }
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        AbstractC7756g gVar = f18145a;
        if (gVar == null) {
            m19588a(message);
            return;
        }
        Object a = gVar.m19586a(this, message);
        try {
            m19588a(message);
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j) {
        m19587a(message, j);
        return super.sendMessageAtTime(message, j);
    }
}
