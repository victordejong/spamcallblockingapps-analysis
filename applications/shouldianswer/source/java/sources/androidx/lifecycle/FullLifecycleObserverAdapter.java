package androidx.lifecycle;

import androidx.lifecycle.AbstractC0896g;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC0901i {

    /* renamed from: a */
    private final AbstractC0893d f2810a;

    /* renamed from: b */
    private final AbstractC0901i f2811b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$1.class */
    static /* synthetic */ class C08851 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2812a = new int[AbstractC0896g.EnumC0897a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2812a[AbstractC0896g.EnumC0897a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(AbstractC0893d abstractC0893d, AbstractC0901i abstractC0901i) {
        this.f2810a = abstractC0893d;
        this.f2811b = abstractC0901i;
    }

    @Override // androidx.lifecycle.AbstractC0901i
    /* renamed from: a */
    public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
        switch (C08851.f2812a[enumC0897a.ordinal()]) {
            case 1:
                this.f2810a.m5120a(abstractC0903k);
                break;
            case 2:
                this.f2810a.m5119b(abstractC0903k);
                break;
            case 3:
                this.f2810a.m5118c(abstractC0903k);
                break;
            case 4:
                this.f2810a.m5117d(abstractC0903k);
                break;
            case 5:
                this.f2810a.m5116e(abstractC0903k);
                break;
            case 6:
                this.f2810a.m5115f(abstractC0903k);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        AbstractC0901i abstractC0901i = this.f2811b;
        if (abstractC0901i != null) {
            abstractC0901i.mo4389a(abstractC0903k, enumC0897a);
        }
    }
}
