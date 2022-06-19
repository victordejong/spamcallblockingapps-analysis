.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/b/i;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final d:Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/j;

.field private final f:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final g:Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

.field private final h:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "fqName"

    const-string v5, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 49
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "type"

    const-string v5, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 59
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Z)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 42
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->d:Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    .line 1127
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 45
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$b;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->e:Lkotlin/reflect/jvm/internal/impl/f/j;

    .line 2127
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 49
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 3112
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4054
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 57
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->g:Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    .line 4127
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 59
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->h:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 118
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;->d()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->i:Z

    .line 120
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;->c()Z

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 9113
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 9129
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 10059
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 9114
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    const-string v1, "topLevel(fqName)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9115
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 10112
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 11048
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    .line 9115
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object p0

    .line 11049
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 9113
    invoke-static {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->d:Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/b;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/b;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    .line 68
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/o;

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/o;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/o;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;->b()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 5102
    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    invoke-direct {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    :cond_2
    :goto_0
    return-object v1

    .line 70
    :cond_3
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/e;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/b;->a()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    :cond_4
    const-string v2, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/e;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/e;->b()Ljava/util/List;

    move-result-object p1

    .line 6082
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->f()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    const-string v3, "type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 6085
    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_6

    .line 6087
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 7112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 8059
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 6087
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    .line 6088
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string v2, "Unknown array element type"

    .line 6089
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 6087
    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    :cond_6
    const-string v0, "DescriptorResolverUtils.getAnnotationParameterByName(argumentName, annotationClass!!)?.type\n            // Try to load annotation arguments even if the annotation class is not found\n                ?: c.components.module.builtIns.getArrayType(\n                    Variance.INVARIANT,\n                    ErrorUtils.createErrorType(\"Unknown array element type\")\n                )"

    .line 6085
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6092
    check-cast p1, Ljava/lang/Iterable;

    .line 6123
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 6124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6125
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    .line 6093
    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/b;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/q;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/q;-><init>()V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    :cond_7
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6126
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 6096
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 71
    :cond_9
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/c;

    if-eqz v0, :cond_a

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/c;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/c;->b()Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    move-result-object v2

    .line 8078
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    invoke-direct {p1, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 72
    :cond_a
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/h;

    if-eqz v0, :cond_b

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/h;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/h;->b()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object p1

    .line 8106
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 8124
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 8106
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v2, v3, v1, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;Lkotlin/reflect/jvm/internal/impl/load/java/d/b;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/b;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 0

    .line 40
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    return-object p0
.end method

.method private f()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3

    .line 49
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 40
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->f()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 3

    .line 45
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->e:Lkotlin/reflect/jvm/internal/impl/f/j;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/j;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->h:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final bridge synthetic d()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 1

    .line 9057
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->g:Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    .line 40
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->i:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/c;->g:Lkotlin/reflect/jvm/internal/impl/e/c;

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/e/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
