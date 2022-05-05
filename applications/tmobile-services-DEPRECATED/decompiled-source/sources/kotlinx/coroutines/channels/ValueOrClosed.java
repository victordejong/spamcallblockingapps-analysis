package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0014\b\u0087@\u0018��  *\u0006\b��\u0010\u0001 \u0001:\u0002! B\u0016\b��\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002ø\u0001��¢\u0006\u0004\b\u001f\u0010\u0019J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u000e8F@\u0006¢\u0006\f\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0017\u001a\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0006R\u0019\u0010\u001b\u001a\u00028��8F@\u0006¢\u0006\f\u0012\u0004\b\u001a\u0010\u0012\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001e\u001a\u0004\u0018\u00018��8F@\u0006¢\u0006\f\u0012\u0004\b\u001d\u0010\u0012\u001a\u0004\b\u001c\u0010\u0019ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"Lkotlinx/coroutines/channels/ValueOrClosed;", "T", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "", "getCloseCause-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getCloseCause$annotations", "()V", "closeCause", "holder", "Ljava/lang/Object;", "isClosed-impl", "isClosed", "getValue-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getValue$annotations", FirebaseAnalytics.Param.VALUE, "getValueOrNull-impl", "getValueOrNull$annotations", "valueOrNull", "constructor-impl", "Companion", "Closed", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ValueOrClosed.class */
public final class ValueOrClosed<T> {

    /* renamed from: b */
    public static final Companion f22234b = new Companion(null);

    /* renamed from: a */
    private final Object f22235a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\b��\u0018��B\u0011\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/channels/ValueOrClosed$Closed;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "", "cause", "Ljava/lang/Throwable;", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ValueOrClosed$Closed.class */
    public static final class Closed {
        @JvmField
        @Nullable

        /* renamed from: a */
        public final Throwable f22236a;

        public Closed(@Nullable Throwable th) {
            this.f22236a = th;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof Closed) && Intrinsics.m1834a(this.f22236a, ((Closed) obj).f22236a);
        }

        public int hashCode() {
            Throwable th = this.f22236a;
            return th != null ? th.hashCode() : 0;
        }

        @NotNull
        public String toString() {
            return "Closed(" + this.f22236a + ')';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\t\b\u0080\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ,\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0080\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00012\u0006\u0010\b\u001a\u00028\u0001H\u0080\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/ValueOrClosed$Companion;", "E", "", "cause", "Lkotlinx/coroutines/channels/ValueOrClosed;", "closed-ZYPwvRU$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "closed", FirebaseAnalytics.Param.VALUE, "value-ZYPwvRU$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ValueOrClosed$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ ValueOrClosed(@Nullable Object obj) {
        this.f22235a = obj;
    }

    @NotNull
    /* renamed from: a */
    public static final /* synthetic */ ValueOrClosed m793a(@Nullable Object obj) {
        return new ValueOrClosed(obj);
    }

    @NotNull
    /* renamed from: b */
    public static Object m792b(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: c */
    public static boolean m791c(Object obj, @Nullable Object obj2) {
        return (obj2 instanceof ValueOrClosed) && Intrinsics.m1834a(obj, ((ValueOrClosed) obj2).m785i());
    }

    @Nullable
    /* renamed from: d */
    public static final Throwable m790d(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).f22236a;
        }
        throw new IllegalStateException("Channel was not closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static final T m789e(Object obj) {
        if (!(obj instanceof Closed)) {
            return obj;
        }
        throw new IllegalStateException("Channel was closed".toString());
    }

    /* renamed from: f */
    public static int m788f(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: g */
    public static final boolean m787g(Object obj) {
        return obj instanceof Closed;
    }

    @NotNull
    /* renamed from: h */
    public static String m786h(Object obj) {
        String str;
        if (obj instanceof Closed) {
            str = obj.toString();
        } else {
            str = "Value(" + obj + ')';
        }
        return str;
    }

    public boolean equals(Object obj) {
        return m791c(this.f22235a, obj);
    }

    public int hashCode() {
        return m788f(this.f22235a);
    }

    @Nullable
    /* renamed from: i */
    public final /* synthetic */ Object m785i() {
        return this.f22235a;
    }

    @NotNull
    public String toString() {
        return m786h(this.f22235a);
    }
}
