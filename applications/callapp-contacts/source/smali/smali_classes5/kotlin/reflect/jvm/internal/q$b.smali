.class final Lkotlin/reflect/jvm/internal/q$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/q;->b()Lkotlin/reflect/KType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Type;",
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/q;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/q;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1044
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/q;->a(Lkotlin/reflect/jvm/internal/q;)Lkotlin/reflect/jvm/internal/impl/descriptors/ak;

    move-result-object v0

    .line 1046
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    .line 2025
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/q;->b:Lkotlin/reflect/jvm/internal/f;

    .line 1046
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    .line 3025
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/q;->b:Lkotlin/reflect/jvm/internal/f;

    .line 1046
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-ne v1, v2, :cond_1

    .line 1053
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    .line 4025
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/q;->b:Lkotlin/reflect/jvm/internal/f;

    .line 1053
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1054
    check-cast v1, Ljava/lang/reflect/Type;

    return-object v1

    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/ab;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cannot determine receiver Java type of inherited declaration: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1056
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    .line 5025
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/q;->b:Lkotlin/reflect/jvm/internal/f;

    .line 1056
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/f;->c()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/a/d;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/q$b;->a:Lkotlin/reflect/jvm/internal/q;

    .line 5026
    iget v1, v1, Lkotlin/reflect/jvm/internal/q;->c:I

    .line 1056
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method
