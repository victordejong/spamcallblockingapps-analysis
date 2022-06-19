package androidx.lifecycle;
/* renamed from: androidx.lifecycle.o */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/o.class */
public class C0530o<T> extends LiveData<T> {
    @Override // androidx.lifecycle.LiveData
    /* renamed from: h */
    public void mo7432h(T t) {
        LiveData.m8016a("setValue");
        this.f2001g++;
        this.f1999e = t;
        m8014c(null);
    }
}
