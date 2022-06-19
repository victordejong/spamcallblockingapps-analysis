package androidx.lifecycle;

import androidx.lifecycle.AbstractC0896g;
import androidx.p002a.p003a.p005b.C0036a;
import androidx.p002a.p003a.p005b.C0037b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: androidx.lifecycle.l */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/l.class */
public class C0904l extends AbstractC0896g {

    /* renamed from: d */
    private final WeakReference<AbstractC0903k> f2851d;

    /* renamed from: b */
    private C0036a<AbstractC0902j, C0906a> f2849b = new C0036a<>();

    /* renamed from: e */
    private int f2852e = 0;

    /* renamed from: f */
    private boolean f2853f = false;

    /* renamed from: g */
    private boolean f2854g = false;

    /* renamed from: h */
    private ArrayList<AbstractC0896g.EnumC0898b> f2855h = new ArrayList<>();

    /* renamed from: c */
    private AbstractC0896g.EnumC0898b f2850c = AbstractC0896g.EnumC0898b.INITIALIZED;

    /* renamed from: androidx.lifecycle.l$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/l$1.class */
    public static /* synthetic */ class C09051 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2856a;

        /* renamed from: b */
        static final /* synthetic */ int[] f2857b = new int[AbstractC0896g.EnumC0898b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:48:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:60:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:54:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:46:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:40:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:58:0x0080). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c1 -> B:52:0x008c). Please submit an issue!!! */
        static {
            try {
                f2857b[AbstractC0896g.EnumC0898b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2857b[AbstractC0896g.EnumC0898b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2857b[AbstractC0896g.EnumC0898b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2857b[AbstractC0896g.EnumC0898b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2857b[AbstractC0896g.EnumC0898b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            f2856a = new int[AbstractC0896g.EnumC0897a.values().length];
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2856a[AbstractC0896g.EnumC0897a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/l$a.class */
    public static class C0906a {

        /* renamed from: a */
        AbstractC0896g.EnumC0898b f2858a;

        /* renamed from: b */
        AbstractC0901i f2859b;

        C0906a(AbstractC0902j abstractC0902j, AbstractC0896g.EnumC0898b enumC0898b) {
            this.f2859b = C0908n.m5091a(abstractC0902j);
            this.f2858a = enumC0898b;
        }

        /* renamed from: a */
        void m5094a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
            AbstractC0896g.EnumC0898b m5105b = C0904l.m5105b(enumC0897a);
            this.f2858a = C0904l.m5109a(this.f2858a, m5105b);
            this.f2859b.mo4389a(abstractC0903k, enumC0897a);
            this.f2858a = m5105b;
        }
    }

    public C0904l(AbstractC0903k abstractC0903k) {
        this.f2851d = new WeakReference<>(abstractC0903k);
    }

    /* renamed from: a */
    static AbstractC0896g.EnumC0898b m5109a(AbstractC0896g.EnumC0898b enumC0898b, AbstractC0896g.EnumC0898b enumC0898b2) {
        AbstractC0896g.EnumC0898b enumC0898b3 = enumC0898b;
        if (enumC0898b2 != null) {
            enumC0898b3 = enumC0898b;
            if (enumC0898b2.compareTo(enumC0898b) < 0) {
                enumC0898b3 = enumC0898b2;
            }
        }
        return enumC0898b3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m5107a(AbstractC0903k abstractC0903k) {
        C0037b<AbstractC0902j, C0906a>.C0041d c = this.f2849b.m8007c();
        while (c.hasNext() && !this.f2854g) {
            Map.Entry next = c.next();
            C0906a c0906a = (C0906a) next.getValue();
            while (c0906a.f2858a.compareTo(this.f2850c) < 0 && !this.f2854g && this.f2849b.m8015c(next.getKey())) {
                m5097d(c0906a.f2858a);
                c0906a.m5094a(abstractC0903k, m5095f(c0906a.f2858a));
                m5101c();
            }
        }
    }

    /* renamed from: b */
    static AbstractC0896g.EnumC0898b m5105b(AbstractC0896g.EnumC0897a enumC0897a) {
        switch (C09051.f2856a[enumC0897a.ordinal()]) {
            case 1:
            case 2:
                return AbstractC0896g.EnumC0898b.CREATED;
            case 3:
            case 4:
                return AbstractC0896g.EnumC0898b.STARTED;
            case 5:
                return AbstractC0896g.EnumC0898b.RESUMED;
            case 6:
                return AbstractC0896g.EnumC0898b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + enumC0897a);
        }
    }

    /* renamed from: b */
    private void m5102b(AbstractC0903k abstractC0903k) {
        Iterator<Map.Entry<AbstractC0902j, C0906a>> b = this.f2849b.m8010b();
        while (b.hasNext() && !this.f2854g) {
            Map.Entry<AbstractC0902j, C0906a> next = b.next();
            C0906a value = next.getValue();
            while (value.f2858a.compareTo(this.f2850c) > 0 && !this.f2854g && this.f2849b.m8015c(next.getKey())) {
                AbstractC0896g.EnumC0897a m5096e = m5096e(value.f2858a);
                m5097d(m5105b(m5096e));
                value.m5094a(abstractC0903k, m5096e);
                m5101c();
            }
        }
    }

    /* renamed from: b */
    private boolean m5106b() {
        boolean z = true;
        if (this.f2849b.m8013a() == 0) {
            return true;
        }
        AbstractC0896g.EnumC0898b enumC0898b = this.f2849b.m8006d().getValue().f2858a;
        AbstractC0896g.EnumC0898b enumC0898b2 = this.f2849b.m8005e().getValue().f2858a;
        if (enumC0898b != enumC0898b2 || this.f2850c != enumC0898b2) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private AbstractC0896g.EnumC0898b m5099c(AbstractC0902j abstractC0902j) {
        Map.Entry<AbstractC0902j, C0906a> m8014d = this.f2849b.m8014d(abstractC0902j);
        AbstractC0896g.EnumC0898b enumC0898b = null;
        AbstractC0896g.EnumC0898b enumC0898b2 = m8014d != null ? m8014d.getValue().f2858a : null;
        if (!this.f2855h.isEmpty()) {
            ArrayList<AbstractC0896g.EnumC0898b> arrayList = this.f2855h;
            enumC0898b = arrayList.get(arrayList.size() - 1);
        }
        return m5109a(m5109a(this.f2850c, enumC0898b2), enumC0898b);
    }

    /* renamed from: c */
    private void m5101c() {
        ArrayList<AbstractC0896g.EnumC0898b> arrayList = this.f2855h;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: c */
    private void m5100c(AbstractC0896g.EnumC0898b enumC0898b) {
        if (this.f2850c == enumC0898b) {
            return;
        }
        this.f2850c = enumC0898b;
        if (this.f2853f || this.f2852e != 0) {
            this.f2854g = true;
            return;
        }
        this.f2853f = true;
        m5098d();
        this.f2853f = false;
    }

    /* renamed from: d */
    private void m5098d() {
        AbstractC0903k abstractC0903k = this.f2851d.get();
        if (abstractC0903k != null) {
            while (!m5106b()) {
                this.f2854g = false;
                if (this.f2850c.compareTo(this.f2849b.m8006d().getValue().f2858a) < 0) {
                    m5102b(abstractC0903k);
                }
                Map.Entry<AbstractC0902j, C0906a> e = this.f2849b.m8005e();
                if (!this.f2854g && e != null && this.f2850c.compareTo(e.getValue().f2858a) > 0) {
                    m5107a(abstractC0903k);
                }
            }
            this.f2854g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    /* renamed from: d */
    private void m5097d(AbstractC0896g.EnumC0898b enumC0898b) {
        this.f2855h.add(enumC0898b);
    }

    /* renamed from: e */
    private static AbstractC0896g.EnumC0897a m5096e(AbstractC0896g.EnumC0898b enumC0898b) {
        int i = C09051.f2857b[enumC0898b.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return AbstractC0896g.EnumC0897a.ON_DESTROY;
            }
            if (i == 3) {
                return AbstractC0896g.EnumC0897a.ON_STOP;
            }
            if (i == 4) {
                return AbstractC0896g.EnumC0897a.ON_PAUSE;
            }
            if (i == 5) {
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException("Unexpected state value " + enumC0898b);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: f */
    private static AbstractC0896g.EnumC0897a m5095f(AbstractC0896g.EnumC0898b enumC0898b) {
        int i = C09051.f2857b[enumC0898b.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return AbstractC0896g.EnumC0897a.ON_START;
            }
            if (i == 3) {
                return AbstractC0896g.EnumC0897a.ON_RESUME;
            }
            if (i == 4) {
                throw new IllegalArgumentException();
            }
            if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value " + enumC0898b);
            }
        }
        return AbstractC0896g.EnumC0897a.ON_CREATE;
    }

    @Override // androidx.lifecycle.AbstractC0896g
    /* renamed from: a */
    public AbstractC0896g.EnumC0898b mo5112a() {
        return this.f2850c;
    }

    /* renamed from: a */
    public void m5111a(AbstractC0896g.EnumC0897a enumC0897a) {
        m5100c(m5105b(enumC0897a));
    }

    @Deprecated
    /* renamed from: a */
    public void m5110a(AbstractC0896g.EnumC0898b enumC0898b) {
        m5104b(enumC0898b);
    }

    @Override // androidx.lifecycle.AbstractC0896g
    /* renamed from: a */
    public void mo5108a(AbstractC0902j abstractC0902j) {
        AbstractC0903k abstractC0903k;
        C0906a c0906a = new C0906a(abstractC0902j, this.f2850c == AbstractC0896g.EnumC0898b.DESTROYED ? AbstractC0896g.EnumC0898b.DESTROYED : AbstractC0896g.EnumC0898b.INITIALIZED);
        if (this.f2849b.mo8011a(abstractC0902j, c0906a) == null && (abstractC0903k = this.f2851d.get()) != null) {
            boolean z = this.f2852e != 0 || this.f2853f;
            AbstractC0896g.EnumC0898b m5099c = m5099c(abstractC0902j);
            this.f2852e++;
            while (c0906a.f2858a.compareTo(m5099c) < 0 && this.f2849b.m8015c(abstractC0902j)) {
                m5097d(c0906a.f2858a);
                c0906a.m5094a(abstractC0903k, m5095f(c0906a.f2858a));
                m5101c();
                m5099c = m5099c(abstractC0902j);
            }
            if (!z) {
                m5098d();
            }
            this.f2852e--;
        }
    }

    /* renamed from: b */
    public void m5104b(AbstractC0896g.EnumC0898b enumC0898b) {
        m5100c(enumC0898b);
    }

    @Override // androidx.lifecycle.AbstractC0896g
    /* renamed from: b */
    public void mo5103b(AbstractC0902j abstractC0902j) {
        this.f2849b.mo8009b(abstractC0902j);
    }
}
