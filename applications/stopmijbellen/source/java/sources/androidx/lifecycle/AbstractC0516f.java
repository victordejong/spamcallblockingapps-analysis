package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.f */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/f.class */
public abstract class AbstractC0516f {

    /* renamed from: androidx.lifecycle.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/f$a.class */
    public static /* synthetic */ class C0517a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2028a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f2029b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0080 -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0084 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0088 -> B:39:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x008c -> B:55:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0090 -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0094 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0098 -> B:16:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x009c -> B:53:0x006d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00a0 -> B:47:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00a4 -> B:41:0x0079). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0518b.values().length];
            f2029b = iArr;
            try {
                iArr[EnumC0518b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2029b[EnumC0518b.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2029b[EnumC0518b.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2029b[EnumC0518b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2029b[EnumC0518b.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2029b[EnumC0518b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2029b[EnumC0518b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr2 = new int[EnumC0519c.values().length];
            f2028a = iArr2;
            iArr2[2] = 1;
            try {
                f2028a[3] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2028a[4] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2028a[0] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2028a[1] = 5;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/f$b.class */
    public enum EnumC0518b {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        /* renamed from: b */
        public static EnumC0518b m7993b(EnumC0519c enumC0519c) {
            int ordinal = enumC0519c.ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return ON_START;
                }
                if (ordinal == 3) {
                    return ON_RESUME;
                }
                return null;
            }
            return ON_CREATE;
        }

        /* renamed from: a */
        public EnumC0519c m7994a() {
            switch (C0517a.f2029b[ordinal()]) {
                case 1:
                case 2:
                    return EnumC0519c.CREATED;
                case 3:
                case 4:
                    return EnumC0519c.STARTED;
                case 5:
                    return EnumC0519c.RESUMED;
                case 6:
                    return EnumC0519c.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* renamed from: androidx.lifecycle.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/f$c.class */
    public enum EnumC0519c {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED
    }

    public AbstractC0516f() {
        new AtomicReference();
    }

    /* renamed from: a */
    public abstract void mo7992a(AbstractC0523i abstractC0523i);

    /* renamed from: b */
    public abstract void mo7991b(AbstractC0523i abstractC0523i);
}
