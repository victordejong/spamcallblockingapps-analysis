package kotlin;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a1\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\u0004\b\u0004\u0010\b\u001a/\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\f"}, d2 = {"T", "Lkotlin/Function0;", "initializer", "Lkotlin/Lazy;", "lazy", "(Lkotlin/Function0;)Lkotlin/Lazy;", "", "lock", "(Ljava/lang/Object;Lkotlin/Function0;)Lkotlin/Lazy;", "Lkotlin/LazyThreadSafetyMode;", "mode", "(Lkotlin/LazyThreadSafetyMode;Lkotlin/Function0;)Lkotlin/Lazy;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/LazyKt")
/* loaded from: classes2-dex2jar.jar:kotlin/LazyKt__LazyJVMKt.class */
public class LazyKt__LazyJVMKt {
    @NotNull
    /* renamed from: a */
    public static <T> Lazy<T> m2487a(@NotNull Function0<? extends T> initializer) {
        Intrinsics.m1830e(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }
}
