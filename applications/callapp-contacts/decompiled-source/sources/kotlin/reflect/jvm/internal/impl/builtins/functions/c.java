package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.functions.d;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/c.class */
public final class c extends e {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/c$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37294a;

        static {
            int[] iArr = new int[b.values().length];
            iArr[b.Function.ordinal()] = 1;
            iArr[b.SuspendFunction.ordinal()] = 2;
            f37294a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(n storageManager, FunctionClassDescriptor containingClass) {
        super(storageManager, containingClass);
        p.d(storageManager, "storageManager");
        p.d(containingClass, "containingClass");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.e
    public final List<w> a() {
        int i = a.f37294a[((FunctionClassDescriptor) this.f38287c).f37286b.ordinal()];
        if (i == 1) {
            d.a aVar = d.f37295a;
            return kotlin.a.n.a(d.a.a((FunctionClassDescriptor) this.f38287c, false));
        } else if (i != 2) {
            return z.f36608a;
        } else {
            d.a aVar2 = d.f37295a;
            return kotlin.a.n.a(d.a.a((FunctionClassDescriptor) this.f38287c, true));
        }
    }
}
