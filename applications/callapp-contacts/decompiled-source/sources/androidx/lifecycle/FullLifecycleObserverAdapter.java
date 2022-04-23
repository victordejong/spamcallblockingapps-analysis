package androidx.lifecycle;

import androidx.lifecycle.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements n {

    /* renamed from: a  reason: collision with root package name */
    private final f f2524a;

    /* renamed from: b  reason: collision with root package name */
    private final n f2525b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2526a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[j.a.values().length];
            f2526a = iArr;
            try {
                iArr[j.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2526a[j.a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2526a[j.a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2526a[j.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2526a[j.a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2526a[j.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2526a[j.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(f fVar, n nVar) {
        this.f2524a = fVar;
        this.f2525b = nVar;
    }

    @Override // androidx.lifecycle.n
    public final void a(p pVar, j.a aVar) {
        int i = AnonymousClass1.f2526a[aVar.ordinal()];
        if (i == 2) {
            this.f2524a.onStart(pVar);
        } else if (i == 5) {
            this.f2524a.onStop(pVar);
        } else if (i == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        n nVar = this.f2525b;
        if (nVar != null) {
            nVar.a(pVar, aVar);
        }
    }
}
