package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.functions.C18938d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19828e;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/c.class */
public final class C18936c extends AbstractC19828e {

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/c$a.class */
    public final /* synthetic */ class C18937a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64538a;

        static {
            int[] iArr = new int[EnumC18933b.values().length];
            iArr[EnumC18933b.Function.ordinal()] = 1;
            iArr[EnumC18933b.SuspendFunction.ordinal()] = 2;
            f64538a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18936c(AbstractC19302n storageManager, FunctionClassDescriptor containingClass) {
        super(storageManager, containingClass);
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(containingClass, "containingClass");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19828e
    /* renamed from: a */
    public final List<AbstractC19219w> mo1417a() {
        int i = C18937a.f64538a[((FunctionClassDescriptor) this.f66024c).f64526b.ordinal()];
        if (i == 1) {
            C18938d.C18939a c18939a = C18938d.f64539a;
            return C18282n.m4176a(C18938d.C18939a.m2838a((FunctionClassDescriptor) this.f66024c, false));
        } else if (i != 2) {
            return C18297z.f63400a;
        } else {
            C18938d.C18939a c18939a2 = C18938d.f64539a;
            return C18282n.m4176a(C18938d.C18939a.m2838a((FunctionClassDescriptor) this.f66024c, true));
        }
    }
}
