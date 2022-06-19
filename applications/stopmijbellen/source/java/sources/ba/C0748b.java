package ba;

import android.support.p012v4.media.C0082b;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.ThreadMode;
import p122i2.RunnableC3089y;
/* renamed from: ba.b */
/* loaded from: classes2-dex2jar.jar:ba/b.class */
public class C0748b {

    /* renamed from: q */
    public static volatile C0748b f2822q;

    /* renamed from: r */
    public static final C0752c f2823r = new C0752c();

    /* renamed from: s */
    public static final Map<Class<?>, List<Class<?>>> f2824s = new HashMap();

    /* renamed from: a */
    public final Map<Class<?>, CopyOnWriteArrayList<C0767o>> f2825a;

    /* renamed from: b */
    public final Map<Object, List<Class<?>>> f2826b;

    /* renamed from: c */
    public final Map<Class<?>, Object> f2827c;

    /* renamed from: d */
    public final ThreadLocal<C0751c> f2828d = new C0749a(this);

    /* renamed from: e */
    public final AbstractC0756f f2829e;

    /* renamed from: f */
    public final AbstractC0761j f2830f;

    /* renamed from: g */
    public final RunnableC0747a f2831g;

    /* renamed from: h */
    public final RunnableC3089y f2832h;

    /* renamed from: i */
    public final C0765n f2833i;

    /* renamed from: j */
    public final ExecutorService f2834j;

    /* renamed from: k */
    public final boolean f2835k;

    /* renamed from: l */
    public final boolean f2836l;

    /* renamed from: m */
    public final boolean f2837m;

    /* renamed from: n */
    public final boolean f2838n;

    /* renamed from: o */
    public final boolean f2839o;

    /* renamed from: p */
    public final AbstractC0754e f2840p;

    /* renamed from: ba.b$a */
    /* loaded from: classes2-dex2jar.jar:ba/b$a.class */
    public class C0749a extends ThreadLocal<C0751c> {
        public C0749a(C0748b c0748b) {
        }

        @Override // java.lang.ThreadLocal
        public C0751c initialValue() {
            return new C0751c();
        }
    }

    /* renamed from: ba.b$b */
    /* loaded from: classes2-dex2jar.jar:ba/b$b.class */
    public static /* synthetic */ class C0750b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2841a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[ThreadMode.values().length];
            f2841a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2841a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2841a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2841a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2841a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: ba.b$c */
    /* loaded from: classes2-dex2jar.jar:ba/b$c.class */
    public static final class C0751c {

        /* renamed from: a */
        public final List<Object> f2842a = new ArrayList();

        /* renamed from: b */
        public boolean f2843b;

        /* renamed from: c */
        public boolean f2844c;

        /* renamed from: d */
        public Object f2845d;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0748b() {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.C0748b.<init>():void");
    }

