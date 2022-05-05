package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzh;
/* renamed from: h.i.a.e.m.b.q2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/q2.class */
public final class RunnableC9042q2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f20572a;

    /* renamed from: b */
    public final /* synthetic */ boolean f20573b;

    /* renamed from: c */
    public final /* synthetic */ zzad f20574c;

    /* renamed from: d */
    public final /* synthetic */ zzh f20575d;

    /* renamed from: e */
    public final /* synthetic */ String f20576e;

    /* renamed from: f */
    public final /* synthetic */ C9000j2 f20577f;

    public RunnableC9042q2(C9000j2 j2Var, boolean z, boolean z2, zzad zzadVar, zzh zzhVar, String str) {
        this.f20577f = j2Var;
        this.f20572a = z;
        this.f20573b = z2;
        this.f20574c = zzadVar;
        this.f20575d = zzhVar;
        this.f20576e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        fVar = this.f20577f.f20451d;
        if (fVar == null) {
            this.f20577f.mo16178c().m16375s().m16338a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f20572a) {
            this.f20577f.m16531a(fVar, this.f20573b ? null : this.f20574c, this.f20575d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f20576e)) {
                    fVar.mo16147a(this.f20574c, this.f20575d);
                } else {
                    fVar.mo16145a(this.f20574c, this.f20576e, this.f20577f.mo16178c().m16387C());
                }
            } catch (RemoteException e) {
                this.f20577f.mo16178c().m16375s().m16337a("Failed to send event to the service", e);
            }
        }
        this.f20577f.m16545C();
    }
}
