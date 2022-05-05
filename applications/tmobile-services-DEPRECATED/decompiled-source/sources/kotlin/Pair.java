package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018��*\u0006\b��\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0007\u001a\u00028��\u0012\u0006\u0010\b\u001a\u00028\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0004\u001a\u00028��HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0005J0\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\b\b\u0002\u0010\u0007\u001a\u00028��2\b\b\u0002\u0010\b\u001a\u00028\u0001HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0007\u001a\u00028��8\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0005R\u0019\u0010\b\u001a\u00028\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0018\u0010\u0005¨\u0006\u001b"}, d2 = {"Lkotlin/Pair;", "A", "B", "Ljava/io/Serializable;", "component1", "()Ljava/lang/Object;", "component2", "first", "second", "copy", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Ljava/lang/Object;", "getFirst", "getSecond", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/Pair.class */
public final class Pair<A, B> implements Serializable {

    /* renamed from: f */
    private final A f20416f;

    /* renamed from: g */
    private final B f20417g;

    public Pair(A a, B b) {
        this.f20416f = a;
        this.f20417g = b;
    }

    /* renamed from: a */
    public final A m2486a() {
        return this.f20416f;
    }

    /* renamed from: b */
    public final B m2485b() {
        return this.f20417g;
    }

    /* renamed from: c */
    public final A m2484c() {
        return this.f20416f;
    }

    /* renamed from: d */
    public final B m2483d() {
        return this.f20417g;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return Intrinsics.m1834a(this.f20416f, pair.f20416f) && Intrinsics.m1834a(this.f20417g, pair.f20417g);
    }

    public int hashCode() {
        A a = this.f20416f;
        int i = 0;
        int hashCode = a != null ? a.hashCode() : 0;
        B b = this.f20417g;
        if (b != null) {
            i = b.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @NotNull
    public String toString() {
        return '(' + this.f20416f + ", " + this.f20417g + ')';
    }
}