    /* renamed from: a */
    public static void m7410a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                m7410a(list, cls.getInterfaces());
            }
        }
    }

    /* renamed from: b */
    public static C0748b m7409b() {
        C0748b c0748b = f2822q;
        C0748b c0748b2 = c0748b;
        if (c0748b == null) {
            synchronized (C0748b.class) {
                try {
                    C0748b c0748b3 = f2822q;
                    c0748b2 = c0748b3;
                    if (c0748b3 == null) {
                        c0748b2 = new C0748b();
                        f2822q = c0748b2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c0748b2;
    }

    /* renamed from: c */
    public void m7408c(C0759h c0759h) {
        Object obj = c0759h.f2857a;
        C0767o c0767o = c0759h.f2858b;
        c0759h.f2857a = null;
        c0759h.f2858b = null;
        c0759h.f2859c = null;
        List<C0759h> list = C0759h.f2856d;
        synchronized (list) {
            if (((ArrayList) list).size() < 10000) {
                ((ArrayList) list).add(c0759h);
            }
        }
        if (c0767o.f2882c) {
            m7407d(c0767o, obj);
        }
    }

    /* renamed from: d */
    public void m7407d(C0767o c0767o, Object obj) {
        try {
            c0767o.f2881b.f2865a.invoke(c0767o.f2880a, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(obj instanceof C0763l)) {
                if (this.f2835k) {
                    AbstractC0754e abstractC0754e = this.f2840p;
                    Level level = Level.SEVERE;
                    StringBuilder m8752j = C0082b.m8752j("Could not dispatch event: ");
                    m8752j.append(obj.getClass());
                    m8752j.append(" to subscribing class ");
                    m8752j.append(c0767o.f2880a.getClass());
                    abstractC0754e.mo7243b(level, m8752j.toString(), cause);
                }
                if (!this.f2837m) {
                    return;
                }
                m7404g(new C0763l(this, cause, obj, c0767o.f2880a));
            } else if (!this.f2835k) {
            } else {
                AbstractC0754e abstractC0754e2 = this.f2840p;
                Level level2 = Level.SEVERE;
                StringBuilder m8752j2 = C0082b.m8752j("SubscriberExceptionEvent subscriber ");
                m8752j2.append(c0767o.f2880a.getClass());
                m8752j2.append(" threw an exception");
                abstractC0754e2.mo7243b(level2, m8752j2.toString(), cause);
                C0763l c0763l = (C0763l) obj;
                AbstractC0754e abstractC0754e3 = this.f2840p;
                StringBuilder m8752j3 = C0082b.m8752j("Initial event ");
                m8752j3.append(c0763l.f2863b);
                m8752j3.append(" caused exception in ");
                m8752j3.append(c0763l.f2864c);
                abstractC0754e3.mo7243b(level2, m8752j3.toString(), c0763l.f2862a);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((((ba.AbstractC0756f.C0757a) r0).f2852a == android.os.Looper.myLooper()) != false) goto L10;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7406e() {
        /*
            r3 = this;
            r0 = r3
            ba.f r0 = r0.f2829e
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L23
            r0 = r4
            ba.f$a r0 = (ba.AbstractC0756f.C0757a) r0
            android.os.Looper r0 = r0.f2852a
            android.os.Looper r1 = android.os.Looper.myLooper()
            if (r0 != r1) goto L1d
            r0 = 1
            r6 = r0
            goto L1f
        L1d:
            r0 = 0
            r6 = r0
        L1f:
            r0 = r6
            if (r0 == 0) goto L25
        L23:
            r0 = 1
            r5 = r0
        L25:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.C0748b.m7406e():boolean");
    }

    /* renamed from: f */
    public boolean m7405f(Object obj) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.f2826b.containsKey(obj);
        }
        return containsKey;
    }

    /* renamed from: g */
    public void m7404g(Object obj) {
        C0751c c0751c = this.f2828d.get();
        List<Object> list = c0751c.f2842a;
        list.add(obj);
        if (!c0751c.f2843b) {
            c0751c.f2844c = m7406e();
            c0751c.f2843b = true;
            while (!list.isEmpty()) {
                try {
                    m7403h(list.remove(0), c0751c);
                } finally {
                    c0751c.f2843b = false;
                    c0751c.f2844c = false;
                }
            }
        }
    }

    /* renamed from: h */
    public final void m7403h(Object obj, C0751c c0751c) throws Error {
        boolean z;
        ArrayList arrayList;
        Class<?> cls = obj.getClass();
        if (this.f2839o) {
            Map<Class<?>, List<Class<?>>> map = f2824s;
            synchronized (map) {
                List list = (List) ((HashMap) map).get(cls);
                arrayList = list;
                if (list == null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Class<? super Object> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                        arrayList2.add(cls2);
                        m7410a(arrayList2, cls2.getInterfaces());
                    }
                    ((HashMap) f2824s).put(cls, arrayList2);
                    arrayList = arrayList2;
                }
            }
            int size = arrayList.size();
            int i = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i >= size) {
                    break;
                }
                z2 |= m7402i(obj, c0751c, (Class) arrayList.get(i));
                i++;
            }
        } else {
            z = m7402i(obj, c0751c, cls);
        }
        if (!z) {
            if (this.f2836l) {
                this.f2840p.mo7244a(Level.FINE, "No subscribers registered for event " + cls);
            }
            if (!this.f2838n || cls == C0758g.class || cls == C0763l.class) {
                return;
            }
            m7404g(new C0758g(this, obj, 0));
        }
    }

    /* renamed from: i */
    public final boolean m7402i(Object obj, C0751c c0751c, Class<?> cls) {
        CopyOnWriteArrayList<C0767o> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f2825a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<C0767o> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            C0767o next = it2.next();
            c0751c.f2845d = obj;
            m7401j(next, obj, c0751c.f2844c);
        }
        return true;
    }

    /* renamed from: j */
    public final void m7401j(C0767o c0767o, Object obj, boolean z) {
        int i = C0750b.f2841a[c0767o.f2881b.f2866b.ordinal()];
        if (i == 1) {
            m7407d(c0767o, obj);
        } else if (i == 2) {
            if (z) {
                m7407d(c0767o, obj);
            } else {
                this.f2830f.mo2657a(c0767o, obj);
            }
        } else if (i == 3) {
            AbstractC0761j abstractC0761j = this.f2830f;
            if (abstractC0761j != null) {
                abstractC0761j.mo2657a(c0767o, obj);
            } else {
                m7407d(c0767o, obj);
            }
        } else if (i == 4) {
            if (z) {
                this.f2831g.mo2657a(c0767o, obj);
            } else {
                m7407d(c0767o, obj);
            }
        } else if (i == 5) {
            this.f2832h.mo2657a(c0767o, obj);
        } else {
            StringBuilder m8752j = C0082b.m8752j("Unknown thread mode: ");
            m8752j.append(c0767o.f2881b.f2866b);
            throw new IllegalStateException(m8752j.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0074, code lost:
        if (r0.f2877e == r8.m3510b()) goto L14;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7400k(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.C0748b.m7400k(java.lang.Object):void");
    }

    /* renamed from: l */
    public final void m7399l(Object obj, C0764m c0764m) {
        Object value;
        Class<?> cls = c0764m.f2867c;
        C0767o c0767o = new C0767o(obj, c0764m);
        CopyOnWriteArrayList<C0767o> copyOnWriteArrayList = this.f2825a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f2825a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(c0767o)) {
            StringBuilder m8752j = C0082b.m8752j("Subscriber ");
            m8752j.append(obj.getClass());
            m8752j.append(" already registered to event ");
            m8752j.append(cls);
            throw new EventBusException(m8752j.toString());
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || c0764m.f2868d > copyOnWriteArrayList.get(i).f2881b.f2868d) {
                copyOnWriteArrayList.add(i, c0767o);
                break;
            }
        }
        List<Class<?>> list = this.f2826b.get(obj);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
            this.f2826b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (c0764m.f2869e) {
            if (!this.f2839o) {
                Object obj2 = this.f2827c.get(cls);
                if (obj2 == null) {
                    return;
                }
                m7401j(c0767o, obj2, m7406e());
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f2827c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey()) && (value = entry.getValue()) != null) {
                    m7401j(c0767o, value, m7406e());
                }
            }
        }
    }

    /* renamed from: m */
    public void m7398m(Object obj) {
        synchronized (this) {
            List<Class<?>> list = this.f2826b.get(obj);
            if (list != null) {
                for (Class<?> cls : list) {
                    CopyOnWriteArrayList<C0767o> copyOnWriteArrayList = this.f2825a.get(cls);
                    if (copyOnWriteArrayList != null) {
                        int size = copyOnWriteArrayList.size();
                        int i = 0;
                        while (i < size) {
                            C0767o c0767o = copyOnWriteArrayList.get(i);
                            int i2 = size;
                            int i3 = i;
                            if (c0767o.f2880a == obj) {
                                c0767o.f2882c = false;
                                copyOnWriteArrayList.remove(i);
                                i3 = i - 1;
                                i2 = size - 1;
                            }
                            i = i3 + 1;
                            size = i2;
                        }
                    }
                }
                this.f2826b.remove(obj);
            } else {
                this.f2840p.mo7244a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        }
    }

    public String toString() {
        StringBuilder m8751k = C0082b.m8751k("EventBus[indexCount=", 0, ", eventInheritance=");
        m8751k.append(this.f2839o);
        m8751k.append("]");
        return m8751k.toString();
    }
}
