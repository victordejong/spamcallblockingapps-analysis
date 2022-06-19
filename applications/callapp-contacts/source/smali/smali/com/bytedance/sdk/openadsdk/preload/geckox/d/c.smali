.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$b;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;>;",
        "Ljava/util/List<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

.field private h:Ljava/lang/String;

.field private i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 328
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "gecko-debug-tag"

    const-string v0, "onUpdating:"

    .line 180
    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/Exception;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "gecko-debug-tag"

    const-string p3, "onUpdateFailed:"

    .line 191
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/util/Iterator;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            "JJ)V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "rollback\uff1a"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    const/4 p3, 0x3

    const-string p4, "->"

    aput-object p4, v0, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, v0, p4

    const-string p3, "gecko-debug-tag"

    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;)V

    invoke-virtual {p3, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 227
    array-length p3, p2

    if-nez p3, :cond_0

    goto :goto_2

    .line 230
    :cond_0
    array-length p3, p2

    :goto_0
    if-ge v2, p3, :cond_3

    aget-object p4, p2, v2

    .line 233
    :try_start_0
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v0, p5

    if-lez v3, :cond_1

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--pending-delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 241
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;

    move-result-object p4

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;Ljava/io/File;)V

    invoke-virtual {p4, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 101
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 205
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getLocalVersion()J

    move-result-wide v4

    .line 206
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getVersion()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_1

    move-object v1, p0

    move-object v2, v0

    .line 211
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/Iterator;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;JJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gecko/server/v3/package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->f:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h()Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->g:I

    .line 263
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->a:Ljava/util/Map;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->e:Ljava/lang/String;

    .line 265
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 266
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->b:Ljava/lang/String;

    const-string v2, "gecko-debug-tag"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "response:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 267
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :try_start_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;)V

    .line 279
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$3;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 280
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->status:I

    if-nez v0, :cond_5

    .line 287
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->data:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->data:Ljava/lang/Object;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;->getUniversalStrategies()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    .line 295
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->data:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;->getPackages()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 296
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 303
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 309
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 310
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->setAccessKey(Ljava/lang/String;)V

    .line 311
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->setLocalVersion(J)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 297
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    .line 298
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_4
    const-string p1, "check update error\uff1aresponse.data==null"

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 291
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_5
    iget p1, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->status:I

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_6

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    .line 317
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 319
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "check update error\uff0cunknow status code\uff0cresponse.status\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->status:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 322
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    .line 282
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json parse failed\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 284
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " caused by:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 269
    :cond_7
    :try_start_2
    new-instance p1, Landroid/accounts/NetworkErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net work get failed, code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 273
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request failed\uff1aurl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caused by:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 118
    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "gecko-debug-tag"

    const-string v2, "releaseLock:"

    .line 120
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v1

    .line 340
    new-instance v11, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j()J

    move-result-wide v3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 341
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 342
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q()Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 345
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 346
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->l()Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setCommon(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;)V

    .line 350
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 351
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 352
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 354
    new-instance v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;-><init>()V

    .line 355
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iput-object v7, v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;->localVersion:Ljava/lang/Long;

    .line 356
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 358
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->a:Ljava/lang/String;

    .line 361
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setLocal(Ljava/util/Map;)V

    .line 364
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;-><init>()V

    .line 367
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->h:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;->groupName:Ljava/lang/String;

    .line 368
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->f:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 370
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 371
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;->targetChannels:Ljava/util/List;

    .line 372
    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;->targetChannels:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_2
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->b:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setDeployments(Ljava/util/Map;)V

    .line 381
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 382
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->c:Ljava/lang/String;

    .line 383
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setCustom(Ljava/util/Map;)V

    .line 385
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "gecko-debug-tag"

    if-eqz p1, :cond_6

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 133
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 137
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 142
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "can not create channel dir\uff1a"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can not create channel dir:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "update.lock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 158
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v6, "filterChannel:"

    .line 164
    invoke-static {v0, v6, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-direct {p0, v4, v6, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 168
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    .line 131
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "all channel update finished"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "start get server channel version[v3]... local channel version:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "gecko-debug-tag"

    .line 72
    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 75
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/Map;)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 84
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/List;)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    .line 90
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, p2

    :goto_1
    :try_start_2
    const-string v6, "filterChannel:"

    .line 87
    invoke-static {v4, v6, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/List;)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    .line 90
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/List;)V

    return-object p2

    :catchall_2
    move-exception p1

    .line 89
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/List;)V

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v3

    .line 90
    invoke-static {v4, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    throw p1
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 63
    aget-object v0, p1, v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    const/4 v0, 0x1

    .line 64
    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    const/4 v0, 0x2

    .line 65
    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->f:Ljava/util/Map;

    const/4 v0, 0x3

    .line 66
    aget-object v0, p1, v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    const/4 v0, 0x4

    .line 67
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
