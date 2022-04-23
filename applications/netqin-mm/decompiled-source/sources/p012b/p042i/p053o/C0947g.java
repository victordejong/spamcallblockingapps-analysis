package p012b.p042i.p053o;
/* renamed from: b.i.o.g */
/* loaded from: classes-dex2jar.jar:b/i/o/g.class */
public class C0947g<T> extends C0946f<T> {

    /* renamed from: c */
    public final Object f4195c = new Object();

    public C0947g(int i) {
        super(i);
    }

    @Override // p012b.p042i.p053o.C0946f, p012b.p042i.p053o.AbstractC0945e
    /* renamed from: a */
    public boolean mo35445a(T t) {
        boolean a;
        synchronized (this.f4195c) {
            a = super.mo35445a(t);
        }
        return a;
    }

    @Override // p012b.p042i.p053o.C0946f, p012b.p042i.p053o.AbstractC0945e
    /* renamed from: b */
    public T mo35444b() {
        T t;
        synchronized (this.f4195c) {
            t = (T) super.mo35444b();
        }
        return t;
    }
}
