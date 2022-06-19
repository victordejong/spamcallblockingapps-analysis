.class final Lkotlin/reflect/jvm/internal/impl/descriptors/r$6;
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

    .line 119
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/p;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v0, :cond_0

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_0
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_2
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_0
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_3

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 4

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$6;->a(I)V

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$6;->a(I)V

    .line 126
    :cond_1
    const-class v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 127
    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p3, v3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez p3, :cond_2

    return v0

    :cond_2
    if-eqz v2, :cond_3

    .line 130
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v2, :cond_3

    .line 135
    invoke-static {p3, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 141
    :cond_3
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v2

    .line 143
    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v3, :cond_4

    return v0

    .line 146
    :cond_4
    invoke-static {p3, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v2, :cond_5

    const/4 v3, 0x2

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$6;->a(I)V

    :cond_5
    if-nez p3, :cond_6

    const/4 v3, 0x3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$6;->a(I)V

    .line 1160
    :cond_6
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->m:Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;

    if-eq p1, v3, :cond_d

    .line 1163
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-nez v3, :cond_8

    :cond_7
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 1165
    :cond_8
    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz v2, :cond_9

    goto :goto_1

    .line 1168
    :cond_9
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->l:Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;

    if-ne p1, v2, :cond_a

    goto :goto_1

    .line 1169
    :cond_a
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;

    move-result-object v2

    if-eq p1, v2, :cond_d

    if-nez p1, :cond_b

    goto :goto_3

    .line 1171
    :cond_b
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/f;

    if-eqz v2, :cond_c

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/f;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/f;->b()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    goto :goto_2

    :cond_c
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;->a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 1175
    :goto_2
    invoke-static {v2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1

    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    return v1

    .line 151
    :cond_e
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p3

    goto/16 :goto_0
.end method
