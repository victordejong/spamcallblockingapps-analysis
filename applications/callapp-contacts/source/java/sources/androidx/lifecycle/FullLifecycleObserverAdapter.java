package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC1261n {

    /* renamed from: a */
    private final AbstractC1249f f4766a;

    /* renamed from: b */
    private final AbstractC1261n f4767b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter$1.class */
    static final /* synthetic */ class C12181 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4768a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC1253j.EnumC1255a.values().length];
            f4768a = iArr;
            try {
                iArr[AbstractC1253j.EnumC1255a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4768a[AbstractC1253j.EnumC1255a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4768a[AbstractC1253j.EnumC1255a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4768a[AbstractC1253j.EnumC1255a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4768a[AbstractC1253j.EnumC1255a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4768a[AbstractC1253j.EnumC1255a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4768a[AbstractC1253j.EnumC1255a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(AbstractC1249f abstractC1249f, AbstractC1261n abstractC1261n) {
        this.f4766a = abstractC1249f;
        this.f4767b = abstractC1261n;
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
        int i = C12181.f4768a[enumC1255a.ordinal()];
        if (i == 2) {
            this.f4766a.onStart(abstractC1263p);
        } else if (i == 5) {
            this.f4766a.onStop(abstractC1263p);
        } else if (i == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        AbstractC1261n abstractC1261n = this.f4767b;
        if (abstractC1261n != null) {
            abstractC1261n.mo39588a(abstractC1263p, enumC1255a);
        }
    }
}
