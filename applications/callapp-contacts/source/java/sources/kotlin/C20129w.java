package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\tH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0088\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m4298d2 = {"Lkotlin/UnsafeLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "initializer", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "_value", "", "value", "getValue", "()Ljava/lang/Object;", "isInitialized", "", "toString", "", "writeReplace", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.w */
/* loaded from: classes5-dex2jar.jar:kotlin/w.class */
public final class C20129w<T> implements Serializable, Lazy<T> {

    /* renamed from: a */
    private Function0<? extends T> f66530a;

    /* renamed from: b */
    private Object f66531b = C20127u.f66528a;

    public C20129w(Function0<? extends T> initializer) {
        C18524p.m3840d(initializer, "initializer");
        this.f66530a = initializer;
    }

    private final Object writeReplace() {
        return new C18349e(mo1102a());
    }

    @Override // kotlin.Lazy
    /* renamed from: a */
    public final T mo1102a() {
        if (this.f66531b == C20127u.f66528a) {
            Function0<? extends T> function0 = this.f66530a;
            C18524p.m3851a(function0);
            this.f66531b = function0.invoke();
            this.f66530a = null;
        }
        return (T) this.f66531b;
    }

    public final String toString() {
        return this.f66531b != C20127u.f66528a ? String.valueOf(mo1102a()) : "Lazy value not initialized yet.";
    }
}
