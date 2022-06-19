package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzkp;
import java.util.ArrayList;
/* renamed from: e.m.a.f.l.a.e3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/e3.class */
public final class RunnableC25045e3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzkp f70057a;

    /* renamed from: b */
    public final /* synthetic */ Runnable f70058b;

    public RunnableC25045e3(zzkp zzkpVar, Runnable runnable) {
        this.f70057a = zzkpVar;
        this.f70058b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70057a.b();
        zzkp zzkpVar = this.f70057a;
        Runnable runnable = this.f70058b;
        zzkpVar.a().d();
        if (zzkpVar.p == null) {
            zzkpVar.p = new ArrayList();
        }
        zzkpVar.p.add(runnable);
        this.f70057a.q();
    }
}
