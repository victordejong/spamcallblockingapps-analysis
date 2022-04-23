package p081h.p119d.p120a;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.C5907f;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p124s.p134k.p140j.C6007a;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p142t.AbstractC6030g;
import p081h.p119d.p120a.p142t.C6038m;
import p081h.p119d.p120a.p144v.C6048e;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
/* renamed from: h.d.a.g */
/* loaded from: classes-dex2jar.jar:h/d/a/g.class */
public class C5769g<ModelType> extends C5768f<ModelType> implements AbstractC5766d {

    /* renamed from: D */
    public final AbstractC5918l<ModelType, InputStream> f14430D;

    /* renamed from: E */
    public final AbstractC5918l<ModelType, ParcelFileDescriptor> f14431E;

    /* renamed from: F */
    public final C5780o.C5786e f14432F;

    public C5769g(Class<ModelType> cls, AbstractC5918l<ModelType, InputStream> lVar, AbstractC5918l<ModelType, ParcelFileDescriptor> lVar2, Context context, C5776l lVar3, C6038m mVar, AbstractC6030g gVar, C5780o.C5786e eVar) {
        super(context, cls, m24526a(lVar3, lVar, lVar2, C6007a.class, AbstractC5979b.class, null), lVar3, mVar, gVar);
        this.f14430D = lVar;
        this.f14431E = lVar2;
        this.f14432F = eVar;
    }

    /* renamed from: a */
    public static <A, Z, R> C6048e<A, C5909g, Z, R> m24526a(C5776l lVar, AbstractC5918l<A, InputStream> lVar2, AbstractC5918l<A, ParcelFileDescriptor> lVar3, Class<Z> cls, Class<R> cls2, AbstractC6019d<Z, R> dVar) {
        if (lVar2 == null && lVar3 == null) {
            return null;
        }
        AbstractC6019d<Z, R> dVar2 = dVar;
        if (dVar == null) {
            dVar2 = lVar.m24472b(cls, cls2);
        }
        return new C6048e<>(new C5907f(lVar2, lVar3), dVar2, lVar.m24478a(C5909g.class, cls));
    }

    /* renamed from: c */
    public <Y extends AbstractC6082k<File>> Y m24525c(Y y) {
        m24522n().m24507c(y);
        return y;
    }

    /* renamed from: l */
    public C5765c<ModelType> m24524l() {
        C5780o.C5786e eVar = this.f14432F;
        C5765c<ModelType> cVar = new C5765c<>(this, this.f14430D, this.f14431E, eVar);
        eVar.m24429a(cVar);
        return cVar;
    }

    /* renamed from: m */
    public C5775k<ModelType> m24523m() {
        C5780o.C5786e eVar = this.f14432F;
        C5775k<ModelType> kVar = new C5775k<>(this, this.f14430D, eVar);
        eVar.m24429a(kVar);
        return kVar;
    }

    /* renamed from: n */
    public final C5773i<ModelType, InputStream, File> m24522n() {
        C5780o.C5786e eVar = this.f14432F;
        C5773i<ModelType, InputStream, File> iVar = new C5773i<>(File.class, this, this.f14430D, InputStream.class, File.class, eVar);
        eVar.m24429a(iVar);
        return iVar;
    }
}
