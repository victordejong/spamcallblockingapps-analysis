package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/i$a.class */
/* synthetic */ class i$a {

    /* renamed from: a */
    static final /* synthetic */ int[] f2057a;

    /* renamed from: b */
    static final /* synthetic */ int[] f2058b;

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
        int[] iArr = new int[Lifecycle.State.values().length];
        f2058b = iArr;
        try {
            iArr[Lifecycle.State.INITIALIZED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f2058b[Lifecycle.State.CREATED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f2058b[Lifecycle.State.STARTED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f2058b[Lifecycle.State.RESUMED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f2058b[Lifecycle.State.DESTROYED.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        int[] iArr2 = new int[Lifecycle.Event.values().length];
        f2057a = iArr2;
        try {
            iArr2[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f2057a[Lifecycle.Event.ON_STOP.ordinal()] = 2;
        } catch (NoSuchFieldError e7) {
        }
        try {
            f2057a[Lifecycle.Event.ON_START.ordinal()] = 3;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f2057a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError e9) {
        }
        try {
            f2057a[Lifecycle.Event.ON_RESUME.ordinal()] = 5;
        } catch (NoSuchFieldError e10) {
        }
        try {
            f2057a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError e11) {
        }
        try {
            f2057a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError e12) {
        }
    }
}
