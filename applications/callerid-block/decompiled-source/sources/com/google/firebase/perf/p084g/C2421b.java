package com.google.firebase.perf.p084g;

import com.google.android.datatransport.AbstractC1279c;
import com.google.android.datatransport.AbstractC1292e;
import com.google.android.datatransport.AbstractC1293f;
import com.google.android.datatransport.C1278b;
import com.google.firebase.k.b;
import com.google.firebase.perf.f.a;
import com.google.firebase.perf.p085v1.C2486g;
/* renamed from: com.google.firebase.perf.g.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/b.class */
final class C2421b {

    /* renamed from: d */
    private static final a f10603d = a.e();

    /* renamed from: a */
    private final String f10604a;

    /* renamed from: b */
    private final b<AbstractC1293f> f10605b;

    /* renamed from: c */
    private AbstractC1292e<C2486g> f10606c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2421b(b<AbstractC1293f> bVar, String str) {
        this.f10604a = str;
        this.f10605b = bVar;
    }

    /* renamed from: a */
    private boolean m3708a() {
        if (this.f10606c == null) {
            AbstractC1293f fVar = (AbstractC1293f) this.f10605b.get();
            if (fVar != null) {
                this.f10606c = fVar.m9252a(this.f10604a, C2486g.class, C1278b.m9343b("proto"), C2420a.m3709b());
            } else {
                f10603d.i("Flg TransportFactory is not available at the moment");
            }
        }
        return this.f10606c != null;
    }

    /* renamed from: b */
    public void m3707b(C2486g gVar) {
        if (!m3708a()) {
            f10603d.i("Unable to dispatch event because Flg Transport is not available");
        } else {
            this.f10606c.m9254a(AbstractC1279c.m9339d(gVar));
        }
    }
}
