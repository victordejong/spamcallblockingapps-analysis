package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/j.class */
public abstract class j {
    AtomicReference<Object> mInternalScopeRef = new AtomicReference<>();

    /* renamed from: androidx.lifecycle.j$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2578a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f2579b;

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
            int[] iArr = new int[a.values().length];
            f2579b = iArr;
            try {
                iArr[a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2579b[a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2579b[a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2579b[a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2579b[a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2579b[a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2579b[a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr2 = new int[b.values().length];
            f2578a = iArr2;
            try {
                iArr2[b.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2578a[b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2578a[b.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2578a[b.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2578a[b.INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$a.class */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static a downFrom(b bVar) {
            int i = AnonymousClass1.f2578a[bVar.ordinal()];
            if (i == 1) {
                return ON_DESTROY;
            }
            if (i == 2) {
                return ON_STOP;
            }
            if (i != 3) {
                return null;
            }
            return ON_PAUSE;
        }

        public static a downTo(b bVar) {
            int i = AnonymousClass1.f2578a[bVar.ordinal()];
            if (i == 1) {
                return ON_STOP;
            }
            if (i == 2) {
                return ON_PAUSE;
            }
            if (i != 4) {
                return null;
            }
            return ON_DESTROY;
        }

        public static a upFrom(b bVar) {
            int i = AnonymousClass1.f2578a[bVar.ordinal()];
            if (i == 1) {
                return ON_START;
            }
            if (i == 2) {
                return ON_RESUME;
            }
            if (i != 5) {
                return null;
            }
            return ON_CREATE;
        }

        public static a upTo(b bVar) {
            int i = AnonymousClass1.f2578a[bVar.ordinal()];
            if (i == 1) {
                return ON_CREATE;
            }
            if (i == 2) {
                return ON_START;
            }
            if (i != 3) {
                return null;
            }
            return ON_RESUME;
        }

        public final b getTargetState() {
            switch (AnonymousClass1.f2579b[ordinal()]) {
                case 1:
                case 2:
                    return b.CREATED;
                case 3:
                case 4:
                    return b.STARTED;
                case 5:
                    return b.RESUMED;
                case 6:
                    return b.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$b.class */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean isAtLeast(b bVar) {
            return compareTo(bVar) >= 0;
        }
    }

    public abstract void addObserver(o oVar);

    public abstract b getCurrentState();

    public abstract void removeObserver(o oVar);
}
