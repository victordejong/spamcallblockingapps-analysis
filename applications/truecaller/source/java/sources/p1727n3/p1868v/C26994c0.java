package p1727n3.p1868v;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1746c.p1747a.p1749b.C25634a;
import p1727n3.p1746c.p1747a.p1749b.C25635b;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.v.c0 */
/* loaded from: classes-dex2jar.jar:n3/v/c0.class */
public class C26994c0 extends AbstractC27028u {

    /* renamed from: d */
    public final WeakReference<AbstractC26992b0> f75502d;

    /* renamed from: b */
    public C25634a<AbstractC26985a0, C26995a> f75500b = new C25634a<>();

    /* renamed from: e */
    public int f75503e = 0;

    /* renamed from: f */
    public boolean f75504f = false;

    /* renamed from: g */
    public boolean f75505g = false;

    /* renamed from: h */
    public ArrayList<AbstractC27028u.EnumC27030b> f75506h = new ArrayList<>();

    /* renamed from: c */
    public AbstractC27028u.EnumC27030b f75501c = AbstractC27028u.EnumC27030b.INITIALIZED;

    /* renamed from: i */
    public final boolean f75507i = true;

    /* renamed from: n3.v.c0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/c0$a.class */
    public static class C26995a {

        /* renamed from: a */
        public AbstractC27028u.EnumC27030b f75508a;

        /* renamed from: b */
        public AbstractC27041z f75509b;

        public C26995a(AbstractC26985a0 abstractC26985a0, AbstractC27028u.EnumC27030b enumC27030b) {
            FullLifecycleObserverAdapter fullLifecycleObserverAdapter;
            Map<Class<?>, Integer> map = C27003f0.f75525a;
            boolean z = abstractC26985a0 instanceof AbstractC27041z;
            boolean z2 = abstractC26985a0 instanceof AbstractC27024s;
            if (z && z2) {
                fullLifecycleObserverAdapter = new FullLifecycleObserverAdapter((AbstractC27024s) abstractC26985a0, (AbstractC27041z) abstractC26985a0);
            } else if (z2) {
                fullLifecycleObserverAdapter = new FullLifecycleObserverAdapter((AbstractC27024s) abstractC26985a0, (AbstractC27041z) null);
            } else if (z) {
                fullLifecycleObserverAdapter = (AbstractC27041z) abstractC26985a0;
            } else {
                Class<?> cls = abstractC26985a0.getClass();
                if (C27003f0.m1007c(cls) == 2) {
                    List<Constructor<? extends AbstractC27027t>> list = C27003f0.f75526b.get(cls);
                    if (list.size() == 1) {
                        fullLifecycleObserverAdapter = new SingleGeneratedAdapterObserver(C27003f0.m1009a(list.get(0), abstractC26985a0));
                    } else {
                        AbstractC27027t[] abstractC27027tArr = new AbstractC27027t[list.size()];
                        for (int i = 0; i < list.size(); i++) {
                            abstractC27027tArr[i] = C27003f0.m1009a(list.get(i), abstractC26985a0);
                        }
                        fullLifecycleObserverAdapter = new CompositeGeneratedAdaptersObserver(abstractC27027tArr);
                    }
                } else {
                    fullLifecycleObserverAdapter = new ReflectiveGenericLifecycleObserver(abstractC26985a0);
                }
            }
            this.f75509b = fullLifecycleObserverAdapter;
            this.f75508a = enumC27030b;
        }

        /* renamed from: a */
        public void m1014a(AbstractC26992b0 abstractC26992b0, AbstractC27028u.EnumC27029a enumC27029a) {
            AbstractC27028u.EnumC27030b m986a = enumC27029a.m986a();
            this.f75508a = C26994c0.m1018f(this.f75508a, m986a);
            this.f75509b.m980c7(abstractC26992b0, enumC27029a);
            this.f75508a = m986a;
        }
    }

    public C26994c0(AbstractC26992b0 abstractC26992b0) {
        this.f75502d = new WeakReference<>(abstractC26992b0);
    }

