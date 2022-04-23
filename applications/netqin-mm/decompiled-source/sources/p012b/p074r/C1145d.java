package p012b.p074r;

import android.content.Context;
import p012b.p074r.C1141c;
/* renamed from: b.r.d */
/* loaded from: classes-dex2jar.jar:b/r/d.class */
public class C1145d extends C1148f {
    public C1145d(Context context) {
        super(context);
        this.f4658a = context;
    }

    @Override // p012b.p074r.C1148f, p012b.p074r.C1141c.AbstractC1142a
    /* renamed from: a */
    public boolean mo34580a(C1141c.AbstractC1144c cVar) {
        return m34582c(cVar) || super.mo34580a(cVar);
    }

    /* renamed from: c */
    public final boolean m34582c(C1141c.AbstractC1144c cVar) {
        return m34581a().checkPermission("android.permission.MEDIA_CONTENT_CONTROL", cVar.mo34576b(), cVar.mo34577a()) == 0;
    }
}
