package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpx.class */
public final class bpx {

    /* renamed from: a */
    private final cho f11787a;

    /* renamed from: b */
    private final bfb f11788b;

    /* renamed from: c */
    private final bhi f11789c;

    public bpx(cho choVar, bfb bfbVar, bhi bhiVar) {
        this.f11787a = choVar;
        this.f11788b = bfbVar;
        this.f11789c = bhiVar;
    }

    /* renamed from: a */
    public final void m11720a(cgs cgsVar, cgr cgrVar, int i, @Nullable zzcnn zzcnnVar, long j) {
        bfc bfcVar;
        bhh m11938a = this.f11789c.m11935a().m11939a(cgsVar).m11940a(cgrVar).m11938a("action", "adapter_status").m11938a("adapter_l", String.valueOf(j));
        m11938a.m11938a("sc", Integer.toString(i));
        if (zzcnnVar != null) {
            m11938a.m11938a("arec", Integer.toString(zzcnnVar.m6638b()));
            String m11300a = this.f11787a.m11300a(zzcnnVar.getMessage());
            if (m11300a != null) {
                m11938a.m11938a("areec", m11300a);
            }
        }
        bfb bfbVar = this.f11788b;
        Iterator<String> it = cgrVar.f12995q.iterator();
        while (true) {
            if (!it.hasNext()) {
                bfcVar = null;
                break;
            }
            bfcVar = bfbVar.m12014a(it.next());
            if (bfcVar != null) {
                break;
            }
        }
        if (bfcVar != null) {
            m11938a.m11938a("ancn", bfcVar.f11130a);
            if (bfcVar.f11131b != null) {
                m11938a.m11938a("adapter_v", bfcVar.f11131b.toString());
            }
            if (bfcVar.f11132c != null) {
                m11938a.m11938a("adapter_sv", bfcVar.f11132c.toString());
            }
        }
        m11938a.m11942a();
    }
}
