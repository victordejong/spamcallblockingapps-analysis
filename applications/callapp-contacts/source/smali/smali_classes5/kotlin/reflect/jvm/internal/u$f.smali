.class final Lkotlin/reflect/jvm/internal/u$f;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/u;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Field;",
        "V",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/u;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/u;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/u$f;->a:Lkotlin/reflect/jvm/internal/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method

.method private a()Ljava/lang/reflect/Field;
    .locals 8

    .line 52
    sget-object v0, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/u$f;->a:Lkotlin/reflect/jvm/internal/u;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/e;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/e$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 55
    check-cast v0, Lkotlin/reflect/jvm/internal/e$c;

    .line 1101
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/e$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 56
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    .line 1102
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/e$c;->b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 1104
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/e$c;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 1105
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/e$c;->e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 56
    invoke-static {v3, v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a/h;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;

    move-result-object v3

    if-eqz v3, :cond_b

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 57
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a(I)V

    .line 2019
    :cond_0
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_7

    .line 2021
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a(I)V

    .line 2027
    :cond_1
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->m(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v5, :cond_2

    const/4 v6, 0x2

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a(I)V

    .line 2033
    :cond_2
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/b;

    invoke-static {v6, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->a(Lkotlin/reflect/jvm/internal/impl/builtins/b;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    :goto_1
    const/4 v4, 0x1

    goto :goto_3

    .line 2023
    :cond_4
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_5

    const/4 v5, 0x3

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a(I)V

    .line 2038
    :cond_5
    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v5, :cond_6

    .line 2039
    move-object v5, v1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2040
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/u;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/t;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    .line 2042
    :cond_6
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/t;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-nez v4, :cond_a

    .line 2102
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/e$c;->b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 58
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 61
    :cond_8
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 63
    :cond_9
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u$f;->a:Lkotlin/reflect/jvm/internal/u;

    .line 4028
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 63
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 60
    :cond_a
    :goto_4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u$f;->a:Lkotlin/reflect/jvm/internal/u;

    .line 3028
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 60
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_b

    .line 5023
    :try_start_0
    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    return-object v2

    .line 73
    :cond_c
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/e$a;

    if-eqz v1, :cond_d

    check-cast v0, Lkotlin/reflect/jvm/internal/e$a;

    .line 5141
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/e$a;->a:Ljava/lang/reflect/Field;

    return-object v0

    .line 74
    :cond_d
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/e$b;

    if-eqz v1, :cond_e

    return-object v2

    .line 75
    :cond_e
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/e$d;

    if-eqz v0, :cond_f

    return-object v2

    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$f;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
