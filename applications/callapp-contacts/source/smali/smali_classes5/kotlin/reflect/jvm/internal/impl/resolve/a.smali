.class public final Lkotlin/reflect/jvm/internal/impl/resolve/a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/l;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/l;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    const-string v0, "sealedClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v0, v1, :cond_0

    .line 1071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    .line 33
    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    .line 56
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v2, :cond_1

    .line 58
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 57
    invoke-static {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Z)V

    .line 62
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    const-string v2, "sealedClass.unsubstitutedInnerClassesScope"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Z)V

    .line 63
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/LinkedHashSet<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            "Z)V"
        }
    .end annotation

    .line 38
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/resolve/e/k;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->i:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/k$a;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/k;Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;I)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 39
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_0

    .line 41
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_0

    .line 46
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    const-string v1, "descriptor.unsubstitutedInnerClassesScope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
