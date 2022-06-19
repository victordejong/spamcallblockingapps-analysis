.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$g;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/c/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$g;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 122
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$g;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
