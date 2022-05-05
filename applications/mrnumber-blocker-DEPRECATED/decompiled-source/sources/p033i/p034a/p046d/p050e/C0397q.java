package p033i.p034a.p046d.p050e;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import p033i.p034a.p035a.p036f.AbstractC0302r;
import p033i.p034a.p046d.p047c.AbstractC0357c;
import p033i.p034a.p046d.p047c.AbstractC0359e;
import p033i.p034a.p046d.p050e.p051a0.AbstractC0368h;
import p033i.p034a.p046d.p050e.p051a0.AbstractC0369i;
import p033i.p034a.p046d.p050e.p052b0.AbstractC0371c;
import p033i.p034a.p046d.p050e.p054e0.AbstractC0384b;
import p033i.p034a.p046d.p055f.AbstractC0407h;
/* renamed from: i.a.d.e.q */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/q.class */
final class C0397q {

    /* renamed from: a */
    private final AbstractC0371c f927a;

    /* renamed from: b */
    private final AbstractC0384b f928b;

    /* renamed from: c */
    private final AbstractC0407h f929c;

    /* renamed from: d */
    private final AbstractC0359e f930d;

    /* renamed from: e */
    private final AbstractC0357c f931e;

    /* renamed from: f */
    private final AbstractC0369i f932f;

    /* renamed from: g */
    private Map<AbstractC0302r, AbstractC0368h> f933g = new HashMap();

    /* renamed from: h */
    private long f934h;

    /* renamed from: i */
    private final boolean f935i;

    private C0397q(AbstractC0371c cVar, AbstractC0384b bVar, AbstractC0407h hVar, AbstractC0359e eVar, AbstractC0357c cVar2, boolean z) {
        this.f927a = cVar;
        this.f928b = bVar;
        this.f929c = hVar;
        this.f930d = eVar;
        this.f931e = cVar2;
        this.f932f = bVar.getAggregatorFactory(cVar.m300f());
        this.f935i = z;
        this.f934h = cVar2.m343b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static C0397q m246c(AbstractC0371c cVar, AbstractC0399u uVar, AbstractC0400v vVar, AbstractC0384b bVar) {
        return new C0397q(cVar, bVar, uVar.m241c(), vVar.m237c(), uVar.m242b(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static C0397q m245d(AbstractC0371c cVar, AbstractC0399u uVar, AbstractC0400v vVar, AbstractC0384b bVar) {
        return new C0397q(cVar, bVar, uVar.m241c(), vVar.m237c(), uVar.m242b(), true);
    }

    /* renamed from: a */
    void m248a(AbstractC0302r rVar, AbstractC0368h hVar, boolean z) {
        if (hVar.m319a()) {
            AbstractC0368h hVar2 = this.f933g.get(rVar);
            AbstractC0368h hVar3 = hVar2;
            if (hVar2 == null) {
                if (!z) {
                    this.f933g.put(rVar, hVar);
                    return;
                } else {
                    hVar3 = this.f932f.m315a();
                    this.f933g.put(rVar, hVar3);
                }
            }
            hVar.m318b(hVar3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public AbstractC0368h m247b() {
        return this.f932f.m315a();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0397q.class != obj.getClass()) {
            return false;
        }
        C0397q qVar = (C0397q) obj;
        if (this.f934h == qVar.f934h && this.f935i == qVar.f935i && Objects.equals(this.f927a, qVar.f927a) && Objects.equals(this.f928b, qVar.f928b) && Objects.equals(this.f929c, qVar.f929c) && Objects.equals(this.f930d, qVar.f930d) && Objects.equals(this.f931e, qVar.f931e) && Objects.equals(this.f932f, qVar.f932f)) {
            return Objects.equals(this.f933g, qVar.f933g);
        }
        return false;
    }

    public int hashCode() {
        AbstractC0371c cVar = this.f927a;
        int i = 0;
        int hashCode = cVar != null ? cVar.hashCode() : 0;
        AbstractC0384b bVar = this.f928b;
        int hashCode2 = bVar != null ? bVar.hashCode() : 0;
        AbstractC0407h hVar = this.f929c;
        int hashCode3 = hVar != null ? hVar.hashCode() : 0;
        AbstractC0359e eVar = this.f930d;
        int hashCode4 = eVar != null ? eVar.hashCode() : 0;
        AbstractC0357c cVar2 = this.f931e;
        int hashCode5 = cVar2 != null ? cVar2.hashCode() : 0;
        AbstractC0369i iVar = this.f932f;
        int hashCode6 = iVar != null ? iVar.hashCode() : 0;
        Map<AbstractC0302r, AbstractC0368h> map = this.f933g;
        if (map != null) {
            i = map.hashCode();
        }
        long j = this.f934h;
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (this.f935i ? 1 : 0);
    }
}
