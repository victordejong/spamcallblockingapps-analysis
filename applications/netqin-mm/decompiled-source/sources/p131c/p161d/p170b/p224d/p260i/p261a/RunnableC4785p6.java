package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
import com.google.android.gms.measurement.internal.zzz;
/* renamed from: c.d.b.d.i.a.p6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/p6.class */
public final class RunnableC4785p6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f17323a = true;

    /* renamed from: b */
    public final /* synthetic */ boolean f17324b;

    /* renamed from: c */
    public final /* synthetic */ zzz f17325c;

    /* renamed from: d */
    public final /* synthetic */ zzn f17326d;

    /* renamed from: e */
    public final /* synthetic */ zzz f17327e;

    /* renamed from: f */
    public final /* synthetic */ zzir f17328f;

    public RunnableC4785p6(zzir zzirVar, boolean z, boolean z2, zzz zzzVar, zzn zznVar, zzz zzzVar2) {
        this.f17328f = zzirVar;
        this.f17324b = z2;
        this.f17325c = zzzVar;
        this.f17326d = zznVar;
        this.f17327e = zzzVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17328f.f30089d;
        if (zzeiVar == null) {
            this.f17328f.mo8789p().m9152q().m9143a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f17323a) {
            this.f17328f.m8900a(zzeiVar, this.f17324b ? null : this.f17325c, this.f17326d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f17327e.f30178a)) {
                    zzeiVar.mo9026a(this.f17325c, this.f17326d);
                } else {
                    zzeiVar.mo9027a(this.f17325c);
                }
            } catch (RemoteException e) {
                this.f17328f.mo8789p().m9152q().m9142a("Failed to send conditional user property to the service", e);
            }
        }
        this.f17328f.m8912J();
    }
}
