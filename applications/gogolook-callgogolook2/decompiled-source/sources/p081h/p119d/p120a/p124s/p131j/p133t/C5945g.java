package p081h.p119d.p120a.p124s.p131j.p133t;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p125h.C5821h;
import p081h.p119d.p120a.p124s.p125h.C5822i;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.AbstractC5923q;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5904d;
/* renamed from: h.d.a.s.j.t.g */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/g.class */
public class C5945g extends AbstractC5923q<InputStream> implements AbstractC5940d<Uri> {

    /* renamed from: h.d.a.s.j.t.g$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/g$a.class */
    public static class C5946a implements AbstractC5919m<Uri, InputStream> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<Uri, InputStream> mo24128a(Context context, C5902c cVar) {
            return new C5945g(context, cVar.m24161a(C5904d.class, InputStream.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5945g(Context context, AbstractC5918l<C5904d, InputStream> lVar) {
        super(context, lVar);
    }

    @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5923q
    /* renamed from: a */
    public AbstractC5813c<InputStream> mo5522a(Context context, Uri uri) {
        return new C5822i(context, uri);
    }

    @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5923q
    /* renamed from: a */
    public AbstractC5813c<InputStream> mo5521a(Context context, String str) {
        return new C5821h(context.getApplicationContext().getAssets(), str);
    }
}
