package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.internal.C$Gson$Types;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p356t.AbstractC6157f;
import p131c.p161d.p354f.p356t.C6138b;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.b */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/b.class */
public final class C6170b implements AbstractC6131r {

    /* renamed from: a */
    public final C6138b f19685a;

    /* renamed from: c.d.f.t.k.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/b$a.class */
    public static final class C6171a<E> extends AbstractC6129q<Collection<E>> {

        /* renamed from: a */
        public final AbstractC6129q<E> f19686a;

        /* renamed from: b */
        public final AbstractC6157f<? extends Collection<E>> f19687b;

        public C6171a(C6111e eVar, Type type, AbstractC6129q<E> qVar, AbstractC6157f<? extends Collection<E>> fVar) {
            this.f19686a = new C6195m(eVar, qVar, type);
            this.f19687b = fVar;
        }

        /* renamed from: a */
        public void write(C6242b bVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                bVar.mo21770k();
                return;
            }
            bVar.mo21783c();
            for (E e : collection) {
                this.f19686a.write(bVar, e);
            }
            bVar.mo21776e();
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public Collection<E> read(C6240a aVar) throws IOException {
            if (aVar.mo21802u() == JsonToken.NULL) {
                aVar.mo21805r();
                return null;
            }
            Collection<E> collection = (Collection) this.f19687b.mo21917a();
            aVar.mo21830a();
            while (aVar.mo21813i()) {
                collection.add(this.f19686a.read(aVar));
            }
            aVar.mo21816f();
            return collection;
        }
    }

    public C6170b(C6138b bVar) {
        this.f19685a = bVar;
    }

    @Override // p131c.p161d.p354f.AbstractC6131r
    public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
        Type b = aVar.m21833b();
        Class<? super T> a = aVar.m21836a();
        if (!Collection.class.isAssignableFrom(a)) {
            return null;
        }
        Type a2 = C$Gson$Types.m7130a(b, (Class<?>) a);
        return new C6171a(eVar, a2, eVar.m21992a((C6239a) C6239a.m21834a(a2)), this.f19685a.m21939a(aVar));
    }
}
