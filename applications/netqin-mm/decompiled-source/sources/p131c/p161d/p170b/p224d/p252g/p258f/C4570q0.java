package p131c.p161d.p170b.p224d.p252g.p258f;

import android.database.ContentObserver;
import android.os.Handler;
import com.google.android.gms.internal.measurement.zzcp;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: c.d.b.d.g.f.q0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/q0.class */
public final class C4570q0 extends ContentObserver {
    public C4570q0(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = zzcp.f29433e;
        atomicBoolean.set(true);
    }
}
