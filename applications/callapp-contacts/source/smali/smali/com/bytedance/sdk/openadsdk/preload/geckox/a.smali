.class public final Lcom/bytedance/sdk/openadsdk/preload/geckox/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

.field private e:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->c:Ljava/util/Queue;

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->e:Ljava/io/File;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/c;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a;
    .locals 1

    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;->a(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "access key empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "config == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->o()Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->o()Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->o()Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;->a(Ljava/lang/String;I)V

    return-void

    .line 432
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->c:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    .line 433
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->d()Ljava/util/List;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_6

    .line 296
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 302
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_2

    return v2

    :cond_5
    return v4

    :cond_6
    :goto_1
    return v2
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Ljava/io/File;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->e:Ljava/io/File;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a/a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a/a;-><init>(Ljava/util/List;)V

    .line 425
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    .line 271
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_1

    return v4

    :cond_4
    :goto_1
    return v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
            "**>;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b/a;",
            ")V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            ")V"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target keys not in deployments keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deployments keys not in local keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "groupType == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "default"

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-void
.end method
