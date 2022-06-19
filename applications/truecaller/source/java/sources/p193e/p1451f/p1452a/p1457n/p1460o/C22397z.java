package p193e.p1451f.p1452a.p1457n.p1460o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: e.f.a.n.o.z */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/z.class */
public class C22397z {

    /* renamed from: a */
    public boolean f62239a;

    /* renamed from: b */
    public final Handler f62240b = new Handler(Looper.getMainLooper(), new C22398a());

    /* renamed from: e.f.a.n.o.z$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/z$a.class */
    public static final class C22398a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((AbstractC22394w) message.obj).mo8162b();
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    public void m8246a(AbstractC22394w<?> abstractC22394w) {
        synchronized (this) {
            if (this.f62239a) {
                this.f62240b.obtainMessage(1, abstractC22394w).sendToTarget();
            } else {
                this.f62239a = true;
                abstractC22394w.mo8162b();
                this.f62239a = false;
            }
        }
    }
}
