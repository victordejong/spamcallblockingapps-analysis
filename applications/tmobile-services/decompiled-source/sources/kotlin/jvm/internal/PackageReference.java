package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u001b\u0012\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\r\u0012\u0006\u0010\u0017\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR \u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\r8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0016\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lkotlin/jvm/internal/PackageReference;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Ljava/lang/Class;", "jClass", "Ljava/lang/Class;", "getJClass", "()Ljava/lang/Class;", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "members", "moduleName", "Ljava/lang/String;", "<init>", "(Ljava/lang/Class;Ljava/lang/String;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PackageReference.class */
public final class PackageReference implements ClassBasedDeclarationContainer {
    @NotNull

    /* renamed from: f */
    private final Class<?> f20743f;

    public PackageReference(@NotNull Class<?> jClass, @NotNull String moduleName) {
        Intrinsics.m1830e(jClass, "jClass");
        Intrinsics.m1830e(moduleName, "moduleName");
        this.f20743f = jClass;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    @NotNull
    /* renamed from: c */
    public Class<?> mo1811c() {
        return this.f20743f;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof PackageReference) && Intrinsics.m1834a(mo1811c(), ((PackageReference) obj).mo1811c());
    }

    public int hashCode() {
        return mo1811c().hashCode();
    }

    @NotNull
    public String toString() {
        return mo1811c().toString() + " (Kotlin reflection is not available)";
    }
}
