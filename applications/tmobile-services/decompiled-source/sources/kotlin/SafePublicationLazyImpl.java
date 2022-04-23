package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018�� \u0017*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003:\u0001\u0017B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00108\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00028��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\f¨\u0006\u0018"}, d2 = {"Lkotlin/SafePublicationLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "", "isInitialized", "()Z", "", "toString", "()Ljava/lang/String;", "", "writeReplace", "()Ljava/lang/Object;", "_value", "Ljava/lang/Object;", "final", "Lkotlin/Function0;", "initializer", "Lkotlin/Function0;", "getValue", FirebaseAnalytics.Param.VALUE, "<init>", "(Lkotlin/jvm/functions/Function0;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/SafePublicationLazyImpl.class */
final class SafePublicationLazyImpl<T> implements Lazy<T>, Serializable {

    /* renamed from: h */
    private static final AtomicReferenceFieldUpdater<SafePublicationLazyImpl<?>, Object> f20421h = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "g");

    /* renamed from: f */
    private volatile Function0<? extends T> f20422f;

    /* renamed from: g */
    private volatile Object f20423g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bRf\u0010\u0005\u001aR\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0003*\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00040\u0004 \u0003*(\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0003*\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00010\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/SafePublicationLazyImpl$Companion;", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Lkotlin/SafePublicationLazyImpl;", "kotlin.jvm.PlatformType", "", "valueUpdater", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/SafePublicationLazyImpl$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    /* renamed from: a */
    public boolean m2471a() {
        return this.f20423g != UNINITIALIZED_VALUE.f20442a;
    }

    @Override // kotlin.Lazy
    public T getValue() {
        T t = (T) this.f20423g;
        if (t != UNINITIALIZED_VALUE.f20442a) {
            return t;
        }
        Function0<? extends T> function0 = this.f20422f;
        if (function0 != null) {
            T t2 = (T) function0.invoke();
            if (f20421h.compareAndSet(this, UNINITIALIZED_VALUE.f20442a, t2)) {
                this.f20422f = null;
                return t2;
            }
        }
        return (T) this.f20423g;
    }

    @NotNull
    public String toString() {
        return m2471a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
