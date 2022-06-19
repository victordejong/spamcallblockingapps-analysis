package kotlin.reflect;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\b\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, m4298d2 = {"Lkotlin/reflect/KTypeProjection;", "", "variance", "Lkotlin/reflect/KVariance;", "type", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V", "getType", "()Lkotlin/reflect/KType;", "getVariance", "()Lkotlin/reflect/KVariance;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/q.class */
public final class C20112q {

    /* renamed from: a */
    public final EnumC20115s f66509a;

    /* renamed from: b */
    public final KType f66510b;

    /* renamed from: d */
    public static final C20113a f66508d = new C20113a(null);

    /* renamed from: c */
    public static final C20112q f66507c = new C20112q(null, null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\b\u0010\u0002¨\u0006\u000e"}, m4298d2 = {"Lkotlin/reflect/KTypeProjection$Companion;", "", "()V", "STAR", "Lkotlin/reflect/KTypeProjection;", "getSTAR", "()Lkotlin/reflect/KTypeProjection;", "star", "getStar$annotations", "contravariant", "type", "Lkotlin/reflect/KType;", "covariant", "invariant", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.q$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/q$a.class */
    public static final class C20113a {
        private C20113a() {
        }

        public /* synthetic */ C20113a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C20112q(EnumC20115s enumC20115s, KType kType) {
        String str;
        this.f66509a = enumC20115s;
        this.f66510b = kType;
        if (!((enumC20115s == null) == (kType == null))) {
            if (enumC20115s == null) {
                str = "Star projection must have no type specified.";
            } else {
                str = "The projection variance " + enumC20115s + " requires type to be specified.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20112q)) {
                return false;
            }
            C20112q c20112q = (C20112q) obj;
            return C18524p.m3850a(this.f66509a, c20112q.f66509a) && C18524p.m3850a(this.f66510b, c20112q.f66510b);
        }
        return true;
    }

    public final int hashCode() {
        EnumC20115s enumC20115s = this.f66509a;
        int i = 0;
        int hashCode = enumC20115s != null ? enumC20115s.hashCode() : 0;
        KType kType = this.f66510b;
        if (kType != null) {
            i = kType.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        EnumC20115s enumC20115s = this.f66509a;
        if (enumC20115s == null) {
            return "*";
        }
        int i = C20114r.f66511a[enumC20115s.ordinal()];
        if (i == 1) {
            return String.valueOf(this.f66510b);
        }
        if (i == 2) {
            return "in " + this.f66510b;
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            return "out " + this.f66510b;
        }
    }
}
