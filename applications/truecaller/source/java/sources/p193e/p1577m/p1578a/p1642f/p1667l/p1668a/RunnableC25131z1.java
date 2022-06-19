package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzid;
import com.google.android.gms.measurement.internal.zzik;
import java.util.List;
/* renamed from: e.m.a.f.l.a.z1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/z1.class */
public final class RunnableC25131z1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f70361a;

    /* renamed from: b */
    public final /* synthetic */ zzid f70362b;

    /* renamed from: c */
    public final /* synthetic */ zzid f70363c;

    /* renamed from: d */
    public final /* synthetic */ long f70364d;

    /* renamed from: e */
    public final /* synthetic */ zzik f70365e;

    public RunnableC25131z1(zzik zzikVar, Bundle bundle, zzid zzidVar, zzid zzidVar2, long j) {
        this.f70365e = zzikVar;
        this.f70361a = bundle;
        this.f70362b = zzidVar;
        this.f70363c = zzidVar2;
        this.f70364d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzik zzikVar = this.f70365e;
        Bundle bundle = this.f70361a;
        zzid zzidVar = this.f70362b;
        zzid zzidVar2 = this.f70363c;
        long j = this.f70364d;
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzikVar.i(zzidVar, zzidVar2, j, true, ((v0) zzikVar).a.w().n0((String) null, "screen_view", bundle, (List) null, false));
    }
}
