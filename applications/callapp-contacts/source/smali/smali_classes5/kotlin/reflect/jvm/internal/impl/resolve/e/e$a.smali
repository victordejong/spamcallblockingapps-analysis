.class final Lkotlin/reflect/jvm/internal/impl/resolve/e/e$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/e/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1039
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->a()Ljava/util/List;

    move-result-object v0

    .line 1040
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/e$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/e;

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/e;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/e;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
