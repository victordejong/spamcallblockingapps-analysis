package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.support.p012v4.media.C0082b;
import androidx.lifecycle.AbstractC0516f;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p162m.C3542a;
import p173n.C3685a;
import p173n.C3686b;
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/k.class */
public class C0525k extends AbstractC0516f {

    /* renamed from: c */
    public final WeakReference<AbstractC0524j> f2039c;

    /* renamed from: a */
    public C3685a<AbstractC0523i, C0526a> f2037a = new C3685a<>();

    /* renamed from: d */
    public int f2040d = 0;

    /* renamed from: e */
    public boolean f2041e = false;

    /* renamed from: f */
    public boolean f2042f = false;

    /* renamed from: g */
    public ArrayList<AbstractC0516f.EnumC0519c> f2043g = new ArrayList<>();

    /* renamed from: b */
    public AbstractC0516f.EnumC0519c f2038b = AbstractC0516f.EnumC0519c.INITIALIZED;

    /* renamed from: h */
    public final boolean f2044h = true;

    /* renamed from: androidx.lifecycle.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/k$a.class */
    public static class C0526a {

        /* renamed from: a */
        public AbstractC0516f.EnumC0519c f2045a;

        /* renamed from: b */
        public AbstractC0522h f2046b;

        public C0526a(AbstractC0523i abstractC0523i, AbstractC0516f.EnumC0519c enumC0519c) {
            FullLifecycleObserverAdapter fullLifecycleObserverAdapter;
            Map<Class<?>, Integer> map = C0529n.f2048a;
            boolean z = abstractC0523i instanceof AbstractC0522h;
            boolean z2 = abstractC0523i instanceof AbstractC0513d;
            if (z && z2) {
                fullLifecycleObserverAdapter = new FullLifecycleObserverAdapter((AbstractC0513d) abstractC0523i, (AbstractC0522h) abstractC0523i);
            } else if (z2) {
                fullLifecycleObserverAdapter = new FullLifecycleObserverAdapter((AbstractC0513d) abstractC0523i, null);
            } else if (z) {
                fullLifecycleObserverAdapter = (AbstractC0522h) abstractC0523i;
            } else {
                Class<?> cls = abstractC0523i.getClass();
                if (C0529n.m7980c(cls) == 2) {
                    List list = (List) ((HashMap) C0529n.f2049b).get(cls);
                    if (list.size() == 1) {
                        fullLifecycleObserverAdapter = new SingleGeneratedAdapterObserver(C0529n.m7982a((Constructor) list.get(0), abstractC0523i));
                    } else {
                        AbstractC0515e[] abstractC0515eArr = new AbstractC0515e[list.size()];
                        for (int i = 0; i < list.size(); i++) {
                            abstractC0515eArr[i] = C0529n.m7982a((Constructor) list.get(i), abstractC0523i);
                        }
                        fullLifecycleObserverAdapter = new CompositeGeneratedAdaptersObserver(abstractC0515eArr);
                    }
                } else {
                    fullLifecycleObserverAdapter = new ReflectiveGenericLifecycleObserver(abstractC0523i);
                }
            }
            this.f2046b = fullLifecycleObserverAdapter;
            this.f2045a = enumC0519c;
        }

        /* renamed from: a */
        public void m7983a(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
            AbstractC0516f.EnumC0519c m7994a = enumC0518b.m7994a();
            this.f2045a = C0525k.m7987f(this.f2045a, m7994a);
            this.f2046b.mo7489d(abstractC0524j, enumC0518b);
            this.f2045a = m7994a;
        }
    }

    public C0525k(AbstractC0524j abstractC0524j) {
        this.f2039c = new WeakReference<>(abstractC0524j);
    }

