package kotlin.jvm.internal;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0005H\u0016R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lkotlin/jvm/internal/PackageReference;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "jClass", "Ljava/lang/Class;", "moduleName", "", "(Ljava/lang/Class;Ljava/lang/String;)V", "getJClass", "()Ljava/lang/Class;", "members", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "equals", "", "other", "", "hashCode", "", "toString", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.internal.x */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/x.class */
public final class C18532x implements AbstractC18514g {

    /* renamed from: a */
    private final Class<?> f63622a;

    /* renamed from: b */
    private final String f63623b;

    public C18532x(Class<?> jClass, String moduleName) {
        C18524p.m3840d(jClass, "jClass");
        C18524p.m3840d(moduleName, "moduleName");
        this.f63622a = jClass;
        this.f63623b = moduleName;
    }

    @Override // kotlin.jvm.internal.AbstractC18514g
    /* renamed from: a */
    public final Class<?> mo1163a() {
        return this.f63622a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C18532x) && C18524p.m3850a(this.f63622a, ((C18532x) obj).f63622a);
    }

    public final int hashCode() {
        return this.f63622a.hashCode();
    }

    public final String toString() {
        return this.f63622a.toString() + " (Kotlin reflection is not available)";
    }
}
