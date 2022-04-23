package p081h.p203i.p204a.p224e.p259j.p269j;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: h.i.a.e.j.j.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a0.class */
public final class C7758a0 extends ContentObserver {
    public C7758a0(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C7757a.f18149c;
        atomicBoolean.set(true);
    }
}
