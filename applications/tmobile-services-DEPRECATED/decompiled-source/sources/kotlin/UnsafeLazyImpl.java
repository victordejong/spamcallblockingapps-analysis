package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B\u0015\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u000f8\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00028��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\f¨\u0006\u0016"}, d2 = {"Lkotlin/UnsafeLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "", "isInitialized", "()Z", "", "toString", "()Ljava/lang/String;", "", "writeReplace", "()Ljava/lang/Object;", "_value", "Ljava/lang/Object;", "Lkotlin/Function0;", "initializer", "Lkotlin/Function0;", "getValue", FirebaseAnalytics.Param.VALUE, "<init>", "(Lkotlin/jvm/functions/Function0;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/UnsafeLazyImpl.class */
public final class UnsafeLazyImpl<T> implements Lazy<T>, Serializable {

    /* renamed from: f */
    private Function0<? extends T> f20448f;

    /* renamed from: g */
    private Object f20449g;

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    /* renamed from: a */
    public boolean m2384a() {
        return this.f20449g != UNINITIALIZED_VALUE.f20442a;
    }

    @Override // kotlin.Lazy
    public T getValue() {
        if (this.f20449g == UNINITIALIZED_VALUE.f20442a) {
            Function0<? extends T> function0 = this.f20448f;
            Intrinsics.m1832c(function0);
            this.f20449g = function0.invoke();
            this.f20448f = null;
        }
        return (T) this.f20449g;
    }

    @NotNull
    public String toString() {
        return m2384a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
