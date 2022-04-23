package p131c.p372f.p373a.p374a.p375a.p389q;

import java.lang.ref.WeakReference;
/* renamed from: c.f.a.a.a.q.d */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/q/d.class */
public class C6474d<T> {

    /* renamed from: a */
    public WeakReference<T> f20165a;

    public C6474d(T t) {
        this.f20165a = new WeakReference<>(t);
    }

    /* renamed from: a */
    public T m20774a() {
        return this.f20165a.get();
    }

    /* renamed from: a */
    public boolean m20773a(Object obj) {
        T a = m20774a();
        return (a == null || obj == null || !a.equals(obj)) ? false : true;
    }

    /* renamed from: b */
    public void m20771b(T t) {
        this.f20165a = new WeakReference<>(t);
    }

    /* renamed from: b */
    public boolean m20772b() {
        return m20774a() == null;
    }
}
