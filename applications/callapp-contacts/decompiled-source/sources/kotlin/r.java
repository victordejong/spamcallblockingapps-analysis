package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\bH\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0088\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlin/SynchronizedLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "initializer", "Lkotlin/Function0;", "lock", "", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "_value", "value", "getValue", "()Ljava/lang/Object;", "isInitialized", "", "toString", "", "writeReplace", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/r.class */
public final class r<T> implements Serializable, Lazy<T> {

    /* renamed from: a  reason: collision with root package name */
    private Function0<? extends T> f36820a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f36821b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f36822c;

    public r(Function0<? extends T> initializer, Object obj) {
        p.d(initializer, "initializer");
        this.f36820a = initializer;
        this.f36821b = u.f38653a;
        this.f36822c = obj == null ? this : obj;
    }

    public /* synthetic */ r(Function0 function0, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i & 2) != 0 ? null : obj);
    }

    private final Object writeReplace() {
        return new e(a());
    }

    @Override // kotlin.Lazy
    public final T a() {
        T t;
        T t2 = (T) this.f36821b;
        if (t2 != u.f38653a) {
            return t2;
        }
        synchronized (this.f36822c) {
            t = (T) this.f36821b;
            if (t == u.f38653a) {
                Function0<? extends T> function0 = this.f36820a;
                p.a(function0);
                t = (T) function0.invoke();
                this.f36821b = t;
                this.f36820a = null;
            }
        }
        return t;
    }

    public final String toString() {
        return this.f36821b != u.f38653a ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