    /* renamed from: f */
    public static AbstractC0516f.EnumC0519c m7987f(AbstractC0516f.EnumC0519c enumC0519c, AbstractC0516f.EnumC0519c enumC0519c2) {
        AbstractC0516f.EnumC0519c enumC0519c3 = enumC0519c;
        if (enumC0519c2 != null) {
            enumC0519c3 = enumC0519c;
            if (enumC0519c2.compareTo(enumC0519c) < 0) {
                enumC0519c3 = enumC0519c2;
            }
        }
        return enumC0519c3;
    }

    @Override // androidx.lifecycle.AbstractC0516f
    /* renamed from: a */
    public void mo7992a(AbstractC0523i abstractC0523i) {
        AbstractC0524j abstractC0524j;
        m7989d("addObserver");
        AbstractC0516f.EnumC0519c enumC0519c = this.f2038b;
        AbstractC0516f.EnumC0519c enumC0519c2 = AbstractC0516f.EnumC0519c.DESTROYED;
        if (enumC0519c != enumC0519c2) {
            enumC0519c2 = AbstractC0516f.EnumC0519c.INITIALIZED;
        }
        C0526a c0526a = new C0526a(abstractC0523i, enumC0519c2);
        if (this.f2037a.mo1888d(abstractC0523i, c0526a) == null && (abstractC0524j = this.f2039c.get()) != null) {
            boolean z = this.f2040d != 0 || this.f2041e;
            AbstractC0516f.EnumC0519c m7990c = m7990c(abstractC0523i);
            this.f2040d++;
            while (c0526a.f2045a.compareTo(m7990c) < 0 && this.f2037a.f12052e.containsKey(abstractC0523i)) {
                this.f2043g.add(c0526a.f2045a);
                AbstractC0516f.EnumC0518b m7993b = AbstractC0516f.EnumC0518b.m7993b(c0526a.f2045a);
                if (m7993b == null) {
                    StringBuilder m8752j = C0082b.m8752j("no event up from ");
                    m8752j.append(c0526a.f2045a);
                    throw new IllegalStateException(m8752j.toString());
                }
                c0526a.m7983a(abstractC0524j, m7993b);
                m7985h();
                m7990c = m7990c(abstractC0523i);
            }
            if (!z) {
                m7984i();
            }
            this.f2040d--;
        }
    }

    @Override // androidx.lifecycle.AbstractC0516f
    /* renamed from: b */
    public void mo7991b(AbstractC0523i abstractC0523i) {
        m7989d("removeObserver");
        this.f2037a.mo1887e(abstractC0523i);
    }

