package androidx.lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public class t<T> extends LiveData<T> {
    public t() {
    }

    public t(T t) {
        super(t);
    }

    @Override // androidx.lifecycle.LiveData
    public final void a(T t) {
        super.a((t<T>) t);
    }

    @Override // androidx.lifecycle.LiveData
    public void b(T t) {
        super.b((t<T>) t);
    }
}
