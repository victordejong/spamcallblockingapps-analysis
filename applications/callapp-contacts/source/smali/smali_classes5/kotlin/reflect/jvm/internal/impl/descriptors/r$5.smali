.class final Lkotlin/reflect/jvm/internal/impl/descriptors/r$5;
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

    .line 100
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/p;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$5;->a(I)V

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$5;->a(I)V

    .line 103
    :cond_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-virtual {v2, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 105
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->l:Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;

    if-ne p1, p3, :cond_2

    return v1

    .line 106
    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;

    move-result-object p3

    if-ne p1, p3, :cond_3

    return v0

    .line 108
    :cond_3
    const-class p3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 110
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/g;

    if-eqz p3, :cond_4

    .line 111
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/g;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/g;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method
