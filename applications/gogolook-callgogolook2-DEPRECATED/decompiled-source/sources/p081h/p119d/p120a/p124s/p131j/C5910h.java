package p081h.p119d.p120a.p124s.p131j;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
/* renamed from: h.d.a.s.j.h */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/h.class */
public class C5910h implements AbstractC5805b<C5909g> {

    /* renamed from: a */
    public final AbstractC5805b<InputStream> f14843a;

    /* renamed from: b */
    public final AbstractC5805b<ParcelFileDescriptor> f14844b;

    /* renamed from: c */
    public String f14845c;

    public C5910h(AbstractC5805b<InputStream> bVar, AbstractC5805b<ParcelFileDescriptor> bVar2) {
        this.f14843a = bVar;
        this.f14844b = bVar2;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo24027a(C5909g gVar, OutputStream outputStream) {
        return gVar.m24149b() != null ? this.f14843a.mo24027a(gVar.m24149b(), outputStream) : this.f14844b.mo24027a(gVar.m24150a(), outputStream);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5805b
    public String getId() {
        if (this.f14845c == null) {
            this.f14845c = this.f14843a.getId() + this.f14844b.getId();
        }
        return this.f14845c;
    }
}
