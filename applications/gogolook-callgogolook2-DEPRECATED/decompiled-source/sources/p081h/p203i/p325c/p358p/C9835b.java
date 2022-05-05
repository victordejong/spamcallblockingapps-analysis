package p081h.p203i.p325c.p358p;

import android.net.Uri;
import com.google.android.gms.internal.measurement.zztd;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
/* renamed from: h.i.c.p.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/p/b.class */
public class C9835b {

    /* renamed from: a */
    public final zztd f22308a;

    public C9835b(zztd zztdVar) {
        if (zztdVar == null) {
            this.f22308a = null;
            return;
        }
        if (zztdVar.m31830c() == 0) {
            zztdVar.m31829g(C7077i.m21148a().currentTimeMillis());
        }
        this.f22308a = zztdVar;
    }

    /* renamed from: a */
    public Uri m14116a() {
        String H;
        zztd zztdVar = this.f22308a;
        if (zztdVar == null || (H = zztdVar.m31832H()) == null) {
            return null;
        }
        return Uri.parse(H);
    }
}
