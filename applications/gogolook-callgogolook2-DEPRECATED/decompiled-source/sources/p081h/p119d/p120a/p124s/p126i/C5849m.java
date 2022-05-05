package p081h.p119d.p120a.p124s.p126i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.i.m */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/m.class */
public class C5849m {

    /* renamed from: a */
    public boolean f14759a;

    /* renamed from: b */
    public final Handler f14760b = new Handler(Looper.getMainLooper(), new C5851b());

    /* renamed from: h.d.a.s.i.m$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/m$b.class */
    public static class C5851b implements Handler.Callback {
        public C5851b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((AbstractC5848l) message.obj).mo24036b();
            return true;
        }
    }

    /* renamed from: a */
    public void m24242a(AbstractC5848l<?> lVar) {
        C6096h.m23856b();
        if (this.f14759a) {
            this.f14760b.obtainMessage(1, lVar).sendToTarget();
            return;
        }
        this.f14759a = true;
        lVar.mo24036b();
        this.f14759a = false;
    }
}
