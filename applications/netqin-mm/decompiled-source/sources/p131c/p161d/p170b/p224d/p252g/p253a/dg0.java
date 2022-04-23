package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Handler;
import com.google.android.gms.internal.ads.zzt;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.dg0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/dg0.class */
public final class dg0 implements Executor {

    /* renamed from: a */
    public final /* synthetic */ Handler f12747a;

    public dg0(zzt zztVar, Handler handler) {
        this.f12747a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f12747a.post(runnable);
    }
}
