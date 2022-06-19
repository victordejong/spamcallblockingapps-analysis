package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC0795f {

    /* renamed from: d */
    private final AbstractC0791c f3655d;

    /* renamed from: e */
    private final AbstractC0795f f3656e;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$a.class */
    static /* synthetic */ class C0778a {

        /* renamed from: a */
        static final /* synthetic */ int[] f3657a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            f3657a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3657a[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3657a[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3657a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3657a[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3657a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3657a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(AbstractC0791c abstractC0791c, AbstractC0795f abstractC0795f) {
        this.f3655d = abstractC0791c;
        this.f3656e = abstractC0795f;
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        switch (C0778a.f3657a[event.ordinal()]) {
            case 1:
                this.f3655d.m32404b(abstractC0797h);
                break;
            case 2:
                this.f3655d.m32400g(abstractC0797h);
                break;
            case 3:
                this.f3655d.m32405a(abstractC0797h);
                break;
            case 4:
                this.f3655d.m32403d(abstractC0797h);
                break;
            case 5:
                this.f3655d.m32402e(abstractC0797h);
                break;
            case 6:
                this.f3655d.m32401f(abstractC0797h);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        AbstractC0795f abstractC0795f = this.f3656e;
        if (abstractC0795f != null) {
            abstractC0795f.mo30701c(abstractC0797h, event);
        }
    }
}
