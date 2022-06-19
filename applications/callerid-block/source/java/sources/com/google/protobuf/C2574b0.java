package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/b0.class */
public class C2574b0 extends AbstractC2576c<String> implements AbstractC2577c0, RandomAccess {

    /* renamed from: d */
    private static final C2574b0 f11042d;

    /* renamed from: c */
    private final List<Object> f11043c;

    static {
        C2574b0 c2574b0 = new C2574b0();
        f11042d = c2574b0;
        c2574b0.mo2236h();
    }

    public C2574b0() {
        this(10);
    }

    public C2574b0(int i) {
        this(new ArrayList(i));
    }

    private C2574b0(ArrayList<Object> arrayList) {
        this.f11043c = arrayList;
    }

    /* renamed from: k */
    private static String m2899k(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).toStringUtf8() : C2665x.m2242j((byte[]) obj);
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        m2894a();
        List<?> list = collection;
        if (collection instanceof AbstractC2577c0) {
            list = ((AbstractC2577c0) collection).mo2561z();
        }
        boolean addAll = this.f11043c.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m2894a();
        this.f11043c.clear();
        ((AbstractList) this).modCount++;
    }

    /* renamed from: j */
    public void add(int i, String str) {
        m2894a();
        this.f11043c.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: l */
    public void mo2564l(ByteString byteString) {
        m2894a();
        this.f11043c.add(byteString);
        ((AbstractList) this).modCount++;
    }

    /* renamed from: p */
    public String get(int i) {
        Object obj = this.f11043c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f11043c.set(i, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String m2242j = C2665x.m2242j(bArr);
        if (C2665x.m2245g(bArr)) {
            this.f11043c.set(i, m2242j);
        }
        return m2242j;
    }

    /* renamed from: r */
    public C2574b0 mo2235d(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f11043c);
            return new C2574b0(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11043c.size();
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: t */
    public AbstractC2577c0 mo2563t() {
        return mo2237D() ? new C2624j1(this) : this;
    }

    /* renamed from: u */
    public String remove(int i) {
        m2894a();
        Object remove = this.f11043c.remove(i);
        ((AbstractList) this).modCount++;
        return m2899k(remove);
    }

    /* renamed from: x */
    public String set(int i, String str) {
        m2894a();
        return m2899k(this.f11043c.set(i, str));
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: y */
    public Object mo2562y(int i) {
        return this.f11043c.get(i);
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: z */
    public List<?> mo2561z() {
        return Collections.unmodifiableList(this.f11043c);
    }
}