    /* renamed from: c */
    public final AbstractC0516f.EnumC0519c m7990c(AbstractC0523i abstractC0523i) {
        C3685a<AbstractC0523i, C0526a> c3685a = this.f2037a;
        AbstractC0516f.EnumC0519c enumC0519c = null;
        C3686b.C3689c<AbstractC0523i, C0526a> c3689c = c3685a.f12052e.containsKey(abstractC0523i) ? c3685a.f12052e.get(abstractC0523i).f12060d : null;
        AbstractC0516f.EnumC0519c enumC0519c2 = c3689c != null ? c3689c.f12058b.f2045a : null;
        if (!this.f2043g.isEmpty()) {
            ArrayList<AbstractC0516f.EnumC0519c> arrayList = this.f2043g;
            enumC0519c = arrayList.get(arrayList.size() - 1);
        }
        return m7987f(m7987f(this.f2038b, enumC0519c2), enumC0519c);
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: d */
    public final void m7989d(String str) {
        if (!this.f2044h || C3542a.m2201M().mo2197v()) {
            return;
        }
        throw new IllegalStateException(C0082b.m8755g("Method ", str, " must be called on the main thread"));
    }

    /* renamed from: e */
    public void m7988e(AbstractC0516f.EnumC0518b enumC0518b) {
        m7989d("handleLifecycleEvent");
        m7986g(enumC0518b.m7994a());
    }

    /* renamed from: g */
    public final void m7986g(AbstractC0516f.EnumC0519c enumC0519c) {
        if (this.f2038b == enumC0519c) {
            return;
        }
        this.f2038b = enumC0519c;
        if (this.f2041e || this.f2040d != 0) {
            this.f2042f = true;
            return;
        }
        this.f2041e = true;
        m7984i();
        this.f2041e = false;
    }

    /* renamed from: h */
    public final void m7985h() {
        ArrayList<AbstractC0516f.EnumC0519c> arrayList = this.f2043g;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: i */
    public final void m7984i() {
        AbstractC0524j abstractC0524j = this.f2039c.get();
        if (abstractC0524j != null) {
            while (true) {
                C3685a<AbstractC0523i, C0526a> c3685a = this.f2037a;
                boolean z = true;
                if (c3685a.f12056d != 0) {
                    AbstractC0516f.EnumC0519c enumC0519c = c3685a.f12053a.f12058b.f2045a;
                    AbstractC0516f.EnumC0519c enumC0519c2 = c3685a.f12054b.f12058b.f2045a;
                    if (enumC0519c != enumC0519c2 || this.f2038b != enumC0519c2) {
                        z = false;
                    }
                }
                if (z) {
                    this.f2042f = false;
                    return;
                }
                this.f2042f = false;
                if (this.f2038b.compareTo(c3685a.f12053a.f12058b.f2045a) < 0) {
                    C3685a<AbstractC0523i, C0526a> c3685a2 = this.f2037a;
                    C3686b.C3688b c3688b = new C3686b.C3688b(c3685a2.f12054b, c3685a2.f12053a);
                    c3685a2.f12055c.put(c3688b, Boolean.FALSE);
                    while (c3688b.hasNext() && !this.f2042f) {
                        Map.Entry entry = (Map.Entry) c3688b.next();
                        C0526a c0526a = (C0526a) entry.getValue();
                        while (c0526a.f2045a.compareTo(this.f2038b) > 0 && !this.f2042f && this.f2037a.contains((AbstractC0523i) entry.getKey())) {
                            int ordinal = c0526a.f2045a.ordinal();
                            AbstractC0516f.EnumC0518b enumC0518b = ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? null : AbstractC0516f.EnumC0518b.ON_PAUSE : AbstractC0516f.EnumC0518b.ON_STOP : AbstractC0516f.EnumC0518b.ON_DESTROY;
                            if (enumC0518b == null) {
                                StringBuilder m8752j = C0082b.m8752j("no event down from ");
                                m8752j.append(c0526a.f2045a);
                                throw new IllegalStateException(m8752j.toString());
                            }
                            this.f2043g.add(enumC0518b.m7994a());
                            c0526a.m7983a(abstractC0524j, enumC0518b);
                            m7985h();
                        }
                    }
                }
                C3686b.C3689c<AbstractC0523i, C0526a> c3689c = this.f2037a.f12054b;
                if (!this.f2042f && c3689c != null && this.f2038b.compareTo(c3689c.f12058b.f2045a) > 0) {
                    C3686b<AbstractC0523i, C0526a>.C3690d m1890b = this.f2037a.m1890b();
                    while (m1890b.hasNext() && !this.f2042f) {
                        Map.Entry entry2 = (Map.Entry) m1890b.next();
                        C0526a c0526a2 = (C0526a) entry2.getValue();
                        while (c0526a2.f2045a.compareTo(this.f2038b) < 0 && !this.f2042f && this.f2037a.contains((AbstractC0523i) entry2.getKey())) {
                            this.f2043g.add(c0526a2.f2045a);
                            AbstractC0516f.EnumC0518b m7993b = AbstractC0516f.EnumC0518b.m7993b(c0526a2.f2045a);
                            if (m7993b == null) {
                                StringBuilder m8752j2 = C0082b.m8752j("no event up from ");
                                m8752j2.append(c0526a2.f2045a);
                                throw new IllegalStateException(m8752j2.toString());
                            }
                            c0526a2.m7983a(abstractC0524j, m7993b);
                            m7985h();
                        }
                    }
                }
            }
        } else {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
    }
}
