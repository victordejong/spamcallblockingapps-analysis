package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzw;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzkv;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.b6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/b6.class */
public final class RunnableC4654b6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f16977a;

    /* renamed from: b */
    public final /* synthetic */ String f16978b;

    /* renamed from: c */
    public final /* synthetic */ boolean f16979c;

    /* renamed from: d */
    public final /* synthetic */ zzn f16980d;

    /* renamed from: e */
    public final /* synthetic */ zzw f16981e;

    /* renamed from: f */
    public final /* synthetic */ zzir f16982f;

    public RunnableC4654b6(zzir zzirVar, String str, String str2, boolean z, zzn zznVar, zzw zzwVar) {
        this.f16982f = zzirVar;
        this.f16977a = str;
        this.f16978b = str2;
        this.f16979c = z;
        this.f16980d = zznVar;
        this.f16981e = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        Bundle bundle = new Bundle();
        try {
            zzeiVar = this.f16982f.f30089d;
            if (zzeiVar == null) {
                this.f16982f.mo8789p().m9152q().m9141a("Failed to get user properties; not connected to service", this.f16977a, this.f16978b);
                return;
            }
            bundle = zzkv.m8699a(zzeiVar.mo9021a(this.f16977a, this.f16978b, this.f16979c, this.f16980d));
            this.f16982f.m8912J();
        } catch (RemoteException e) {
            this.f16982f.mo8789p().m9152q().m9141a("Failed to get user properties; remote exception", this.f16977a, e);
        } finally {
            this.f16982f.m24899f().m8725a(this.f16981e, bundle);
        }
    }
}
