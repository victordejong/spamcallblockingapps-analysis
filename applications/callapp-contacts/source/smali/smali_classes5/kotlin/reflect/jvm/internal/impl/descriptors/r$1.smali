.class final Lkotlin/reflect/jvm/internal/impl/descriptors/r$1;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/p;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_0

    const-string v4, "descriptor"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_0
    const-string v4, "from"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_1
    const-string v4, "what"

    aput-object v4, v0, v1

    :goto_0
    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object v1, v0, v2

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_2

    const-string p0, "hasContainingSourceFile"

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    const-string p0, "isVisible"

    aput-object p0, v0, v3

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 3

    const/4 p1, 0x1

    if-nez p2, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$1;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$1;->a(I)V

    .line 43
    :cond_1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$1;->a(I)V

    .line 1038
    :cond_2
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->n(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/au;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/au;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/au;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 44
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p1

    return p1

    .line 47
    :cond_4
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz v0, :cond_5

    .line 48
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p3, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz v0, :cond_5

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_5

    return p1

    :cond_5
    if-eqz p2, :cond_7

    .line 60
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p2

    .line 61
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_6

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v0, :cond_5

    :cond_7
    if-nez p2, :cond_8

    return v1

    :cond_8
    :goto_1
    if-eqz p3, :cond_c

    if-ne p2, p3, :cond_9

    return p1

    .line 74
    :cond_9
    instance-of v0, p3, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v0, :cond_b

    .line 75
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    move-object v2, p3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p2

    if-eqz p2, :cond_a

    return p1

    :cond_a
    return v1

    .line 79
    :cond_b
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p3

    goto :goto_1

    :cond_c
    return v1
.end method
