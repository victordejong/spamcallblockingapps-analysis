package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzh;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.w2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/w2.class */
public final class RunnableC9079w2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20736a;

    /* renamed from: b */
    public final /* synthetic */ zzh f20737b;

    /* renamed from: c */
    public final /* synthetic */ boolean f20738c;

    /* renamed from: d */
    public final /* synthetic */ C9000j2 f20739d;

    public RunnableC9079w2(C9000j2 j2Var, AtomicReference atomicReference, zzh zzhVar, boolean z) {
        this.f20739d = j2Var;
        this.f20736a = atomicReference;
        this.f20737b = zzhVar;
        this.f20738c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        synchronized (this.f20736a) {
            try {
                fVar = this.f20739d.f20451d;
            } catch (RemoteException e) {
                this.f20739d.mo16178c().m16375s().m16337a("Failed to get user properties", e);
                this.f20736a.notify();
            }
            if (fVar == null) {
                this.f20739d.mo16178c().m16375s().m16338a("Failed to get user properties");
                this.f20736a.notify();
                return;
            }
            this.f20736a.set(fVar.mo16142a(this.f20737b, this.f20738c));
            this.f20739d.m16545C();
            this.f20736a.notify();
        }
    }
}
