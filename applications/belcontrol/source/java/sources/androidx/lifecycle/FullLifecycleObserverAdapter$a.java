package androidx.lifecycle;

import me;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$a.class */
public /* synthetic */ class FullLifecycleObserverAdapter$a {

    /* renamed from: a */
    public static final /* synthetic */ int[] f1014a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
    static {
        int[] iArr = new int[me.a.values().length];
        f1014a = iArr;
        try {
            iArr[me.a.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f1014a[me.a.ON_START.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f1014a[me.a.ON_RESUME.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f1014a[me.a.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f1014a[me.a.ON_STOP.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f1014a[me.a.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f1014a[me.a.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
    }
}
