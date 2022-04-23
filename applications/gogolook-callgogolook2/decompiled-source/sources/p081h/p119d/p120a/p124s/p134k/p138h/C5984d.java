package p081h.p119d.p120a.p124s.p134k.p138h;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p131j.C5921o;
import p081h.p119d.p120a.p124s.p134k.C5950b;
import p081h.p119d.p120a.p144v.AbstractC6045b;
/* renamed from: h.d.a.s.k.h.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/h/d.class */
public class C5984d implements AbstractC6045b<InputStream, File> {

    /* renamed from: c */
    public static final C5986b f14924c = new C5986b();

    /* renamed from: a */
    public final AbstractC5808e<File, File> f14925a = new C5980a();

    /* renamed from: b */
    public final AbstractC5805b<InputStream> f14926b = new C5921o();

    /* renamed from: h.d.a.s.k.h.d$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/h/d$b.class */
    public static class C5986b implements AbstractC5808e<InputStream, File> {
        public C5986b() {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC5848l<File> m24085a(InputStream inputStream, int i, int i2) {
            throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
        }

        @Override // p081h.p119d.p120a.p124s.AbstractC5808e
        /* renamed from: a */
        public /* bridge */ /* synthetic */ AbstractC5848l<File> mo24025a(InputStream inputStream, int i, int i2) throws IOException {
            m24085a(inputStream, i, i2);
            throw null;
        }

        @Override // p081h.p119d.p120a.p124s.AbstractC5808e
        public String getId() {
            return "";
        }
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<InputStream> mo23971d() {
        return this.f14926b;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<File> mo23970f() {
        return C5950b.m24126a();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<InputStream, File> mo23969g() {
        return f14924c;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, File> mo23968h() {
        return this.f14925a;
    }
}
