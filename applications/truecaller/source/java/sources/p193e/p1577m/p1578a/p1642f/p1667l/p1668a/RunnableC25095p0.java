package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzgj;
/* renamed from: e.m.a.f.l.a.p0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/p0.class */
public final class RunnableC25095p0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzau f70235a;

    /* renamed from: b */
    public final /* synthetic */ String f70236b;

    /* renamed from: c */
    public final /* synthetic */ zzgj f70237c;

    public RunnableC25095p0(zzgj zzgjVar, zzau zzauVar, String str) {
        this.f70237c = zzgjVar;
        this.f70235a = zzauVar;
        this.f70236b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70237c.a.b();
        this.f70237c.a.f(this.f70235a, this.f70236b);
    }
}
