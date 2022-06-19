package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle.class */
public abstract class Lifecycle {

    /* renamed from: a */
    AtomicReference<Object> f3658a = new AtomicReference<>();

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle$Event.class */
    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static Event downFrom(State state) {
            int i = C0779a.f3665a[state.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_STOP;
                }
                if (i == 3) {
                    return ON_PAUSE;
                }
                return null;
            }
            return ON_DESTROY;
        }

        public static Event downTo(State state) {
            int i = C0779a.f3665a[state.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_PAUSE;
                }
                if (i == 4) {
                    return ON_DESTROY;
                }
                return null;
            }
            return ON_STOP;
        }

        public static Event upFrom(State state) {
            int i = C0779a.f3665a[state.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_RESUME;
                }
                if (i == 5) {
                    return ON_CREATE;
                }
                return null;
            }
            return ON_START;
        }

        public static Event upTo(State state) {
            int i = C0779a.f3665a[state.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ON_START;
                }
                if (i == 3) {
                    return ON_RESUME;
                }
                return null;
            }
            return ON_CREATE;
        }

        public State getTargetState() {
            switch (C0779a.f3666b[ordinal()]) {
                case 1:
                case 2:
                    return State.CREATED;
                case 3:
                case 4:
                    return State.STARTED;
                case 5:
                    return State.RESUMED;
                case 6:
                    return State.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.Lifecycle$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycle$a.class */
    public static /* synthetic */ class C0779a {

        /* renamed from: a */
        static final /* synthetic */ int[] f3665a;

        /* renamed from: b */
        static final /* synthetic */ int[] f3666b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:48:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:42:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:16:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:46:0x006c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:40:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:58:0x0082). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c1 -> B:52:0x008d). Please submit an issue!!! */
        static {
            int[] iArr = new int[Event.values().length];
            f3666b = iArr;
            try {
                iArr[Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3666b[Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3666b[Event.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3666b[Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3666b[Event.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3666b[Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3666b[Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr2 = new int[State.values().length];
            f3665a = iArr2;
            try {
                iArr2[State.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f3665a[State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f3665a[State.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f3665a[State.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f3665a[State.INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: a */
    public abstract void mo32398a(AbstractC0796g abstractC0796g);

    /* renamed from: b */
    public abstract State mo32397b();

    /* renamed from: c */
    public abstract void mo32396c(AbstractC0796g abstractC0796g);
}
