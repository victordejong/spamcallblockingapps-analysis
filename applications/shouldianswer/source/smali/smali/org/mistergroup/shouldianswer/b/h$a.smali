.class public final Lorg/mistergroup/shouldianswer/b/h$a;
.super Ljava/lang/Object;
.source "RingingAlertPopup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 354
    :try_start_1
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RingingAlertPopup.show.begin number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 355
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->l()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "cantDisplayAlertDueDisabledOverlay"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    .line 357
    sget-object p1, Lorg/mistergroup/shouldianswer/b/c;->a:Lorg/mistergroup/shouldianswer/b/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/b/c;->a()V

    .line 358
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p2, "RingingAlertPopup.show.end with error - cant draw overlay"

    invoke-static {p1, p2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {}, Lorg/mistergroup/shouldianswer/b/h;->c()Lorg/mistergroup/shouldianswer/b/h;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lorg/mistergroup/shouldianswer/b/h;->c()Lorg/mistergroup/shouldianswer/b/h;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-static {v3}, Lorg/mistergroup/shouldianswer/b/h;->j(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/utils/t;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/t;->n()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-static {v3, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    monitor-exit p0

    return-void

    .line 363
    :cond_3
    :try_start_3
    invoke-static {}, Lorg/mistergroup/shouldianswer/b/h;->c()Lorg/mistergroup/shouldianswer/b/h;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/b/h;->b(Lorg/mistergroup/shouldianswer/b/h;)V

    .line 364
    :cond_4
    sget-object v2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/c/f;

    const/4 v5, 0x0

    new-instance v2, Lorg/mistergroup/shouldianswer/b/h$a$a;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/mistergroup/shouldianswer/b/h$a$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;ZLkotlin/c/c;)V

    move-object v6, v2

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 374
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p2, "RingingAlertPopup.show.end"

    invoke-static {p1, p2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 376
    :try_start_4
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Z
    .locals 1

    .line 343
    invoke-static {}, Lorg/mistergroup/shouldianswer/b/h;->b()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 347
    :try_start_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/b/h;->c()Lorg/mistergroup/shouldianswer/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {v0}, Lorg/mistergroup/shouldianswer/b/h;->b(Lorg/mistergroup/shouldianswer/b/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
