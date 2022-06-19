.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/f/n;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;Lkotlin/reflect/jvm/internal/impl/f/n;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 10

    .line 1027
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;

    .line 1028
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->a(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->b(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1029
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->b(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    .line 1030
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v7, 0x0

    move-object v0, v9

    .line 1027
    invoke-direct/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ZLkotlin/reflect/jvm/internal/impl/f/n;)V

    .line 1031
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1032
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;

    move-object v2, v9

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 1036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    const/4 v2, 0x0

    .line 1032
    invoke-virtual {v9, v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;->initialize(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V

    return-object v9
.end method
