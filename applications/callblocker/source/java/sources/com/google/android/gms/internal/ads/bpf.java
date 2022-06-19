package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpf.class */
public final class bpf implements bmy<aym, chs, bof> {

    /* renamed from: a */
    private final Context f11730a;

    /* renamed from: b */
    private final axo f11731b;

    /* renamed from: c */
    private final Executor f11732c;

    public bpf(Context context, axo axoVar, Executor executor) {
        this.f11730a = context;
        this.f11731b = axoVar;
        this.f11732c = executor;
    }

    /* renamed from: a */
    private static boolean m11731a(chd chdVar, int i) {
        return chdVar.f13034a.f13017a.f13043g.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        bmxVar.f11571b.m11288a(this.f11730a, chdVar.f13034a.f13017a.f13040d, cgrVar.f12997s.toString(), C3614wy.m6857a((AbstractC3615wz) cgrVar.f12994p), bmxVar.f11572c, chdVar.f13034a.f13017a.f13045i, chdVar.f13034a.f13017a.f13043g);
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ aym mo11708b(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        ayx m12269a;
        AbstractC3289kx m11272h = bmxVar.f11571b.m11272h();
        AbstractC3296ld m11271i = bmxVar.f11571b.m11271i();
        AbstractC3297le m11268l = bmxVar.f11571b.m11268l();
        if (m11268l != null && m11731a(chdVar, 6)) {
            m12269a = ayx.m12268a(m11268l);
        } else if (m11272h != null && m11731a(chdVar, 6)) {
            m12269a = ayx.m12259b(m11272h);
        } else if (m11272h != null && m11731a(chdVar, 2)) {
            m12269a = ayx.m12270a(m11272h);
        } else if (m11271i != null && m11731a(chdVar, 6)) {
            m12269a = ayx.m12258b(m11271i);
        } else if (m11271i == null || !m11731a(chdVar, 1)) {
            throw new zzcqm("No native ad mappers", 0);
        } else {
            m12269a = ayx.m12269a(m11271i);
        }
        if (!chdVar.f13034a.f13017a.f13043g.contains(Integer.toString(m12269a.m12283a()))) {
            throw new zzcqm("No corresponding native ad listener", 0);
        }
        ayy mo12346a = this.f11731b.mo12346a(new amy(chdVar, cgrVar, bmxVar.f11570a), new azl(m12269a), new bap(m11271i, m11272h, m11268l));
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12346a.mo12939f());
        mo12346a.mo12944a().m12773a((aqk) new aio(bmxVar.f11571b), this.f11732c);
        return mo12346a.mo12287h();
    }
}
