package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.g */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/g.class */
public abstract class AbstractC0896g {

    /* renamed from: a */
    AtomicReference<Object> f2841a = new AtomicReference<>();

    /* renamed from: androidx.lifecycle.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/g$a.class */
    public enum EnumC0897a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* renamed from: androidx.lifecycle.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/g$b.class */
    public enum EnumC0898b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        /* renamed from: a */
        public boolean m5114a(EnumC0898b enumC0898b) {
            return compareTo(enumC0898b) >= 0;
        }
    }

    /* renamed from: a */
    public abstract EnumC0898b mo5112a();

    /* renamed from: a */
    public abstract void mo5108a(AbstractC0902j abstractC0902j);

    /* renamed from: b */
    public abstract void mo5103b(AbstractC0902j abstractC0902j);
}
