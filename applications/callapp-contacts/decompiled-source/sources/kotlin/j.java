package kotlin;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\u001a \u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a*\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a(\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¨\u0006\t"}, d2 = {"lazy", "Lkotlin/Lazy;", "T", "initializer", "Lkotlin/Function0;", "lock", "", "mode", "Lkotlin/LazyThreadSafetyMode;", "kotlin-stdlib"}, k = 5, mv = {1, 4, 1}, xi = 1, xs = "kotlin/LazyKt")
/* loaded from: classes5-dex2jar.jar:kotlin/j.class */
public class j {
    public static final <T> Lazy<T> a(Function0<? extends T> initializer) {
        p.d(initializer, "initializer");
        return new r(initializer, null, 2, null);
    }

    public static final <T> Lazy<T> a(l mode, Function0<? extends T> initializer) {
        p.d(mode, "mode");
        p.d(initializer, "initializer");
        int i = i.f36753a[mode.ordinal()];
        if (i == 1) {
            return new r(initializer, null, 2, null);
        }
        if (i == 2) {
            return new q(initializer);
        }
        if (i == 3) {
            return new w(initializer);
        }
        throw new NoWhenBranchMatchedException();
    }
}
