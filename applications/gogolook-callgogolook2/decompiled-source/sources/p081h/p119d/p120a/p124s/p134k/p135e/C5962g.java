package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.C5949a;
import p081h.p119d.p120a.p124s.p134k.p138h.C5982c;
import p081h.p119d.p120a.p144v.AbstractC6045b;
/* renamed from: h.d.a.s.k.e.g */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/g.class */
public class C5962g implements AbstractC6045b<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a */
    public final AbstractC5808e<File, Bitmap> f14879a;

    /* renamed from: b */
    public final C5963h f14880b;

    /* renamed from: c */
    public final C5954b f14881c = new C5954b();

    /* renamed from: d */
    public final AbstractC5805b<ParcelFileDescriptor> f14882d = C5949a.m24127a();

    public C5962g(AbstractC5856c cVar, EnumC5804a aVar) {
        this.f14879a = new C5982c(new C5973p(cVar, aVar));
        this.f14880b = new C5963h(cVar, aVar);
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<ParcelFileDescriptor> mo23971d() {
        return this.f14882d;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<Bitmap> mo23970f() {
        return this.f14881c;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<ParcelFileDescriptor, Bitmap> mo23969g() {
        return this.f14880b;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, Bitmap> mo23968h() {
        return this.f14879a;
    }
}
