.class public final Lcom/criteo/publisher/f/ad;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/f/z;

.field private final b:Lcom/criteo/publisher/j0/g;

.field private final c:Lcom/criteo/publisher/m0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/z;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/f/ad;->a:Lcom/criteo/publisher/f/z;

    iput-object p2, p0, Lcom/criteo/publisher/f/ad;->b:Lcom/criteo/publisher/j0/g;

    iput-object p3, p0, Lcom/criteo/publisher/f/ad;->c:Lcom/criteo/publisher/m0/g;

    return-void
.end method

.method private final a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/criteo/publisher/f/s;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/f/s;

    .line 67
    iget-object v1, p0, Lcom/criteo/publisher/f/ad;->a:Lcom/criteo/publisher/f/z;

    invoke-interface {v1, v0}, Lcom/criteo/publisher/f/p;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 30
    iget-object v0, p0, Lcom/criteo/publisher/f/ad;->a:Lcom/criteo/publisher/f/z;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lcom/criteo/publisher/f/p;->a(I)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {v0}, Lkotlin/a/n;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1050
    :try_start_0
    invoke-static {}, Lcom/criteo/publisher/m0/g;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "buildConfigWrapper.sdkVersion"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1075
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1076
    move-object v5, v4

    check-cast v5, Lcom/criteo/publisher/f/s;

    .line 1053
    invoke-virtual {v5}, Lcom/criteo/publisher/f/s;->i()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/criteo/publisher/i/a;->b:Lcom/criteo/publisher/i/a;

    invoke-virtual {v5}, Lcom/criteo/publisher/i/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1078
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1077
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 1085
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1088
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lkotlin/a/ai;->a(I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1089
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1090
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1091
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 1058
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 1060
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "it.key"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 1057
    invoke-static {v6, v2, v5}, Lcom/criteo/publisher/f/y;->a(Ljava/util/Collection;Ljava/lang/String;I)Lcom/criteo/publisher/f/y;

    move-result-object v5

    .line 1061
    check-cast v4, Ljava/util/Map$Entry;

    .line 1089
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    iget-object v3, p0, Lcom/criteo/publisher/f/ad;->b:Lcom/criteo/publisher/j0/g;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/criteo/publisher/f/y;

    invoke-virtual {v3, v4}, Lcom/criteo/publisher/j0/g;->a(Lcom/criteo/publisher/f/y;)V

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 43
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 44
    invoke-direct {p0, v1}, Lcom/criteo/publisher/f/ad;->a(Ljava/util/Collection;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 44
    invoke-direct {p0, v1}, Lcom/criteo/publisher/f/ad;->a(Ljava/util/Collection;)V

    :cond_7
    throw v0
.end method
