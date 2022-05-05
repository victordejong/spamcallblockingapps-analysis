package p081h.p203i.p401g;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.g.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/d0.class */
public class C10240d0 extends AbstractC10239d<String> implements AbstractC10243e0, RandomAccess {

    /* renamed from: c */
    public static final C10240d0 f23070c = new C10240d0();

    /* renamed from: d */
    public static final AbstractC10243e0 f23071d = f23070c;

    /* renamed from: b */
    public final List<Object> f23072b;

    static {
        f23070c.mo11536d();
    }

    public C10240d0() {
        this(10);
    }

    public C10240d0(int i) {
        this(new ArrayList(i));
    }

    public C10240d0(AbstractC10243e0 e0Var) {
        this.f23072b = new ArrayList(e0Var.size());
        addAll(e0Var);
    }

    public C10240d0(ArrayList<Object> arrayList) {
        this.f23072b = arrayList;
    }

    /* renamed from: a */
    public static String m13035a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC10253g ? ((AbstractC10253g) obj).m12963s() : C10516z.m11539c((byte[]) obj);
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: a */
    public Object mo12891a(int i) {
        return this.f23072b.get(i);
    }

    /* renamed from: a */
    public void add(int i, String str) {
        m13038b();
        this.f23072b.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        m13038b();
        List<?> list = collection;
        if (collection instanceof AbstractC10243e0) {
            list = ((AbstractC10243e0) collection).mo12888n();
        }
        boolean addAll = this.f23072b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    /* renamed from: b */
    public String set(int i, String str) {
        m13038b();
        return m13035a(this.f23072b.set(i, str));
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: b */
    public void mo12889b(AbstractC10253g gVar) {
        m13038b();
        this.f23072b.add(gVar);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m13038b();
        this.f23072b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        Object obj = this.f23072b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC10253g) {
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23072b.set(i, s);
            }
            return s;
        }
        byte[] bArr = (byte[]) obj;
        String c = C10516z.m11539c(bArr);
        if (C10516z.m11540b(bArr)) {
            this.f23072b.set(i, c);
        }
        return c;
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: n */
    public List<?> mo12888n() {
        return Collections.unmodifiableList(this.f23072b);
    }

    @Override // p081h.p203i.p401g.AbstractC10243e0
    /* renamed from: o */
    public AbstractC10243e0 mo12887o() {
        return m13037c() ? new C10271h1(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public String remove(int i) {
        m13038b();
        Object remove = this.f23072b.remove(i);
        ((AbstractList) this).modCount++;
        return m13035a(remove);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f23072b.size();
    }
}
