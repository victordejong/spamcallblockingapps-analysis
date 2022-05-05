package p081h.p119d.p120a;

import android.content.Context;
import java.io.File;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p124s.p134k.p141k.C6021f;
import p081h.p119d.p120a.p142t.AbstractC6030g;
import p081h.p119d.p120a.p142t.C6038m;
import p081h.p119d.p120a.p144v.AbstractC6049f;
import p081h.p119d.p120a.p144v.C6048e;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
/* renamed from: h.d.a.i */
/* loaded from: classes-dex2jar.jar:h/d/a/i.class */
public class C5773i<ModelType, DataType, ResourceType> extends C5770h<ModelType, DataType, ResourceType, ResourceType> implements AbstractC5766d {

    /* renamed from: D */
    public final AbstractC5918l<ModelType, DataType> f14465D;

    /* renamed from: E */
    public final Class<DataType> f14466E;

    /* renamed from: F */
    public final C5780o.C5786e f14467F;

    public C5773i(Context context, C5776l lVar, Class<ModelType> cls, AbstractC5918l<ModelType, DataType> lVar2, Class<DataType> cls2, Class<ResourceType> cls3, C6038m mVar, AbstractC6030g gVar, C5780o.C5786e eVar) {
        super(context, cls, m24508a(lVar, lVar2, cls2, cls3, C6021f.m24022a()), cls3, lVar, mVar, gVar);
        this.f14465D = lVar2;
        this.f14466E = cls2;
        this.f14467F = eVar;
    }

    public C5773i(Class<ResourceType> cls, C5770h<ModelType, ?, ?, ?> hVar, AbstractC5918l<ModelType, DataType> lVar, Class<DataType> cls2, Class<ResourceType> cls3, C5780o.C5786e eVar) {
        super(m24508a(hVar.f14438c, lVar, cls2, cls3, C6021f.m24022a()), cls, hVar);
        this.f14465D = lVar;
        this.f14466E = cls2;
        this.f14467F = eVar;
    }

    /* renamed from: a */
    public static <A, T, Z, R> AbstractC6049f<A, T, Z, R> m24508a(C5776l lVar, AbstractC5918l<A, T> lVar2, Class<T> cls, Class<Z> cls2, AbstractC6019d<Z, R> dVar) {
        return new C6048e(lVar2, dVar, lVar.m24478a(cls, cls2));
    }

    /* renamed from: c */
    public <Y extends AbstractC6082k<File>> Y m24507c(Y y) {
        m24506i().m24512b((C5770h<ModelType, DataType, File, File>) y);
        return y;
    }

    /* renamed from: i */
    public final C5770h<ModelType, DataType, File, File> m24506i() {
        C6048e eVar = new C6048e(this.f14465D, C6021f.m24022a(), this.f14438c.m24478a(this.f14466E, File.class));
        C5780o.C5786e eVar2 = this.f14467F;
        C5770h hVar = new C5770h(eVar, File.class, this);
        eVar2.m24429a(hVar);
        return hVar.mo24505a(EnumC5779n.LOW).mo24502a(EnumC5827b.SOURCE).mo24499a(true);
    }
}
