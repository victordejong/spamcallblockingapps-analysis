package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\tH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0088\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lkotlin/UnsafeLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "initializer", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "_value", "", "value", "getValue", "()Ljava/lang/Object;", "isInitialized", "", "toString", "", "writeReplace", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/w.class */
public final class w<T> implements Serializable, Lazy<T> {

    /* renamed from: a  reason: collision with root package name */
    private Function0<? extends T> f38655a;

    /* renamed from: b  reason: collision with root package name */
    private Object f38656b = u.f38653a;

    public w(Function0<? extends T> initializer) {
        p.d(initializer, "initializer");
        this.f38655a = initializer;
    }

    private final Object writeReplace() {
        return new e(a());
    }

    @Override // kotlin.Lazy
    public final T a() {
        if (this.f38656b == u.f38653a) {
            Function0<? extends T> function0 = this.f38655a;
            p.a(function0);
            this.f38656b = function0.invoke();
            this.f38655a = null;
        }
        return (T) this.f38656b;
    }

    public final String toString() {
        return this.f38656b != u.f38653a ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
