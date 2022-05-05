package p010g.p011g.p012d.p017n;

import android.os.Build;
import g.g.a.b.j1.c;
import g.g.a.b.j1.g;
import g.g.a.b.j1.i;
import g.g.a.f.a.a;
import kotlin.w.c.k;
import p010g.p011g.p012d.AbstractC0221e;
/* renamed from: g.g.d.n.a */
/* loaded from: classes2-dex2jar.jar:g/g/d/n/a.class */
public final class C0229a {
    /* renamed from: a */
    public static final void m638a(AbstractC0221e eVar, a aVar) {
        k.g(eVar, "$this$setIdentificationInfo");
        k.g(aVar, "headersInfo");
        c a = aVar.a();
        i iVar = null;
        g g = a != null ? a.g() : null;
        k.c(g, "headersInfo.getClientInfoProvider()?.idProvider");
        String d = g.d();
        c a2 = aVar.a();
        if (a2 != null) {
            iVar = a2.b();
        }
        k.c(iVar, "headersInfo.getClientInf…)?.productionInfoProvider");
        String b = iVar.b();
        k.c(b, "headersInfo.getClientInf…foProvider.productVersion");
        k.c(d, "installationId");
        eVar.m659n(d);
        eVar.m666g(b);
        eVar.m669d("Android" + Build.VERSION.SDK_INT + "/" + Build.VERSION.INCREMENTAL);
    }
}
