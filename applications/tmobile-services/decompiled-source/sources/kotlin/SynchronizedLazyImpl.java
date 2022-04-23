package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B!\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u000f8\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000eR\u0016\u0010\u0014\u001a\u00028��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\f¨\u0006\u0017"}, d2 = {"Lkotlin/SynchronizedLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "", "isInitialized", "()Z", "", "toString", "()Ljava/lang/String;", "", "writeReplace", "()Ljava/lang/Object;", "_value", "Ljava/lang/Object;", "Lkotlin/Function0;", "initializer", "Lkotlin/Function0;", "lock", "getValue", FirebaseAnalytics.Param.VALUE, "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/SynchronizedLazyImpl.class */
final class SynchronizedLazyImpl<T> implements Lazy<T>, Serializable {

    /* renamed from: f */
    private Function0<? extends T> f20424f;

    /* renamed from: g */
    private volatile Object f20425g;

    /* renamed from: h */
    private final Object f20426h;

    public SynchronizedLazyImpl(@NotNull Function0<? extends T> initializer, @Nullable Object obj) {
        Intrinsics.m1830e(initializer, "initializer");
        this.f20424f = initializer;
        this.f20425g = UNINITIALIZED_VALUE.f20442a;
        this.f20426h = obj == null ? this : obj;
    }

    public /* synthetic */ SynchronizedLazyImpl(Function0 function0, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i & 2) != 0 ? null : obj);
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    /* renamed from: a */
    public boolean m2470a() {
        return this.f20425g != UNINITIALIZED_VALUE.f20442a;
    }

    @Override // kotlin.Lazy
    public T getValue() {
        T t;
        T t2 = (T) this.f20425g;
        if (t2 != UNINITIALIZED_VALUE.f20442a) {
            return t2;
        }
        synchronized (this.f20426h) {
            t = (T) this.f20425g;
            if (t == UNINITIALIZED_VALUE.f20442a) {
                Function0<? extends T> function0 = this.f20424f;
                Intrinsics.m1832c(function0);
                t = (T) function0.invoke();
                this.f20425g = t;
                this.f20424f = null;
            }
        }
        return t;
    }

    @NotNull
    public String toString() {
        return m2470a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
