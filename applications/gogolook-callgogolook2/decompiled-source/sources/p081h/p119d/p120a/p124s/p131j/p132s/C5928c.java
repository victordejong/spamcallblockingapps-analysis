package p081h.p119d.p120a.p124s.p131j.p132s;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
import p081h.p119d.p120a.p124s.p131j.C5920n;
/* renamed from: h.d.a.s.j.s.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/s/c.class */
public class C5928c extends C5920n<ParcelFileDescriptor> implements AbstractC5927b<Integer> {

    /* renamed from: h.d.a.s.j.s.c$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/s/c$a.class */
    public static class C5929a implements AbstractC5919m<Integer, ParcelFileDescriptor> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<Integer, ParcelFileDescriptor> mo24128a(Context context, C5902c cVar) {
            return new C5928c(context, cVar.m24161a(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5928c(Context context, AbstractC5918l<Uri, ParcelFileDescriptor> lVar) {
        super(context, lVar);
    }
}
