package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.measurement.zztd;
import com.google.android.gms.measurement.AppMeasurement;
import p081h.p203i.p204a.p224e.p235d.p236k.C6822e;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7032c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p358p.AbstractC9834a;
import p081h.p203i.p325c.p358p.C9835b;
/* renamed from: h.i.a.e.j.q.b2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b2.class */
public final class C8557b2 extends AbstractC9834a {

    /* renamed from: b */
    public final C6822e<Object> f19611b;

    public C8557b2(@NonNull Context context) {
        this(new C8784y1(context));
    }

    public C8557b2(@NonNull C6822e<Object> eVar) {
        this.f19611b = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p325c.p358p.AbstractC9834a
    /* renamed from: a */
    public final AbstractC9143h<C9835b> mo14117a(@NonNull Intent intent) {
        m17826b();
        C6822e<Object> eVar = this.f19611b;
        AbstractC9143h a = eVar.m21838a(new C8589e2(eVar.m21833d(), intent.getDataString()));
        zztd zztdVar = (zztd) C7032c.m21200a(intent, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA", zztd.CREATOR);
        C9835b bVar = zztdVar != null ? new C9835b(zztdVar) : null;
        AbstractC9143h hVar = a;
        if (bVar != null) {
            hVar = C9148k.m15999a(bVar);
        }
        return hVar;
    }

    /* renamed from: b */
    public final void m17826b() {
        try {
            AppMeasurement.getInstance(this.f19611b.m21833d());
        } catch (NoClassDefFoundError e) {
        }
    }
}
