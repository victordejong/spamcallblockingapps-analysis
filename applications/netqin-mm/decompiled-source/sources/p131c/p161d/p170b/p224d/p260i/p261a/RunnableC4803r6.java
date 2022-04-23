package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzw;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzkv;
import com.google.android.gms.measurement.internal.zzn;
import java.util.ArrayList;
/* renamed from: c.d.b.d.i.a.r6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/r6.class */
public final class RunnableC4803r6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f17366a;

    /* renamed from: b */
    public final /* synthetic */ String f17367b;

    /* renamed from: c */
    public final /* synthetic */ zzn f17368c;

    /* renamed from: d */
    public final /* synthetic */ zzw f17369d;

    /* renamed from: e */
    public final /* synthetic */ zzir f17370e;

    public RunnableC4803r6(zzir zzirVar, String str, String str2, zzn zznVar, zzw zzwVar) {
        this.f17370e = zzirVar;
        this.f17366a = str;
        this.f17367b = str2;
        this.f17368c = zznVar;
        this.f17369d = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzeiVar = this.f17370e.f30089d;
            if (zzeiVar == null) {
                this.f17370e.mo8789p().m9152q().m9141a("Failed to get conditional properties; not connected to service", this.f17366a, this.f17367b);
                return;
            }
            arrayList = zzkv.m8689b(zzeiVar.mo9024a(this.f17366a, this.f17367b, this.f17368c));
            this.f17370e.m8912J();
        } catch (RemoteException e) {
            this.f17370e.mo8789p().m9152q().m9140a("Failed to get conditional properties; remote exception", this.f17366a, this.f17367b, e);
        } finally {
            this.f17370e.m24899f().m8723a(this.f17369d, arrayList);
        }
    }
}
