package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23490v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23635a0;
/* renamed from: e.k.a.c.d0.y.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/w.class */
public class C23532w extends AbstractC23488u {

    /* renamed from: o */
    public final AbstractC23488u f65296o;

    /* renamed from: e.k.a.c.d0.y.w$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/w$a.class */
    public static final class C23533a extends C23502c0.AbstractC23503a {

        /* renamed from: b */
        public final C23532w f65297b;

        /* renamed from: c */
        public final Object f65298c;

        public C23533a(C23532w c23532w, C23490v c23490v, Class<?> cls, Object obj) {
            super(c23490v, cls);
            this.f65297b = c23532w;
            this.f65298c = obj;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0.AbstractC23503a
        /* renamed from: a */
        public void mo6544a(Object obj, Object obj2) throws IOException {
            if (obj.equals(this.f65219a.f65183d.f65216b.f64507c)) {
                C23532w c23532w = this.f65297b;
                c23532w.f65296o.mo6680z(this.f65298c, obj2);
                return;
            }
            throw new IllegalArgumentException(C22128a.m8547y2("Trying to resolve a forward reference with id [", obj, "] that wasn't previously seen as unresolved."));
        }
    }

    public C23532w(AbstractC23488u abstractC23488u, C23635a0 c23635a0) {
        super(abstractC23488u);
        this.f65296o = abstractC23488u;
        this.f65179k = c23635a0;
    }

    public C23532w(C23532w c23532w, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r) {
        super(c23532w, abstractC23700j, abstractC23484r);
        this.f65296o = c23532w.f65296o;
        this.f65179k = c23532w.f65179k;
    }

    public C23532w(C23532w c23532w, C23951v c23951v) {
        super(c23532w, c23951v);
        this.f65296o = c23532w.f65296o;
        this.f65179k = c23532w.f65179k;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        return this.f65296o.mo6686A(obj, obj2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: D */
    public AbstractC23488u mo6685D(C23951v c23951v) {
        return new C23532w(this, c23951v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: E */
    public AbstractC23488u mo6684E(AbstractC23484r abstractC23484r) {
        return new C23532w(this, this.f65175g, abstractC23484r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [e.k.a.c.d0.r] */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: G */
    public AbstractC23488u mo6683G(AbstractC23700j<?> abstractC23700j) {
        AbstractC23700j<?> abstractC23700j2 = this.f65175g;
        if (abstractC23700j2 == abstractC23700j) {
            return this;
        }
        ?? r0 = this.f65177i;
        AbstractC23700j<?> abstractC23700j3 = r0;
        if (abstractC23700j2 == r0) {
            abstractC23700j3 = abstractC23700j;
        }
        return new C23532w(this, abstractC23700j, abstractC23700j3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return this.f65296o.mo6108c();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        mo6681j(abstractC23376j, abstractC23632g, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        try {
            return this.f65296o.mo6686A(obj, m6762h(abstractC23376j, abstractC23632g));
        } catch (C23490v e) {
            if (!((this.f65179k == null && this.f65175g.mo6224l() == null) ? false : true)) {
                throw new C23733k(abstractC23376j, "Unresolved forward reference but no identity info", e);
            }
            e.f65183d.m6721a(new C23533a(this, e, this.f65172d.f65728a, obj));
            return null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: l */
    public void mo6688l(C23624f c23624f) {
        AbstractC23488u abstractC23488u = this.f65296o;
        if (abstractC23488u != null) {
            abstractC23488u.mo6688l(c23624f);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: m */
    public int mo6687m() {
        return this.f65296o.mo6687m();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public void mo6680z(Object obj, Object obj2) throws IOException {
        this.f65296o.mo6680z(obj, obj2);
    }
}
