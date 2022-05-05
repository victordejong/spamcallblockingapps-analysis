package p081h.p119d.p120a.p124s.p131j.p132s;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5922p;
/* renamed from: h.d.a.s.j.s.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/s/d.class */
public class C5930d extends C5922p<ParcelFileDescriptor> implements AbstractC5927b<String> {

    /* renamed from: h.d.a.s.j.s.d$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/s/d$a.class */
    public static class C5931a implements AbstractC5919m<String, ParcelFileDescriptor> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<String, ParcelFileDescriptor> mo24128a(Context context, C5902c cVar) {
            return new C5930d(cVar.m24161a(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5930d(AbstractC5918l<Uri, ParcelFileDescriptor> lVar) {
        super(lVar);
    }
}
