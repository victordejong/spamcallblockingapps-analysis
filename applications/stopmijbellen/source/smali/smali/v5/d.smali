.class public Lv5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv5/f;


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lv5/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lv5/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Lz4/p;

    new-instance v0, Lv5/b;

    invoke-direct {v0, p1}, Lv5/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lz4/p;-><init>(Lw5/b;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lv5/a;->a:Lv5/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lv5/d;->a:Lw5/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lv5/d;->a:Lw5/b;

    .line 3
    invoke-interface {v2}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/g;

    invoke-virtual {v2, p1, v0, v1}, Lv5/g;->a(Ljava/lang/String;J)Z

    move-result p1

    .line 4
    iget-object v2, p0, Lv5/d;->a:Lw5/b;

    invoke-interface {v2}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/g;

    .line 5
    monitor-enter v2

    :try_start_0
    const-string v3, "fire-global"

    .line 6
    invoke-virtual {v2, v3, v0, v1}, Lv5/g;->a(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method
