.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d$1;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1079
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d$1;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$d$1;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    .line 1082
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->b(Lkotlin/reflect/jvm/internal/impl/builtins/a/f;)V

    .line 1081
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    return-object v0

    .line 1080
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
