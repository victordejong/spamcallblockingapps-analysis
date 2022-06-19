package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzab;
import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.f0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/f0.class */
public final class RunnableC25048f0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzab f70071a;

    /* renamed from: b */
    public final /* synthetic */ zzgj f70072b;

    public RunnableC25048f0(zzgj zzgjVar, zzab zzabVar) {
        this.f70072b = zzgjVar;
        this.f70071a = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70072b.a.b();
        if (this.f70071a.c.o2() == null) {
            zzkp zzkpVar = this.f70072b.a;
            zzab zzabVar = this.f70071a;
            Objects.requireNonNull(zzkpVar);
            String str = zzabVar.a;
            Objects.requireNonNull(str, "null reference");
            zzp v = zzkpVar.v(str);
            if (v == null) {
                return;
            }
            zzkpVar.j(zzabVar, v);
            return;
        }
        zzkp zzkpVar2 = this.f70072b.a;
        zzab zzabVar2 = this.f70071a;
        Objects.requireNonNull(zzkpVar2);
        String str2 = zzabVar2.a;
        Objects.requireNonNull(str2, "null reference");
        zzp v2 = zzkpVar2.v(str2);
        if (v2 == null) {
            return;
        }
        zzkpVar2.n(zzabVar2, v2);
    }
}
