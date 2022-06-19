.class public final Lkotlin/reflect/jvm/internal/impl/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/b$e;,
        Lkotlin/reflect/jvm/internal/impl/utils/b$b;,
        Lkotlin/reflect/jvm/internal/impl/utils/b$g;,
        Lkotlin/reflect/jvm/internal/impl/utils/b$a;,
        Lkotlin/reflect/jvm/internal/impl/utils/b$f;,
        Lkotlin/reflect/jvm/internal/impl/utils/b$c;,
        Lkotlin/reflect/jvm/internal/impl/utils/b$d;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
            "TN;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TN;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 47
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/b$1;

    invoke-direct {v1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/utils/b$1;-><init>(Lkotlin/jvm/functions/Function1;[Z)V

    invoke-static {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$d<",
            "TN;TR;>;)TR;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    .line 37
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/b$g;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b$g;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$f;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$f;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$f<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$d<",
            "TN;TR;>;)TR;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    .line 26
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-static {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$f;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/utils/b$d;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v2, "nodes"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "current"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_2
    const-string v2, "node"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_3
    const-string v2, "predicate"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_4
    const-string v2, "handler"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_5
    const-string v2, "visited"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_6
    const-string v2, "neighbors"

    aput-object v2, v0, v1

    :goto_0
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/utils/DFS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const-string p0, "dfs"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_7
    const-string p0, "doDfs"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_8
    const-string p0, "topologicalOrder"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_9
    const-string p0, "dfsFromNode"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_a
    const-string p0, "ifAny"

    aput-object p0, v0, v1

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$f;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$f<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/b$d<",
            "TN;*>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    :cond_2
    if-nez p3, :cond_3

    const/16 v0, 0x19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(I)V

    .line 95
    :cond_3
    invoke-interface {p2, p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 96
    :cond_4
    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$d;->beforeChildren(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 98
    :cond_5
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$c;->getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    invoke-static {v1, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$f;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)V

    goto :goto_0

    .line 101
    :cond_6
    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$d;->afterChildren(Ljava/lang/Object;)V

    return-void
.end method
