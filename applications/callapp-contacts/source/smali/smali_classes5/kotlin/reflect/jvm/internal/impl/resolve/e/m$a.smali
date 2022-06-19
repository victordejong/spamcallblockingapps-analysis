.class final Lkotlin/reflect/jvm/internal/impl/resolve/e/m$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/m;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/e/m;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/m;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 4

    .line 1036
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/m;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/m;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/k;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/k$a;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/k;Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;I)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/m;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
