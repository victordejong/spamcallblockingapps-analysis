package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\bH\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0088\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, m4298d2 = {"Lkotlin/SynchronizedLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "initializer", "Lkotlin/Function0;", "lock", "", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "_value", "value", "getValue", "()Ljava/lang/Object;", "isInitialized", "", "toString", "", "writeReplace", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.r */
/* loaded from: classes5-dex2jar.jar:kotlin/r.class */
public final class C18547r<T> implements Serializable, Lazy<T> {

    /* renamed from: a */
    private Function0<? extends T> f63635a;

    /* renamed from: b */
    private volatile Object f63636b;

    /* renamed from: c */
    private final Object f63637c;

    public C18547r(Function0<? extends T> initializer, Object obj) {
        C18524p.m3840d(initializer, "initializer");
        this.f63635a = initializer;
        this.f63636b = C20127u.f66528a;
        this.f63637c = obj == null ? this : obj;
    }

    public /* synthetic */ C18547r(Function0 function0, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i & 2) != 0 ? null : obj);
    }

    private final Object writeReplace() {
        return new C18349e(mo1102a());
    }

    @Override // kotlin.Lazy
    /* renamed from: a */
    public final T mo1102a() {
        T t;
        T t2 = (T) this.f63636b;
        if (t2 != C20127u.f66528a) {
            return t2;
        }
        synchronized (this.f63637c) {
            t = this.f63636b;
            if (t == C20127u.f66528a) {
                Function0<? extends T> function0 = this.f63635a;
                C18524p.m3851a(function0);
                t = function0.invoke();
                this.f63636b = t;
                this.f63635a = null;
            }
        }
        return (T) t;
    }

    public final String toString() {
        return this.f63636b != C20127u.f66528a ? String.valueOf(mo1102a()) : "Lazy value not initialized yet.";
    }
}
