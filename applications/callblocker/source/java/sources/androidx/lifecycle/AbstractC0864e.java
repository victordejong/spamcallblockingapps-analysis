package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.e */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/e.class */
public abstract class AbstractC0864e {

    /* renamed from: a */
    AtomicReference<Object> f2974a = new AtomicReference<>();

    /* renamed from: androidx.lifecycle.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/e$a.class */
    public enum EnumC0865a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* renamed from: androidx.lifecycle.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/e$b.class */
    public enum EnumC0866b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        /* renamed from: a */
        public boolean m19224a(EnumC0866b enumC0866b) {
            return compareTo(enumC0866b) >= 0;
        }
    }

    /* renamed from: a */
    public abstract EnumC0866b mo19223a();

    /* renamed from: a */
    public abstract void mo19219a(AbstractC0868g abstractC0868g);

    /* renamed from: b */
    public abstract void mo19214b(AbstractC0868g abstractC0868g);
}
