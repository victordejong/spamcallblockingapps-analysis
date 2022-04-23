package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzh;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.t2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/t2.class */
public final class RunnableC9060t2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20642a;

    /* renamed from: b */
    public final /* synthetic */ String f20643b;

    /* renamed from: c */
    public final /* synthetic */ String f20644c;

    /* renamed from: d */
    public final /* synthetic */ String f20645d;

    /* renamed from: e */
    public final /* synthetic */ zzh f20646e;

    /* renamed from: f */
    public final /* synthetic */ C9000j2 f20647f;

    public RunnableC9060t2(C9000j2 j2Var, AtomicReference atomicReference, String str, String str2, String str3, zzh zzhVar) {
        this.f20647f = j2Var;
        this.f20642a = atomicReference;
        this.f20643b = str;
        this.f20644c = str2;
        this.f20645d = str3;
        this.f20646e = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        synchronized (this.f20642a) {
            try {
                fVar = this.f20647f.f20451d;
            } catch (RemoteException e) {
                this.f20647f.mo16178c().m16375s().m16335a("Failed to get conditional properties", C9027o.m16380a(this.f20643b), this.f20644c, e);
                this.f20642a.set(Collections.emptyList());
                this.f20642a.notify();
            }
            if (fVar == null) {
                this.f20647f.mo16178c().m16375s().m16335a("Failed to get conditional properties", C9027o.m16380a(this.f20643b), this.f20644c, this.f20645d);
                this.f20642a.set(Collections.emptyList());
                this.f20642a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f20643b)) {
                this.f20642a.set(fVar.mo16137a(this.f20644c, this.f20645d, this.f20646e));
            } else {
                this.f20642a.set(fVar.mo16136a(this.f20643b, this.f20644c, this.f20645d));
            }
            this.f20647f.m16545C();
            this.f20642a.notify();
        }
    }
}
