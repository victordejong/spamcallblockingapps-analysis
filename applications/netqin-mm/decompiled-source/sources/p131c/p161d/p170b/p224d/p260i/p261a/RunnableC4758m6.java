package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.m6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/m6.class */
public final class RunnableC4758m6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f17268a;

    /* renamed from: b */
    public final /* synthetic */ boolean f17269b;

    /* renamed from: c */
    public final /* synthetic */ zzaq f17270c;

    /* renamed from: d */
    public final /* synthetic */ zzn f17271d;

    /* renamed from: e */
    public final /* synthetic */ String f17272e;

    /* renamed from: f */
    public final /* synthetic */ zzir f17273f;

    public RunnableC4758m6(zzir zzirVar, boolean z, boolean z2, zzaq zzaqVar, zzn zznVar, String str) {
        this.f17273f = zzirVar;
        this.f17268a = z;
        this.f17269b = z2;
        this.f17270c = zzaqVar;
        this.f17271d = zznVar;
        this.f17272e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17273f.f30089d;
        if (zzeiVar == null) {
            this.f17273f.mo8789p().m9152q().m9143a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f17268a) {
            this.f17273f.m8900a(zzeiVar, this.f17269b ? null : this.f17270c, this.f17271d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f17272e)) {
                    zzeiVar.mo9035a(this.f17270c, this.f17271d);
                } else {
                    zzeiVar.mo9033a(this.f17270c, this.f17272e, this.f17273f.mo8789p().m9165A());
                }
            } catch (RemoteException e) {
                this.f17273f.mo8789p().m9152q().m9142a("Failed to send event to the service", e);
            }
        }
        this.f17273f.m8912J();
    }
}
