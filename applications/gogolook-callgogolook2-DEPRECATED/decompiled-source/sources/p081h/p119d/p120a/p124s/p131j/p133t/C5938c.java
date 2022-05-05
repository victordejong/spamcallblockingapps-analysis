package p081h.p119d.p120a.p124s.p131j.p133t;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5901b;
import p081h.p119d.p120a.p124s.p131j.C5902c;
/* renamed from: h.d.a.s.j.t.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/c.class */
public class C5938c extends C5901b<InputStream> implements AbstractC5940d<File> {

    /* renamed from: h.d.a.s.j.t.c$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/c$a.class */
    public static class C5939a implements AbstractC5919m<File, InputStream> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<File, InputStream> mo24128a(Context context, C5902c cVar) {
            return new C5938c(cVar.m24161a(Uri.class, InputStream.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5938c(AbstractC5918l<Uri, InputStream> lVar) {
        super(lVar);
    }
}
