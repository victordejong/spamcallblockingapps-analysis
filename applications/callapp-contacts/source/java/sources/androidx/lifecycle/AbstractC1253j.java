package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.j */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/j.class */
public abstract class AbstractC1253j {
    AtomicReference<Object> mInternalScopeRef = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.j$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$1.class */
    public static final /* synthetic */ class C12541 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4831a;

        /* renamed from: b */
        static final /* synthetic */ int[] f4832b;

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
            int[] iArr = new int[EnumC1255a.values().length];
            f4832b = iArr;
            try {
                iArr[EnumC1255a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4832b[EnumC1255a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4832b[EnumC1255a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4832b[EnumC1255a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4832b[EnumC1255a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4832b[EnumC1255a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4832b[EnumC1255a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr2 = new int[EnumC1256b.values().length];
            f4831a = iArr2;
            try {
                iArr2[EnumC1256b.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4831a[EnumC1256b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4831a[EnumC1256b.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f4831a[EnumC1256b.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f4831a[EnumC1256b.INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$a.class */
    public enum EnumC1255a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static EnumC1255a downFrom(EnumC1256b enumC1256b) {
            int i = C12541.f4831a[enumC1256b.ordinal()];
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

        public static EnumC1255a downTo(EnumC1256b enumC1256b) {
            int i = C12541.f4831a[enumC1256b.ordinal()];
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

        public static EnumC1255a upFrom(EnumC1256b enumC1256b) {
            int i = C12541.f4831a[enumC1256b.ordinal()];
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

        public static EnumC1255a upTo(EnumC1256b enumC1256b) {
            int i = C12541.f4831a[enumC1256b.ordinal()];
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

        public final EnumC1256b getTargetState() {
            switch (C12541.f4832b[ordinal()]) {
                case 1:
                case 2:
                    return EnumC1256b.CREATED;
                case 3:
                case 4:
                    return EnumC1256b.STARTED;
                case 5:
                    return EnumC1256b.RESUMED;
                case 6:
                    return EnumC1256b.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* renamed from: androidx.lifecycle.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$b.class */
    public enum EnumC1256b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean isAtLeast(EnumC1256b enumC1256b) {
            return compareTo(enumC1256b) >= 0;
        }
    }

    public abstract void addObserver(AbstractC1262o abstractC1262o);

    public abstract EnumC1256b getCurrentState();

    public abstract void removeObserver(AbstractC1262o abstractC1262o);
}
