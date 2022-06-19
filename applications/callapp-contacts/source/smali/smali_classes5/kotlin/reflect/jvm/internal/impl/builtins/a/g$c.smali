.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/f/n;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;Lkotlin/reflect/jvm/internal/impl/f/n;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1061
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->c(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v0

    .line 2058
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 1062
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e$a;

    .line 3054
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->b()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    .line 1063
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->c(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v4

    .line 3058
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 1063
    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    .line 1061
    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method