    /* renamed from: f */
    public static AbstractC27028u.EnumC27030b m1018f(AbstractC27028u.EnumC27030b enumC27030b, AbstractC27028u.EnumC27030b enumC27030b2) {
        AbstractC27028u.EnumC27030b enumC27030b3 = enumC27030b;
        if (enumC27030b2 != null) {
            enumC27030b3 = enumC27030b;
            if (enumC27030b2.compareTo(enumC27030b) < 0) {
                enumC27030b3 = enumC27030b2;
            }
        }
        return enumC27030b3;
    }

    @Override // p1727n3.p1868v.AbstractC27028u
    /* renamed from: a */
    public void mo988a(AbstractC26985a0 abstractC26985a0) {
        AbstractC26992b0 abstractC26992b0;
        m1020d("addObserver");
        AbstractC27028u.EnumC27030b enumC27030b = this.f75501c;
        AbstractC27028u.EnumC27030b enumC27030b2 = AbstractC27028u.EnumC27030b.DESTROYED;
        if (enumC27030b != enumC27030b2) {
            enumC27030b2 = AbstractC27028u.EnumC27030b.INITIALIZED;
        }
        C26995a c26995a = new C26995a(abstractC26985a0, enumC27030b2);
        if (this.f75500b.mo3104d(abstractC26985a0, c26995a) == null && (abstractC26992b0 = this.f75502d.get()) != null) {
            boolean z = this.f75503e != 0 || this.f75504f;
            AbstractC27028u.EnumC27030b m1021c = m1021c(abstractC26985a0);
            this.f75503e++;
            while (c26995a.f75508a.compareTo(m1021c) < 0 && this.f75500b.f71809e.containsKey(abstractC26985a0)) {
                this.f75506h.add(c26995a.f75508a);
                AbstractC27028u.EnumC27029a m985c = AbstractC27028u.EnumC27029a.m985c(c26995a.f75508a);
                if (m985c == null) {
                    StringBuilder m8728C = C22128a.m8728C("no event up from ");
                    m8728C.append(c26995a.f75508a);
                    throw new IllegalStateException(m8728C.toString());
                }
                c26995a.m1014a(abstractC26992b0, m985c);
                m1016h();
                m1021c = m1021c(abstractC26985a0);
            }
            if (!z) {
                m1015i();
            }
            this.f75503e--;
        }
    }

    @Override // p1727n3.p1868v.AbstractC27028u
    /* renamed from: b */
    public void mo987b(AbstractC26985a0 abstractC26985a0) {
        m1020d("removeObserver");
        this.f75500b.mo3103e(abstractC26985a0);
    }

    /* renamed from: c */
    public final AbstractC27028u.EnumC27030b m1021c(AbstractC26985a0 abstractC26985a0) {
        C25634a<AbstractC26985a0, C26995a> c25634a = this.f75500b;
        AbstractC27028u.EnumC27030b enumC27030b = null;
        C25635b.C25636c<AbstractC26985a0, C26995a> c25636c = c25634a.f71809e.containsKey(abstractC26985a0) ? c25634a.f71809e.get(abstractC26985a0).f71817d : null;
        AbstractC27028u.EnumC27030b enumC27030b2 = c25636c != null ? c25636c.f71815b.f75508a : null;
        if (!this.f75506h.isEmpty()) {
            ArrayList<AbstractC27028u.EnumC27030b> arrayList = this.f75506h;
            enumC27030b = arrayList.get(arrayList.size() - 1);
        }
        return m1018f(m1018f(this.f75501c, enumC27030b2), enumC27030b);
    }

    /* renamed from: d */
    public final void m1020d(String str) {
        if (!this.f75507i || C25628a.m3112d().mo3109b()) {
            return;
        }
        throw new IllegalStateException(C22128a.m8725C2("Method ", str, " must be called on the main thread"));
    }

    /* renamed from: e */
    public void m1019e(AbstractC27028u.EnumC27029a enumC27029a) {
        m1020d("handleLifecycleEvent");
        m1017g(enumC27029a.m986a());
    }

