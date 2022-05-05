package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0087@\u0018�� \u001f*\u0006\b��\u0010\u0001 \u00012\u00020\u0002:\u0002\u001f B\u0016\b\u0001\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003ø\u0001��¢\u0006\u0004\b\u001e\u0010\rJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÖ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000e\u001a\u0004\u0018\u00018��H\u0087\b¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0017\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0007R\u0013\u0010\u0019\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0007R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00038��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u0012\u0004\b\u001c\u0010\u001dø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lkotlin/Result;", "T", "Ljava/io/Serializable;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", "getOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrNull", "", "hashCode", "()I", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "isFailure-impl", "isFailure", "isSuccess-impl", "isSuccess", FirebaseAnalytics.Param.VALUE, "Ljava/lang/Object;", "getValue$annotations", "()V", "constructor-impl", "Companion", "Failure", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/Result.class */
public final class Result<T> implements Serializable {

    /* renamed from: g */
    public static final Companion f20418g = new Companion(null);
    @Nullable

    /* renamed from: f */
    private final Object f20419f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0007\u001a\u00028\u0001H\u0087\bø\u0001��¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlin/Result$Companion;", "T", "", "exception", "Lkotlin/Result;", "failure", "(Ljava/lang/Throwable;)Ljava/lang/Object;", FirebaseAnalytics.Param.VALUE, FirebaseAnalytics.Param.SUCCESS, "(Ljava/lang/Object;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/Result$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlin/Result$Failure;", "Ljava/io/Serializable;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "", "exception", "Ljava/lang/Throwable;", "<init>", "(Ljava/lang/Throwable;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/Result$Failure.class */
    public static final class Failure implements Serializable {
        @JvmField
        @NotNull

        /* renamed from: f */
        public final Throwable f20420f;

        public Failure(@NotNull Throwable exception) {
            Intrinsics.m1830e(exception, "exception");
            this.f20420f = exception;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof Failure) && Intrinsics.m1834a(this.f20420f, ((Failure) obj).f20420f);
        }

        public int hashCode() {
            return this.f20420f.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(" + this.f20420f + ')';
        }
    }

    @PublishedApi
    private /* synthetic */ Result(@Nullable Object obj) {
        this.f20419f = obj;
    }

    @NotNull
    /* renamed from: a */
    public static final /* synthetic */ Result m2482a(@Nullable Object obj) {
        return new Result(obj);
    }

    @PublishedApi
    @NotNull
    /* renamed from: b */
    public static Object m2481b(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: c */
    public static boolean m2480c(Object obj, @Nullable Object obj2) {
        return (obj2 instanceof Result) && Intrinsics.m1834a(obj, ((Result) obj2).m2474i());
    }

    @Nullable
    /* renamed from: d */
    public static final Throwable m2479d(Object obj) {
        return obj instanceof Failure ? ((Failure) obj).f20420f : null;
    }

    /* renamed from: e */
    public static int m2478e(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: f */
    public static final boolean m2477f(Object obj) {
        return obj instanceof Failure;
    }

    /* renamed from: g */
    public static final boolean m2476g(Object obj) {
        return !(obj instanceof Failure);
    }

    @NotNull
    /* renamed from: h */
    public static String m2475h(Object obj) {
        String str;
        if (obj instanceof Failure) {
            str = obj.toString();
        } else {
            str = "Success(" + obj + ')';
        }
        return str;
    }

    public boolean equals(Object obj) {
        return m2480c(this.f20419f, obj);
    }

    public int hashCode() {
        return m2478e(this.f20419f);
    }

    @Nullable
    /* renamed from: i */
    public final /* synthetic */ Object m2474i() {
        return this.f20419f;
    }

    @NotNull
    public String toString() {
        return m2475h(this.f20419f);
    }
}
