.class Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a()Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_1

    .line 326
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/d/g;

    .line 329
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/d/g;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v3

    .line 331
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/h$b;->a()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v4

    .line 332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/d/h$a;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/c;-><init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 334
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 336
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 365
    new-instance p2, Lcom/bytedance/sdk/openadsdk/d/o;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/d/o;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/h$b;->a()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/h$b;->b()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v0

    .line 369
    new-instance p2, Lcom/bytedance/sdk/openadsdk/d/m;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/d/m;-><init>(Landroid/content/Context;)V

    .line 371
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/d/h$a;

    move-result-object v1

    .line 372
    new-instance v9, Lcom/bytedance/sdk/openadsdk/d/c;

    const/4 v10, 0x0

    new-instance v11, Lcom/bytedance/sdk/openadsdk/d/p;

    const/4 v6, 0x0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/d/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;)V

    move-object v2, v9

    move-object v3, p2

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/d/c;-><init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;Lcom/bytedance/sdk/openadsdk/d/h;)V

    return-object v9
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_1

    .line 341
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 342
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v1, :cond_0

    const-string v1, "ttad_bk_batch_stats"

    const-string v2, "AdStatsEventBatchThread"

    const/4 v3, 0x0

    .line 343
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 345
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 347
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    return-object v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_1

    .line 352
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 353
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v1, :cond_0

    const-string v1, "ttad_bk_stats"

    const-string v2, "AdStatsEventThread"

    const/4 v3, 0x1

    .line 354
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 356
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 358
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    return-object v0
.end method

.method private static d()Lcom/bytedance/sdk/openadsdk/d/h$a;
    .locals 1

    .line 378
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;-><init>()V

    return-object v0
.end method
