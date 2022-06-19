.class final Lkotlin/reflect/jvm/internal/f$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lkotlin/reflect/k;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\u0008\u0000\u0010\u0004 \u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/ArrayList;",
        "Lkotlin/reflect/KParameter;",
        "kotlin.jvm.PlatformType",
        "R",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/f;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/f;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 11

    .line 1041
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    .line 1042
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/f;->f()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1046
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/aj;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1048
    new-instance v5, Lkotlin/reflect/jvm/internal/q;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    sget-object v7, Lkotlin/reflect/k$a;->INSTANCE:Lkotlin/reflect/k$a;

    new-instance v8, Lkotlin/reflect/jvm/internal/f$b$1;

    invoke-direct {v8, v2}, Lkotlin/reflect/jvm/internal/f$b$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v3, v7, v8}, Lkotlin/reflect/jvm/internal/q;-><init>(Lkotlin/reflect/jvm/internal/f;ILkotlin/reflect/k$a;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1051
    :goto_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1053
    new-instance v6, Lkotlin/reflect/jvm/internal/q;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lkotlin/reflect/k$a;->EXTENSION_RECEIVER:Lkotlin/reflect/k$a;

    new-instance v10, Lkotlin/reflect/jvm/internal/f$b$2;

    invoke-direct {v10, v5}, Lkotlin/reflect/jvm/internal/f$b$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v2, v9, v10}, Lkotlin/reflect/jvm/internal/q;-><init>(Lkotlin/reflect/jvm/internal/f;ILkotlin/reflect/k$a;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1057
    :cond_2
    :goto_1
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getValueParameters()Ljava/util/List;

    move-result-object v5

    const-string v6, "descriptor.valueParameters"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_3

    .line 1058
    new-instance v6, Lkotlin/reflect/jvm/internal/q;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lkotlin/reflect/k$a;->VALUE:Lkotlin/reflect/k$a;

    new-instance v10, Lkotlin/reflect/jvm/internal/f$b$3;

    invoke-direct {v10, v0, v3}, Lkotlin/reflect/jvm/internal/f$b$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/b;I)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v2, v9, v10}, Lkotlin/reflect/jvm/internal/q;-><init>(Lkotlin/reflect/jvm/internal/f;ILkotlin/reflect/k$a;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_2

    .line 1064
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/f;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;

    if-eqz v0, :cond_4

    .line 1065
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 1221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    new-instance v2, Lkotlin/reflect/jvm/internal/f$b$a;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/f$b$a;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1068
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method
