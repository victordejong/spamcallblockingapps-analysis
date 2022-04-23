package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdzc;
/* renamed from: c.d.b.d.g.a.et */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/et.class */
public final class C3520et<S extends zzdgu<?>> {

    /* renamed from: a */
    public final zzdzc<S> f12857a;

    /* renamed from: b */
    public final long f12858b;

    /* renamed from: c */
    public final Clock f12859c;

    public C3520et(zzdzc<S> zzdzcVar, long j, Clock clock) {
        this.f12857a = zzdzcVar;
        this.f12859c = clock;
        this.f12858b = clock.mo17092a() + j;
    }

    /* renamed from: a */
    public final boolean m27024a() {
        return this.f12858b < this.f12859c.mo17092a();
    }
}
