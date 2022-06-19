package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzid;
import com.google.android.gms.measurement.internal.zzik;
/* renamed from: e.m.a.f.l.a.a2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/a2.class */
public final class RunnableC25023a2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzid f69998a;

    /* renamed from: b */
    public final /* synthetic */ zzid f69999b;

    /* renamed from: c */
    public final /* synthetic */ long f70000c;

    /* renamed from: d */
    public final /* synthetic */ boolean f70001d;

    /* renamed from: e */
    public final /* synthetic */ zzik f70002e;

    public RunnableC25023a2(zzik zzikVar, zzid zzidVar, zzid zzidVar2, long j, boolean z) {
        this.f70002e = zzikVar;
        this.f69998a = zzidVar;
        this.f69999b = zzidVar2;
        this.f70000c = j;
        this.f70001d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70002e.i(this.f69998a, this.f69999b, this.f70000c, this.f70001d, (Bundle) null);
    }
}
