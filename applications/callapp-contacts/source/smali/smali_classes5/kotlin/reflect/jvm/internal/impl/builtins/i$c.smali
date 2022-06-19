.class final Lkotlin/reflect/jvm/internal/impl/builtins/i$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1027
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/i$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->b()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    return-object v0
.end method
