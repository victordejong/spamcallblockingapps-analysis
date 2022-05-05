package p081h.p119d.p120a.p124s.p131j.p132s;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5901b;
import p081h.p119d.p120a.p124s.p131j.C5902c;
/* renamed from: h.d.a.s.j.s.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/s/a.class */
public class C5925a extends C5901b<ParcelFileDescriptor> implements AbstractC5927b<File> {

    /* renamed from: h.d.a.s.j.s.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/s/a$a.class */
    public static class C5926a implements AbstractC5919m<File, ParcelFileDescriptor> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<File, ParcelFileDescriptor> mo24128a(Context context, C5902c cVar) {
            return new C5925a(cVar.m24161a(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5925a(AbstractC5918l<Uri, ParcelFileDescriptor> lVar) {
        super(lVar);
    }
}
