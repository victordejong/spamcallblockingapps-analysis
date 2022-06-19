package androidx.lifecycle;

import androidx.lifecycle.AbstractC0516f;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC0522h {

    /* renamed from: a */
    public final AbstractC0513d f1991a;

    /* renamed from: b */
    public final AbstractC0522h f1992b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$a.class */
    public static /* synthetic */ class C0499a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1993a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC0516f.EnumC0518b.values().length];
            f1993a = iArr;
            try {
                iArr[AbstractC0516f.EnumC0518b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1993a[AbstractC0516f.EnumC0518b.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1993a[AbstractC0516f.EnumC0518b.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1993a[AbstractC0516f.EnumC0518b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1993a[AbstractC0516f.EnumC0518b.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1993a[AbstractC0516f.EnumC0518b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1993a[AbstractC0516f.EnumC0518b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(AbstractC0513d abstractC0513d, AbstractC0522h abstractC0522h) {
        this.f1991a = abstractC0513d;
        this.f1992b = abstractC0522h;
    }

    @Override // androidx.lifecycle.AbstractC0522h
    /* renamed from: d */
    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
        switch (C0499a.f1993a[enumC0518b.ordinal()]) {
            case 1:
                this.f1991a.mo7999c(abstractC0524j);
                break;
            case 2:
                this.f1991a.mo7997f(abstractC0524j);
                break;
            case 3:
                this.f1991a.mo8001a(abstractC0524j);
                break;
            case 4:
                this.f1991a.mo7998e(abstractC0524j);
                break;
            case 5:
                this.f1991a.mo7996g(abstractC0524j);
                break;
            case 6:
                this.f1991a.mo8000b(abstractC0524j);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        AbstractC0522h abstractC0522h = this.f1992b;
        if (abstractC0522h != null) {
            abstractC0522h.mo7489d(abstractC0524j, enumC0518b);
        }
    }
}
