.class final Lkotlin/reflect/jvm/internal/w$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/w;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V
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
        "Lkotlin/reflect/q;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/reflect/KTypeProjection;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/w;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/w;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/w$a;->a:Lkotlin/reflect/jvm/internal/w;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/w$a;->b:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 10

    .line 1078
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/w$a;->a:Lkotlin/reflect/jvm/internal/w;

    .line 2040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/w;->b:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1078
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1079
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1081
    :cond_0
    sget-object v1, Lkotlin/l;->PUBLICATION:Lkotlin/l;

    new-instance v2, Lkotlin/reflect/jvm/internal/w$a$b;

    invoke-direct {v2, p0}, Lkotlin/reflect/jvm/internal/w$a$b;-><init>(Lkotlin/reflect/jvm/internal/w$a;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/h;->a(Lkotlin/l;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 1083
    check-cast v0, Ljava/lang/Iterable;

    .line 1139
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    .line 1141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    .line 1142
    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_1
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 1084
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1085
    sget-object v3, Lkotlin/reflect/q;->d:Lkotlin/reflect/q$a;

    .line 3062
    sget-object v3, Lkotlin/reflect/q;->c:Lkotlin/reflect/q;

    goto :goto_2

    .line 1087
    :cond_2
    new-instance v6, Lkotlin/reflect/jvm/internal/w;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    const-string v8, "typeProjection.type"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/w$a;->b:Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance v8, Lkotlin/reflect/jvm/internal/w$a$a;

    invoke-direct {v8, v3, p0, v1, v9}, Lkotlin/reflect/jvm/internal/w$a$a;-><init>(ILkotlin/reflect/jvm/internal/w$a;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function0;

    :goto_1
    invoke-direct {v6, v7, v9}, Lkotlin/reflect/jvm/internal/w;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    .line 1107
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/x;->a:[I

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const-string v7, "type"

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1110
    sget-object v3, Lkotlin/reflect/q;->d:Lkotlin/reflect/q$a;

    check-cast v6, Lkotlin/reflect/KType;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3087
    new-instance v3, Lkotlin/reflect/q;

    sget-object v4, Lkotlin/reflect/s;->OUT:Lkotlin/reflect/s;

    invoke-direct {v3, v4, v6}, Lkotlin/reflect/q;-><init>(Lkotlin/reflect/s;Lkotlin/reflect/KType;)V

    goto :goto_2

    .line 1110
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1109
    :cond_5
    sget-object v3, Lkotlin/reflect/q;->d:Lkotlin/reflect/q$a;

    check-cast v6, Lkotlin/reflect/KType;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3079
    new-instance v3, Lkotlin/reflect/q;

    sget-object v4, Lkotlin/reflect/s;->IN:Lkotlin/reflect/s;

    invoke-direct {v3, v4, v6}, Lkotlin/reflect/q;-><init>(Lkotlin/reflect/s;Lkotlin/reflect/KType;)V

    goto :goto_2

    .line 1108
    :cond_6
    sget-object v3, Lkotlin/reflect/q;->d:Lkotlin/reflect/q$a;

    check-cast v6, Lkotlin/reflect/KType;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3071
    new-instance v3, Lkotlin/reflect/q;

    sget-object v4, Lkotlin/reflect/s;->INVARIANT:Lkotlin/reflect/s;

    invoke-direct {v3, v4, v6}, Lkotlin/reflect/q;-><init>(Lkotlin/reflect/s;Lkotlin/reflect/KType;)V

    .line 1084
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto/16 :goto_0

    .line 1143
    :cond_7
    check-cast v2, Ljava/util/List;

    return-object v2
.end method
