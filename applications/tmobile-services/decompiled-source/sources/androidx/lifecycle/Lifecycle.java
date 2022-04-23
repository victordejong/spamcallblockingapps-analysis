package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle.class */
public abstract class Lifecycle {
    @NonNull
    @RestrictTo

    /* renamed from: a */
    AtomicReference<Object> f3988a = new AtomicReference<>();

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

        public boolean isAtLeast(@NonNull State state) {
            return compareTo(state) >= 0;
        }
    }

    @MainThread
    /* renamed from: a */
    public abstract void mo18231a(@NonNull LifecycleObserver lifecycleObserver);

    @NonNull
    @MainThread
    /* renamed from: b */
    public abstract State mo18230b();

    @MainThread
    /* renamed from: c */
    public abstract void mo18229c(@NonNull LifecycleObserver lifecycleObserver);
}
