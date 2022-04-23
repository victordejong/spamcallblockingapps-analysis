package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.zztd;
import com.google.android.gms.measurement.AppMeasurement;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6909p;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p358p.C9835b;
/* renamed from: h.i.a.e.j.q.d2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d2.class */
public final class BinderC8580d2 extends BinderC8566c2 {

    /* renamed from: a */
    public final C9145i<C9835b> f19656a;

    /* renamed from: b */
    public final Context f19657b;

    public BinderC8580d2(Context context, C9145i<C9835b> iVar) {
        this.f19657b = context;
        this.f19656a = iVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8598f2
    /* renamed from: a */
    public final void mo17675a(Status status, zztd zztdVar) {
        Bundle bundle;
        C6909p.m21599a(status, zztdVar == null ? null : new C9835b(zztdVar), this.f19656a);
        if (zztdVar != null && (bundle = zztdVar.m31831I().getBundle("scionData")) != null && bundle.keySet() != null) {
            try {
                AppMeasurement instance = AppMeasurement.getInstance(this.f19657b);
                for (String str : bundle.keySet()) {
                    instance.logEventInternal("fdl", str, bundle.getBundle(str));
                }
            } catch (NoClassDefFoundError e) {
            }
        }
    }
}
