package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/m.class */
public final class C19700m extends AbstractList<String> implements RandomAccess, AbstractC19701n {

    /* renamed from: a */
    public static final AbstractC19701n f65867a = new C19700m().mo1599b();

    /* renamed from: b */
    private final List<Object> f65868b;

    public C19700m() {
        this.f65868b = new ArrayList();
    }

    public C19700m(AbstractC19701n abstractC19701n) {
        this.f65868b = new ArrayList(abstractC19701n.size());
        addAll(abstractC19701n);
    }

    /* renamed from: a */
    private static String m1667a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC19673d ? ((AbstractC19673d) obj).m1764e() : C19692j.m1673b((byte[]) obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: a */
    public final List<?> mo1603a() {
        return Collections.unmodifiableList(this.f65868b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: a */
    public final AbstractC19673d mo1602a(int i) {
        Object obj = this.f65868b.get(i);
        AbstractC19673d m1771a = obj instanceof AbstractC19673d ? (AbstractC19673d) obj : obj instanceof String ? AbstractC19673d.m1771a((String) obj) : AbstractC19673d.m1768a((byte[]) obj);
        if (m1771a != obj) {
            this.f65868b.set(i, m1771a);
        }
        return m1771a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: a */
    public final void mo1601a(AbstractC19673d abstractC19673d) {
        this.f65868b.add(abstractC19673d);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        this.f65868b.add(i, (String) obj);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        List<?> list = collection;
        if (collection instanceof AbstractC19701n) {
            list = ((AbstractC19701n) collection).mo1603a();
        }
        boolean addAll = this.f65868b.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: b */
    public final AbstractC19701n mo1599b() {
        return new C19724v(this);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f65868b.clear();
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f65868b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC19673d) {
            AbstractC19673d abstractC19673d = (AbstractC19673d) obj;
            String m1764e = abstractC19673d.m1764e();
            if (abstractC19673d.mo1637f()) {
                this.f65868b.set(i, m1764e);
            }
            return m1764e;
        }
        byte[] bArr = (byte[]) obj;
        String m1673b = C19692j.m1673b(bArr);
        if (C19692j.m1674a(bArr)) {
            this.f65868b.set(i, m1673b);
        }
        return m1673b;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        Object remove = this.f65868b.remove(i);
        this.modCount++;
        return m1667a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        return m1667a(this.f65868b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f65868b.size();
    }
}
