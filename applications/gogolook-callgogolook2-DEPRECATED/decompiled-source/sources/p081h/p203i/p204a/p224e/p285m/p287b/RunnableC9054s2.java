package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
/* renamed from: h.i.a.e.m.b.s2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/s2.class */
public final class RunnableC9054s2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f20629a;

    /* renamed from: b */
    public final /* synthetic */ boolean f20630b;

    /* renamed from: c */
    public final /* synthetic */ zzl f20631c;

    /* renamed from: d */
    public final /* synthetic */ zzh f20632d;

    /* renamed from: e */
    public final /* synthetic */ zzl f20633e;

    /* renamed from: f */
    public final /* synthetic */ C9000j2 f20634f;

    public RunnableC9054s2(C9000j2 j2Var, boolean z, boolean z2, zzl zzlVar, zzh zzhVar, zzl zzlVar2) {
        this.f20634f = j2Var;
        this.f20629a = z;
        this.f20630b = z2;
        this.f20631c = zzlVar;
        this.f20632d = zzhVar;
        this.f20633e = zzlVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        fVar = this.f20634f.f20451d;
        if (fVar == null) {
            this.f20634f.mo16178c().m16375s().m16338a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f20629a) {
            this.f20634f.m16531a(fVar, this.f20630b ? null : this.f20631c, this.f20632d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f20633e.f7176a)) {
                    fVar.mo16140a(this.f20631c, this.f20632d);
                } else {
                    fVar.mo16141a(this.f20631c);
                }
            } catch (RemoteException e) {
                this.f20634f.mo16178c().m16375s().m16337a("Failed to send conditional user property to the service", e);
            }
        }
        this.f20634f.m16545C();
    }
}
