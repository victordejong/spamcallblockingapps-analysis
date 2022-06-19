package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzhw;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.f1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/f1.class */
public final class RunnableC25049f1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f70073a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70074b;

    public RunnableC25049f1(zzhw zzhwVar, long j) {
        this.f70074b = zzhwVar;
        this.f70073a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70074b.n(this.f70073a, true);
        ((v0) this.f70074b).a.u().u(new AtomicReference());
    }
}
