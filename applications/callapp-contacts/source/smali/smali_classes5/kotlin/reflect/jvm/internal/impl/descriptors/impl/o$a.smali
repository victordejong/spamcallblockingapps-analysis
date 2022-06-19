.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;)V
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
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1038
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    .line 2032
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 1038
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    .line 2033
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1038
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
