package kotlin;

import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\u001a \u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a*\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a(\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¨\u0006\t"}, m400d2 = {"lazy", "Lkotlin/Lazy;", "T", "initializer", "Lkotlin/Function0;", "lock", "", "mode", "Lkotlin/LazyThreadSafetyMode;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/LazyKt")
/* loaded from: classes2-dex2jar.jar:kotlin/LazyKt__LazyJVMKt.class */
public class LazyKt__LazyJVMKt {
    public static final <T> Lazy<T> lazy(Object obj, Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, obj);
    }

    public static final <T> Lazy<T> lazy(LazyThreadSafetyMode mode, Function0<? extends T> initializer) {
        UnsafeLazyImpl unsafeLazyImpl;
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        int i = LazyKt.WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
        if (i == 1) {
            unsafeLazyImpl = new SynchronizedLazyImpl(initializer, null, 2, null);
        } else if (i == 2) {
            unsafeLazyImpl = new SafePublicationLazyImpl(initializer);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            unsafeLazyImpl = new UnsafeLazyImpl(initializer);
        }
        return unsafeLazyImpl;
    }

    public static final <T> Lazy<T> lazy(Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }
}
