package p081h.p203i.p204a.p224e.p259j.p276q;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: h.i.a.e.j.q.i1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i1.class */
public final class C8630i1 extends ContentObserver {
    public C8630i1(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C8619h1.f19737e;
        atomicBoolean.set(true);
    }
}
