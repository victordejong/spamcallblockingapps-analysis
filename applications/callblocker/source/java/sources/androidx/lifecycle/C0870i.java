package androidx.lifecycle;

import androidx.lifecycle.AbstractC0864e;
import androidx.p003a.p004a.p006b.C0067a;
import androidx.p003a.p004a.p006b.C0068b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: androidx.lifecycle.i */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/i.class */
public class C0870i extends AbstractC0864e {

    /* renamed from: d */
    private final WeakReference<AbstractC0869h> f2983d;

    /* renamed from: b */
    private C0067a<AbstractC0868g, C0872a> f2981b = new C0067a<>();

    /* renamed from: e */
    private int f2984e = 0;

    /* renamed from: f */
    private boolean f2985f = false;

    /* renamed from: g */
    private boolean f2986g = false;

    /* renamed from: h */
    private ArrayList<AbstractC0864e.EnumC0866b> f2987h = new ArrayList<>();

    /* renamed from: c */
    private AbstractC0864e.EnumC0866b f2982c = AbstractC0864e.EnumC0866b.INITIALIZED;

    /* renamed from: androidx.lifecycle.i$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/i$1.class */
    public static /* synthetic */ class C08711 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2988a;

        /* renamed from: b */
        static final /* synthetic */ int[] f2989b = new int[AbstractC0864e.EnumC0866b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:46:0x008c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:40:0x0080). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:58:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:52:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:48:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:42:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:50:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c1 -> B:44:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c5 -> B:62:0x0014). Please submit an issue!!! */
        static {
            try {
                f2989b[AbstractC0864e.EnumC0866b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2989b[AbstractC0864e.EnumC0866b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2989b[AbstractC0864e.EnumC0866b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2989b[AbstractC0864e.EnumC0866b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2989b[AbstractC0864e.EnumC0866b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            f2988a = new int[AbstractC0864e.EnumC0865a.values().length];
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2988a[AbstractC0864e.EnumC0865a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/i$a.class */
    public static class C0872a {

        /* renamed from: a */
        AbstractC0864e.EnumC0866b f2990a;

        /* renamed from: b */
        AbstractC0867f f2991b;

        C0872a(AbstractC0868g abstractC0868g, AbstractC0864e.EnumC0866b enumC0866b) {
            this.f2991b = C0875l.m19201a(abstractC0868g);
            this.f2990a = enumC0866b;
        }

        /* renamed from: a */
        void m19205a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
            AbstractC0864e.EnumC0866b m19216b = C0870i.m19216b(enumC0865a);
            this.f2990a = C0870i.m19220a(this.f2990a, m19216b);
            this.f2991b.mo17991a(abstractC0869h, enumC0865a);
            this.f2990a = m19216b;
        }
    }

    public C0870i(AbstractC0869h abstractC0869h) {
        this.f2983d = new WeakReference<>(abstractC0869h);
    }

    /* renamed from: a */
    static AbstractC0864e.EnumC0866b m19220a(AbstractC0864e.EnumC0866b enumC0866b, AbstractC0864e.EnumC0866b enumC0866b2) {
        if (enumC0866b2 != null && enumC0866b2.compareTo(enumC0866b) < 0) {
            enumC0866b = enumC0866b2;
        }
        return enumC0866b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m19218a(AbstractC0869h abstractC0869h) {
        C0068b<AbstractC0868g, C0872a>.C0072d c = this.f2981b.m22299c();
        while (c.hasNext() && !this.f2986g) {
            Map.Entry next = c.next();
            C0872a c0872a = (C0872a) next.getValue();
            while (c0872a.f2990a.compareTo(this.f2982c) < 0 && !this.f2986g && this.f2981b.m22307c(next.getKey())) {
                m19208d(c0872a.f2990a);
                c0872a.m19205a(abstractC0869h, m19206f(c0872a.f2990a));
                m19212c();
            }
        }
    }

    /* renamed from: b */
    static AbstractC0864e.EnumC0866b m19216b(AbstractC0864e.EnumC0865a enumC0865a) {
        AbstractC0864e.EnumC0866b enumC0866b;
        switch (C08711.f2988a[enumC0865a.ordinal()]) {
            case 1:
            case 2:
                enumC0866b = AbstractC0864e.EnumC0866b.CREATED;
                break;
            case 3:
            case 4:
                enumC0866b = AbstractC0864e.EnumC0866b.STARTED;
                break;
            case 5:
                enumC0866b = AbstractC0864e.EnumC0866b.RESUMED;
                break;
            case 6:
                enumC0866b = AbstractC0864e.EnumC0866b.DESTROYED;
                break;
            default:
                throw new IllegalArgumentException("Unexpected event value " + enumC0865a);
        }
        return enumC0866b;
    }

    /* renamed from: b */
    private void m19213b(AbstractC0869h abstractC0869h) {
        Iterator<Map.Entry<AbstractC0868g, C0872a>> b = this.f2981b.m22302b();
        while (b.hasNext() && !this.f2986g) {
            Map.Entry<AbstractC0868g, C0872a> next = b.next();
            C0872a value = next.getValue();
            while (value.f2990a.compareTo(this.f2982c) > 0 && !this.f2986g && this.f2981b.m22307c(next.getKey())) {
                AbstractC0864e.EnumC0865a m19207e = m19207e(value.f2990a);
                m19208d(m19216b(m19207e));
                value.m19205a(abstractC0869h, m19207e);
                m19212c();
            }
        }
    }

    /* renamed from: b */
    private boolean m19217b() {
        boolean z = true;
        if (this.f2981b.m22305a() != 0) {
            AbstractC0864e.EnumC0866b enumC0866b = this.f2981b.m22298d().getValue().f2990a;
            AbstractC0864e.EnumC0866b enumC0866b2 = this.f2981b.m22297e().getValue().f2990a;
            z = enumC0866b == enumC0866b2 && this.f2982c == enumC0866b2;
        }
        return z;
    }

    /* renamed from: c */
    private AbstractC0864e.EnumC0866b m19210c(AbstractC0868g abstractC0868g) {
        Map.Entry<AbstractC0868g, C0872a> m22306d = this.f2981b.m22306d(abstractC0868g);
        return m19220a(m19220a(this.f2982c, m22306d != null ? m22306d.getValue().f2990a : null), !this.f2987h.isEmpty() ? this.f2987h.get(this.f2987h.size() - 1) : null);
    }

    /* renamed from: c */
    private void m19212c() {
        this.f2987h.remove(this.f2987h.size() - 1);
    }

    /* renamed from: c */
    private void m19211c(AbstractC0864e.EnumC0866b enumC0866b) {
        if (this.f2982c == enumC0866b) {
            return;
        }
        this.f2982c = enumC0866b;
        if (this.f2985f || this.f2984e != 0) {
            this.f2986g = true;
            return;
        }
        this.f2985f = true;
        m19209d();
        this.f2985f = false;
    }

    /* renamed from: d */
    private void m19209d() {
        AbstractC0869h abstractC0869h = this.f2983d.get();
        if (abstractC0869h == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!m19217b()) {
            this.f2986g = false;
            if (this.f2982c.compareTo(this.f2981b.m22298d().getValue().f2990a) < 0) {
                m19213b(abstractC0869h);
            }
            Map.Entry<AbstractC0868g, C0872a> e = this.f2981b.m22297e();
            if (!this.f2986g && e != null && this.f2982c.compareTo(e.getValue().f2990a) > 0) {
                m19218a(abstractC0869h);
            }
        }
        this.f2986g = false;
    }

    /* renamed from: d */
    private void m19208d(AbstractC0864e.EnumC0866b enumC0866b) {
        this.f2987h.add(enumC0866b);
    }

    /* renamed from: e */
    private static AbstractC0864e.EnumC0865a m19207e(AbstractC0864e.EnumC0866b enumC0866b) {
        AbstractC0864e.EnumC0865a enumC0865a;
        switch (C08711.f2989b[enumC0866b.ordinal()]) {
            case 1:
                throw new IllegalArgumentException();
            case 2:
                enumC0865a = AbstractC0864e.EnumC0865a.ON_DESTROY;
                break;
            case 3:
                enumC0865a = AbstractC0864e.EnumC0865a.ON_STOP;
                break;
            case 4:
                enumC0865a = AbstractC0864e.EnumC0865a.ON_PAUSE;
                break;
            case 5:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + enumC0866b);
        }
        return enumC0865a;
    }

    /* renamed from: f */
    private static AbstractC0864e.EnumC0865a m19206f(AbstractC0864e.EnumC0866b enumC0866b) {
        AbstractC0864e.EnumC0865a enumC0865a;
        switch (C08711.f2989b[enumC0866b.ordinal()]) {
            case 1:
            case 5:
                enumC0865a = AbstractC0864e.EnumC0865a.ON_CREATE;
                break;
            case 2:
                enumC0865a = AbstractC0864e.EnumC0865a.ON_START;
                break;
            case 3:
                enumC0865a = AbstractC0864e.EnumC0865a.ON_RESUME;
                break;
            case 4:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + enumC0866b);
        }
        return enumC0865a;
    }

    @Override // androidx.lifecycle.AbstractC0864e
    /* renamed from: a */
    public AbstractC0864e.EnumC0866b mo19223a() {
        return this.f2982c;
    }

    /* renamed from: a */
    public void m19222a(AbstractC0864e.EnumC0865a enumC0865a) {
        m19211c(m19216b(enumC0865a));
    }

    @Deprecated
    /* renamed from: a */
    public void m19221a(AbstractC0864e.EnumC0866b enumC0866b) {
        m19215b(enumC0866b);
    }

    @Override // androidx.lifecycle.AbstractC0864e
    /* renamed from: a */
    public void mo19219a(AbstractC0868g abstractC0868g) {
        AbstractC0869h abstractC0869h;
        C0872a c0872a = new C0872a(abstractC0868g, this.f2982c == AbstractC0864e.EnumC0866b.DESTROYED ? AbstractC0864e.EnumC0866b.DESTROYED : AbstractC0864e.EnumC0866b.INITIALIZED);
        if (this.f2981b.mo22303a(abstractC0868g, c0872a) == null && (abstractC0869h = this.f2983d.get()) != null) {
            boolean z = this.f2984e != 0 || this.f2985f;
            AbstractC0864e.EnumC0866b m19210c = m19210c(abstractC0868g);
            this.f2984e++;
            while (c0872a.f2990a.compareTo(m19210c) < 0 && this.f2981b.m22307c(abstractC0868g)) {
                m19208d(c0872a.f2990a);
                c0872a.m19205a(abstractC0869h, m19206f(c0872a.f2990a));
                m19212c();
                m19210c = m19210c(abstractC0868g);
            }
            if (!z) {
                m19209d();
            }
            this.f2984e--;
        }
    }

    /* renamed from: b */
    public void m19215b(AbstractC0864e.EnumC0866b enumC0866b) {
        m19211c(enumC0866b);
    }

    @Override // androidx.lifecycle.AbstractC0864e
    /* renamed from: b */
    public void mo19214b(AbstractC0868g abstractC0868g) {
        this.f2981b.mo22301b(abstractC0868g);
    }
}
