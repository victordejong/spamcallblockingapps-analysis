package p081h.p203i.p204a.p224e.p280k;

import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p274o.C8496a0;
import p081h.p203i.p204a.p224e.p259j.p274o.C8503e;
import p081h.p203i.p204a.p224e.p259j.p274o.C8514j0;
import p081h.p203i.p204a.p224e.p259j.p274o.C8526t;
/* renamed from: h.i.a.e.k.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/h.class */
public class C8827h {

    /* renamed from: a */
    public static final C6805a.C6817g<C8526t> f20167a = new C6805a.C6817g<>();

    /* renamed from: b */
    public static final C6805a.AbstractC6806a<C8526t, Object> f20168b = new C8842o();

    /* renamed from: c */
    public static final C6805a<Object> f20169c = new C6805a<>("LocationServices.API", f20168b, f20167a);
    @Deprecated

    /* renamed from: d */
    public static final AbstractC8817c f20170d = new C8514j0();
    @Deprecated

    /* renamed from: e */
    public static final AbstractC8830i f20171e = new C8496a0();

    /* renamed from: h.i.a.e.k.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/k/h$a.class */
    public static abstract class AbstractC8828a<R extends AbstractC6835k> extends AbstractC6850c<R, C8526t> {
        public AbstractC8828a(AbstractC6825f fVar) {
            super(C8827h.f20169c, fVar);
        }
    }

    static {
        new C8503e();
    }

    /* renamed from: a */
    public static C8526t m16888a(AbstractC6825f fVar) {
        boolean z = true;
        C7021t.m21285a(fVar != null, "GoogleApiClient parameter is required.");
        C8526t tVar = (C8526t) fVar.mo21650a(f20167a);
        if (tVar == null) {
            z = false;
        }
        C7021t.m21281b(z, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return tVar;
    }
}
