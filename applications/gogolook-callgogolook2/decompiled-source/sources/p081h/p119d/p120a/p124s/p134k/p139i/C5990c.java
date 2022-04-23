package p081h.p119d.p120a.p124s.p134k.p139i;

import android.content.Context;
import java.io.File;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p131j.C5921o;
import p081h.p119d.p120a.p124s.p134k.p138h.C5982c;
import p081h.p119d.p120a.p144v.AbstractC6045b;
/* renamed from: h.d.a.s.k.i.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/c.class */
public class C5990c implements AbstractC6045b<InputStream, C5988b> {

    /* renamed from: a */
    public final C6002i f14949a;

    /* renamed from: b */
    public final C6005j f14950b;

    /* renamed from: c */
    public final C5921o f14951c = new C5921o();

    /* renamed from: d */
    public final C5982c<C5988b> f14952d;

    public C5990c(Context context, AbstractC5856c cVar) {
        this.f14949a = new C6002i(context, cVar);
        this.f14952d = new C5982c<>(this.f14949a);
        this.f14950b = new C6005j(cVar);
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<InputStream> mo23971d() {
        return this.f14951c;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<C5988b> mo23970f() {
        return this.f14950b;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<InputStream, C5988b> mo23969g() {
        return this.f14949a;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, C5988b> mo23968h() {
        return this.f14952d;
    }
}
