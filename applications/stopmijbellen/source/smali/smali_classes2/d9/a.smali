.class public Ld9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld9/d;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 2

    .line 1
    new-instance v0, Ld9/b;

    const-string v1, "DBFlow Transaction Queue"

    invoke-direct {v0, v1}, Ld9/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ld9/a;->a:Ld9/d;

    .line 4
    new-instance v1, Lu8/b;

    invoke-direct {v1, p1}, Lu8/b;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    sget-object v1, Lcom/raizlabs/android/dbflow/config/f$b;->d:Lcom/raizlabs/android/dbflow/config/f$b;

    invoke-static {v1, p1}, Lcom/raizlabs/android/dbflow/config/f;->b(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
