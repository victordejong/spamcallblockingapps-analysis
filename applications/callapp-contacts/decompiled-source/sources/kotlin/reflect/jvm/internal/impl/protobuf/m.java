package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/m.class */
public final class m extends AbstractList<String> implements RandomAccess, n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f38163a = new m().b();

    /* renamed from: b  reason: collision with root package name */
    private final List<Object> f38164b;

    public m() {
        this.f38164b = new ArrayList();
    }

    public m(n nVar) {
        this.f38164b = new ArrayList(nVar.size());
        addAll(nVar);
    }

    private static String a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof d ? ((d) obj).e() : j.b((byte[]) obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final List<?> a() {
        return Collections.unmodifiableList(this.f38164b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final d a(int i) {
        Object obj = this.f38164b.get(i);
        d a2 = obj instanceof d ? (d) obj : obj instanceof String ? d.a((String) obj) : d.a((byte[]) obj);
        if (a2 != obj) {
            this.f38164b.set(i, a2);
        }
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final void a(d dVar) {
        this.f38164b.add(dVar);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        this.f38164b.add(i, (String) obj);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        List<?> list = collection;
        if (collection instanceof n) {
            list = ((n) collection).a();
        }
        boolean addAll = this.f38164b.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public final n b() {
        return new v(this);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f38164b.clear();
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f38164b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            String e = dVar.e();
            if (dVar.f()) {
                this.f38164b.set(i, e);
            }
            return e;
        }
        byte[] bArr = (byte[]) obj;
        String b2 = j.b(bArr);
        if (j.a(bArr)) {
            this.f38164b.set(i, b2);
        }
        return b2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        Object remove = this.f38164b.remove(i);
        this.modCount++;
        return a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        return a(this.f38164b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f38164b.size();
    }
}
