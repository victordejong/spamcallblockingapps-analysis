package androidx.lifecycle;

import androidx.lifecycle.AbstractC0864e;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC0867f {

    /* renamed from: a */
    private final AbstractC0861b f2943a;

    /* renamed from: b */
    private final AbstractC0867f f2944b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$1.class */
    static /* synthetic */ class C08551 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2945a = new int[AbstractC0864e.EnumC0865a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:28:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:34:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:30:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0071 -> B:26:0x0014). Please submit an issue!!! */
        static {
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2945a[AbstractC0864e.EnumC0865a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(AbstractC0861b abstractC0861b, AbstractC0867f abstractC0867f) {
        this.f2943a = abstractC0861b;
        this.f2944b = abstractC0867f;
    }

    @Override // androidx.lifecycle.AbstractC0867f
    /* renamed from: a */
    public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
        switch (C08551.f2945a[enumC0865a.ordinal()]) {
            case 1:
                this.f2943a.m19231a(abstractC0869h);
                break;
            case 2:
                this.f2943a.m19230b(abstractC0869h);
                break;
            case 3:
                this.f2943a.m19229c(abstractC0869h);
                break;
            case 4:
                this.f2943a.m19228d(abstractC0869h);
                break;
            case 5:
                this.f2943a.m19227e(abstractC0869h);
                break;
            case 6:
                this.f2943a.m19226f(abstractC0869h);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        if (this.f2944b != null) {
            this.f2944b.mo17991a(abstractC0869h, enumC0865a);
        }
    }
}
