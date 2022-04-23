package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0080@\u0018��*\u000e\b��\u0010\u0002*\b\u0012\u0004\u0012\u00028��0\u0001B\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003ø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÖ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rR\u0013\u0010\u000f\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0007R\u0019\u0010\u0014\u001a\u00028��8F@\u0006¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/internal/SegmentOrClosed;", "Lkotlinx/coroutines/internal/Segment;", "S", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "isClosed-impl", "isClosed", "getSegment-impl", "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;", "getSegment$annotations", "()V", "segment", FirebaseAnalytics.Param.VALUE, "Ljava/lang/Object;", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/SegmentOrClosed.class */
public final class SegmentOrClosed<S extends Segment<S>> {

    /* renamed from: a */
    private final Object f23947a;

    @NotNull
    /* renamed from: a */
    public static Object m463a(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: b */
    public static boolean m462b(Object obj, @Nullable Object obj2) {
        return (obj2 instanceof SegmentOrClosed) && Intrinsics.m1834a(obj, ((SegmentOrClosed) obj2).m457g());
    }

    @NotNull
    /* renamed from: c */
    public static final S m461c(Object obj) {
        Symbol symbol;
        symbol = ConcurrentLinkedListKt.f23893a;
        if (obj == symbol) {
            throw new IllegalStateException("Does not contain segment".toString());
        } else if (obj != null) {
            return (S) ((Segment) obj);
        } else {
            throw new NullPointerException("null cannot be cast to non-null type S");
        }
    }

    /* renamed from: d */
    public static int m460d(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: e */
    public static final boolean m459e(Object obj) {
        Symbol symbol;
        symbol = ConcurrentLinkedListKt.f23893a;
        return obj == symbol;
    }

    @NotNull
    /* renamed from: f */
    public static String m458f(Object obj) {
        return "SegmentOrClosed(value=" + obj + ")";
    }

    public boolean equals(Object obj) {
        return m462b(this.f23947a, obj);
    }

    @Nullable
    /* renamed from: g */
    public final /* synthetic */ Object m457g() {
        return this.f23947a;
    }

    public int hashCode() {
        return m460d(this.f23947a);
    }

    public String toString() {
        return m458f(this.f23947a);
    }
}
