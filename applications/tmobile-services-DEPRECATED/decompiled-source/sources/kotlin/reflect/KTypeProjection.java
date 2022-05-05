package kotlin.reflect;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018�� \u001c:\u0001\u001cB\u001b\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\t\u001a\u00020��2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u0019\u0010\u0003¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/KTypeProjection;", "Lkotlin/reflect/KVariance;", "component1", "()Lkotlin/reflect/KVariance;", "Lkotlin/reflect/KType;", "component2", "()Lkotlin/reflect/KType;", "variance", "type", "copy", "(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lkotlin/reflect/KType;", "getType", "Lkotlin/reflect/KVariance;", "getVariance", "<init>", "(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/KTypeProjection.class */
public final class KTypeProjection {
    @Nullable

    /* renamed from: a */
    private final KVariance f20826a;
    @Nullable

    /* renamed from: b */
    private final KType f20827b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0005J\u0017\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\u0005R\u0013\u0010\n\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001c\u0010\u000b\u001a\u00020\u00038��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u0012\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lkotlin/reflect/KTypeProjection$Companion;", "Lkotlin/reflect/KType;", "type", "Lkotlin/reflect/KTypeProjection;", "contravariant", "(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;", "covariant", "invariant", "getSTAR", "()Lkotlin/reflect/KTypeProjection;", "STAR", "star", "Lkotlin/reflect/KTypeProjection;", "getStar$annotations", "()V", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/reflect/KTypeProjection$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/reflect/KTypeProjection$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20828a;

        static {
            int[] iArr = new int[KVariance.values().length];
            f20828a = iArr;
            iArr[KVariance.INVARIANT.ordinal()] = 1;
            f20828a[KVariance.IN.ordinal()] = 2;
            f20828a[KVariance.OUT.ordinal()] = 3;
        }
    }

    static {
        new KTypeProjection(null, null);
    }

    public KTypeProjection(@Nullable KVariance kVariance, @Nullable KType kType) {
        String str;
        this.f20826a = kVariance;
        this.f20827b = kType;
        boolean z = true;
        if ((kVariance == null) != (this.f20827b == null)) {
            z = false;
        }
        if (!z) {
            if (this.f20826a == null) {
                str = "Star projection must have no type specified.";
            } else {
                str = "The projection variance " + this.f20826a + " requires type to be specified.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }

    @Nullable
    /* renamed from: a */
    public final KVariance m1687a() {
        return this.f20826a;
    }

    @Nullable
    /* renamed from: b */
    public final KType m1686b() {
        return this.f20827b;
    }

    @Nullable
    /* renamed from: c */
    public final KType m1685c() {
        return this.f20827b;
    }

    @Nullable
    /* renamed from: d */
    public final KVariance m1684d() {
        return this.f20826a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KTypeProjection)) {
            return false;
        }
        KTypeProjection kTypeProjection = (KTypeProjection) obj;
        return Intrinsics.m1834a(this.f20826a, kTypeProjection.f20826a) && Intrinsics.m1834a(this.f20827b, kTypeProjection.f20827b);
    }

    public int hashCode() {
        KVariance kVariance = this.f20826a;
        int i = 0;
        int hashCode = kVariance != null ? kVariance.hashCode() : 0;
        KType kType = this.f20827b;
        if (kType != null) {
            i = kType.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @NotNull
    public String toString() {
        String str;
        KVariance kVariance = this.f20826a;
        if (kVariance == null) {
            str = "*";
        } else {
            int i = WhenMappings.f20828a[kVariance.ordinal()];
            if (i == 1) {
                str = String.valueOf(this.f20827b);
            } else if (i == 2) {
                str = "in " + this.f20827b;
            } else if (i == 3) {
                str = "out " + this.f20827b;
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return str;
    }
}