    /* renamed from: g */
    public final void m1017g(AbstractC27028u.EnumC27030b enumC27030b) {
        if (this.f75501c == enumC27030b) {
            return;
        }
        this.f75501c = enumC27030b;
        if (this.f75504f || this.f75503e != 0) {
            this.f75505g = true;
            return;
        }
        this.f75504f = true;
        m1015i();
        this.f75504f = false;
    }

    /* renamed from: h */
    public final void m1016h() {
        ArrayList<AbstractC27028u.EnumC27030b> arrayList = this.f75506h;
        arrayList.remove(arrayList.size() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final void m1015i() {
        AbstractC26992b0 abstractC26992b0 = this.f75502d.get();
        if (abstractC26992b0 != null) {
            while (true) {
                C25634a<AbstractC26985a0, C26995a> c25634a = this.f75500b;
                boolean z = true;
                if (c25634a.f71813d != 0) {
                    AbstractC27028u.EnumC27030b enumC27030b = c25634a.f71810a.f71815b.f75508a;
                    AbstractC27028u.EnumC27030b enumC27030b2 = c25634a.f71811b.f71815b.f75508a;
                    if (enumC27030b != enumC27030b2 || this.f75501c != enumC27030b2) {
                        z = false;
                    }
                }
                if (z) {
                    this.f75505g = false;
                    return;
                }
                this.f75505g = false;
                if (this.f75501c.compareTo(c25634a.f71810a.f71815b.f75508a) < 0) {
                    C25634a<AbstractC26985a0, C26995a> c25634a2 = this.f75500b;
                    C25635b.b bVar = new C25635b.b(c25634a2.f71811b, c25634a2.f71810a);
                    c25634a2.f71812c.put(bVar, Boolean.FALSE);
                    while (bVar.hasNext() && !this.f75505g) {
                        Map.Entry entry = (Map.Entry) bVar.next();
                        C26995a c26995a = (C26995a) entry.getValue();
                        while (c26995a.f75508a.compareTo(this.f75501c) > 0 && !this.f75505g && this.f75500b.contains(entry.getKey())) {
                            int ordinal = c26995a.f75508a.ordinal();
                            AbstractC27028u.EnumC27029a enumC27029a = ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? null : AbstractC27028u.EnumC27029a.ON_PAUSE : AbstractC27028u.EnumC27029a.ON_STOP : AbstractC27028u.EnumC27029a.ON_DESTROY;
                            if (enumC27029a == null) {
                                StringBuilder m8728C = C22128a.m8728C("no event down from ");
                                m8728C.append(c26995a.f75508a);
                                throw new IllegalStateException(m8728C.toString());
                            }
                            this.f75506h.add(enumC27029a.m986a());
                            c26995a.m1014a(abstractC26992b0, enumC27029a);
                            m1016h();
                        }
                    }
                }
                C25635b.C25636c<AbstractC26985a0, C26995a> c25636c = this.f75500b.f71811b;
                if (!this.f75505g && c25636c != null && this.f75501c.compareTo(c25636c.f71815b.f75508a) > 0) {
                    C25635b<AbstractC26985a0, C26995a>.C25637d m3106b = this.f75500b.m3106b();
                    while (m3106b.hasNext() && !this.f75505g) {
                        Map.Entry entry2 = (Map.Entry) m3106b.next();
                        C26995a c26995a2 = (C26995a) entry2.getValue();
                        while (c26995a2.f75508a.compareTo(this.f75501c) < 0 && !this.f75505g && this.f75500b.contains(entry2.getKey())) {
                            this.f75506h.add(c26995a2.f75508a);
                            AbstractC27028u.EnumC27029a m985c = AbstractC27028u.EnumC27029a.m985c(c26995a2.f75508a);
                            if (m985c == null) {
                                StringBuilder m8728C2 = C22128a.m8728C("no event up from ");
                                m8728C2.append(c26995a2.f75508a);
                                throw new IllegalStateException(m8728C2.toString());
                            }
                            c26995a2.m1014a(abstractC26992b0, m985c);
                            m1016h();
                        }
                    }
                }
            }
        } else {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
    }
}
