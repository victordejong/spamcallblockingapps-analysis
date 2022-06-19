.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/f;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/f/n;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;Lkotlin/reflect/jvm/internal/impl/f/n;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1076
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    .line 1077
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    move-result-object v1

    const-string v2, "builtInsModule"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1078
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d$1;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d$1;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 1076
    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
