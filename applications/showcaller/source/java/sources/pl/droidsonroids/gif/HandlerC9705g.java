package pl.droidsonroids.gif;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: pl.droidsonroids.gif.g */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/g.class */
public class HandlerC9705g extends Handler {

    /* renamed from: a */
    private final WeakReference<C9692c> f40976a;

    public HandlerC9705g(C9692c c9692c) {
        super(Looper.getMainLooper());
        this.f40976a = new WeakReference<>(c9692c);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        C9692c c9692c = this.f40976a.get();
        if (c9692c == null) {
            return;
        }
        if (message.what == -1) {
            c9692c.invalidateSelf();
            return;
        }
        Iterator<AbstractC9690a> it = c9692c.f40951k.iterator();
        while (it.hasNext()) {
            it.next().m68a(message.what);
        }
    }
}
