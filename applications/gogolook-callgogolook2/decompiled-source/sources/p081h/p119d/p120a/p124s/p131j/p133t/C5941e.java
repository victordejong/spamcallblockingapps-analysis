package p081h.p119d.p120a.p124s.p131j.p133t;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5920n;
/* renamed from: h.d.a.s.j.t.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/e.class */
public class C5941e extends C5920n<InputStream> implements AbstractC5940d<Integer> {

    /* renamed from: h.d.a.s.j.t.e$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/e$a.class */
    public static class C5942a implements AbstractC5919m<Integer, InputStream> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<Integer, InputStream> mo24128a(Context context, C5902c cVar) {
            return new C5941e(context, cVar.m24161a(Uri.class, InputStream.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5941e(Context context, AbstractC5918l<Uri, InputStream> lVar) {
        super(context, lVar);
    }
}
