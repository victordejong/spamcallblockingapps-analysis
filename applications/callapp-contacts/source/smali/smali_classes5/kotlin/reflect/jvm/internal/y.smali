.class public final Lkotlin/reflect/jvm/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/j;
.implements Lkotlin/reflect/p;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u000eH\u0016J\u0010\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030#*\u00020$H\u0002J\u0010\u0010%\u001a\u0006\u0012\u0002\u0008\u00030&*\u00020\'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R!\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006("
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;",
        "Lkotlin/reflect/KTypeParameter;",
        "Lkotlin/reflect/jvm/internal/KClassifierImpl;",
        "container",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
        "(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;)V",
        "getDescriptor",
        "()Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;",
        "isReified",
        "",
        "()Z",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "upperBounds",
        "",
        "Lkotlin/reflect/KType;",
        "getUpperBounds",
        "()Ljava/util/List;",
        "upperBounds$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "variance",
        "Lkotlin/reflect/KVariance;",
        "getVariance",
        "()Lkotlin/reflect/KVariance;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "getContainerClass",
        "Ljava/lang/Class;",
        "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;",
        "toKClassImpl",
        "Lkotlin/reflect/jvm/internal/KClassImpl;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

.field private final c:Lkotlin/reflect/jvm/internal/ad$a;

.field private final d:Lkotlin/reflect/jvm/internal/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/y;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/y;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/aa;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/y;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 39
    new-instance p2, Lkotlin/reflect/jvm/internal/y$a;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/y$a;-><init>(Lkotlin/reflect/jvm/internal/y;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/y;->c:Lkotlin/reflect/jvm/internal/ad$a;

    if-nez p1, :cond_9

    .line 51
    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/y;

    .line 4034
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/y;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 52
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    const-string p2, "descriptor.containingDeclaration"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p2, :cond_0

    .line 54
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/y;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/h;

    move-result-object p1

    goto :goto_4

    .line 56
    :cond_0
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz p2, :cond_8

    .line 57
    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p2

    const-string v0, "declaration.containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_1

    .line 59
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/y;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/h;

    move-result-object p2

    goto :goto_3

    .line 62
    :cond_1
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    if-eqz p2, :cond_7

    .line 4078
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;->i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-result-object v1

    .line 4091
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    if-nez v2, :cond_3

    move-object v1, v0

    :cond_3
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    if-eqz v1, :cond_4

    .line 5030
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 4091
    :goto_1
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    if-eqz v0, :cond_6

    .line 5048
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 64
    invoke-static {v0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lkotlin/reflect/jvm/internal/h;

    .line 67
    :goto_3
    new-instance v0, Lkotlin/reflect/jvm/internal/a;

    check-cast p2, Lkotlin/reflect/jvm/internal/k;

    invoke-direct {v0, p2}, Lkotlin/reflect/jvm/internal/a;-><init>(Lkotlin/reflect/jvm/internal/k;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    const-string p2, "when (val declaration = \u2026 $declaration\")\n        }"

    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/aa;

    goto :goto_5

    .line 4079
    :cond_6
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Container of deserialized member is not resolved: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 63
    :cond_7
    new-instance p2, Lkotlin/reflect/jvm/internal/ab;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Non-class callable descriptor must be deserialized: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 69
    :cond_8
    new-instance p2, Lkotlin/reflect/jvm/internal/ab;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown type parameter container: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 51
    :cond_9
    :goto_5
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/y;->d:Lkotlin/reflect/jvm/internal/aa;

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Lkotlin/reflect/jvm/internal/h<",
            "*>;"
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/h;

    if-eqz v0, :cond_1

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type parameter container is not resolved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/y;->c:Lkotlin/reflect/jvm/internal/ad$a;

    .line 2031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1034
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/y;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 37
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lkotlin/reflect/s;
    .locals 2

    .line 2034
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/y;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 42
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/z;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    sget-object v0, Lkotlin/reflect/s;->OUT:Lkotlin/reflect/s;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 44
    :cond_1
    sget-object v0, Lkotlin/reflect/s;->IN:Lkotlin/reflect/s;

    return-object v0

    .line 43
    :cond_2
    sget-object v0, Lkotlin/reflect/s;->INVARIANT:Lkotlin/reflect/s;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 82
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/y;->d:Lkotlin/reflect/jvm/internal/aa;

    check-cast p1, Lkotlin/reflect/jvm/internal/y;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/y;->d:Lkotlin/reflect/jvm/internal/aa;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/y;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic f()Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    .line 3034
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/y;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 32
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/y;->d:Lkotlin/reflect/jvm/internal/aa;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lkotlin/jvm/internal/ai;->a:Lkotlin/jvm/internal/ai$a;

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/p;

    invoke-static {v0}, Lkotlin/jvm/internal/ai$a;->a(Lkotlin/reflect/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
