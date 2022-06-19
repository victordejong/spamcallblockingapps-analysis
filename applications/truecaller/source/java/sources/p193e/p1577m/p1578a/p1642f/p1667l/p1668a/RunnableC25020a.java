package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzd;
/* renamed from: e.m.a.f.l.a.a */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/a.class */
public final class RunnableC25020a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f69992a;

    /* renamed from: b */
    public final /* synthetic */ long f69993b;

    /* renamed from: c */
    public final /* synthetic */ zzd f69994c;

    public RunnableC25020a(zzd zzdVar, String str, long j) {
        this.f69994c = zzdVar;
        this.f69992a = str;
        this.f69993b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd zzdVar = this.f69994c;
        String str = this.f69992a;
        long j = this.f69993b;
        zzdVar.d();
        Preconditions.m38901g(str);
        if (zzdVar.c.isEmpty()) {
            zzdVar.d = j;
        }
        Integer num = (Integer) zzdVar.c.get(str);
        if (num != null) {
            zzdVar.c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (zzdVar.c.size() >= 100) {
            ((v0) zzdVar).a.zzay().i.m38590a("Too many ads visible");
        } else {
            zzdVar.c.put(str, 1);
            zzdVar.b.put(str, Long.valueOf(j));
        }
    }
}
