package p131c.p161d.p354f.p356t.p357k;

import p131c.p161d.p354f.AbstractC6122j;
import p131c.p161d.p354f.AbstractC6128p;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p355s.AbstractC6133b;
import p131c.p161d.p354f.p356t.C6138b;
import p131c.p161d.p354f.p360u.C6239a;
/* renamed from: c.d.f.t.k.d */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/d.class */
public final class C6174d implements AbstractC6131r {

    /* renamed from: a */
    public final C6138b f19690a;

    public C6174d(C6138b bVar) {
        this.f19690a = bVar;
    }

    /* renamed from: a */
    public AbstractC6129q<?> m21902a(C6138b bVar, C6111e eVar, C6239a<?> aVar, AbstractC6133b bVar2) {
        AbstractC6129q<?> qVar;
        Object a = bVar.m21939a(C6239a.m21835a((Class) bVar2.value())).mo21917a();
        if (a instanceof AbstractC6129q) {
            qVar = (AbstractC6129q) a;
        } else if (a instanceof AbstractC6131r) {
            qVar = ((AbstractC6131r) a).create(eVar, aVar);
        } else {
            boolean z = a instanceof AbstractC6128p;
            if (z || (a instanceof AbstractC6122j)) {
                AbstractC6122j jVar = null;
                AbstractC6128p pVar = z ? (AbstractC6128p) a : null;
                if (a instanceof AbstractC6122j) {
                    jVar = (AbstractC6122j) a;
                }
                qVar = new C6192l<>(pVar, jVar, eVar, aVar, null);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        AbstractC6129q<?> qVar2 = qVar;
        if (qVar != null) {
            qVar2 = qVar;
            if (bVar2.nullSafe()) {
                qVar2 = qVar.nullSafe();
            }
        }
        return qVar2;
    }

    @Override // p131c.p161d.p354f.AbstractC6131r
    public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
        AbstractC6133b bVar = (AbstractC6133b) aVar.m21836a().getAnnotation(AbstractC6133b.class);
        if (bVar == null) {
            return null;
        }
        return (AbstractC6129q<T>) m21902a(this.f19690a, eVar, aVar, bVar);
    }
}
