.class final Lkotlin/reflect/jvm/internal/impl/resolve/e/l$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/l;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
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
        "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/e/l;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/l;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/l$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 1043
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/l$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/l;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/l;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/l$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/l;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/l;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
