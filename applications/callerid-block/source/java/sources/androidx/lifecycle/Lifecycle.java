package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle.class */
public abstract class Lifecycle {

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle$Event.class */
    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle$State.class */
    public enum State {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean isAtLeast(State state) {
            return compareTo(state) >= 0;
        }
    }

    public Lifecycle() {
        new AtomicReference();
    }

    /* renamed from: a */
    public abstract void m13019a(AbstractC0359g abstractC0359g);

    /* renamed from: b */
    public abstract State m13018b();

    /* renamed from: c */
    public abstract void m13017c(AbstractC0359g abstractC0359g);
}
