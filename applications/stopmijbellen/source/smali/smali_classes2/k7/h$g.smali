.class public Lk7/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Runnable;

.field public c:Lk7/w;

.field public d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lk7/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lk7/h$g;->a:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lk7/h$g;->a:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 6
    :try_start_1
    iget-object v1, p0, Lk7/h$g;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v1, p0, Lk7/h$g;->c:Lk7/w;

    invoke-virtual {v1, p0}, Lk7/w;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lk7/h$g;->d:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iput-object v0, p0, Lk7/h$g;->c:Lk7/w;

    .line 10
    iput-object v0, p0, Lk7/h$g;->d:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lk7/h$g;->b:Ljava/lang/Runnable;

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lk7/h$g;->c:Lk7/w;

    invoke-virtual {v2, p0}, Lk7/w;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lk7/h$g;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iput-object v0, p0, Lk7/h$g;->c:Lk7/w;

    .line 15
    iput-object v0, p0, Lk7/h$g;->d:Landroid/os/Handler;

    .line 16
    iput-object v0, p0, Lk7/h$g;->b:Ljava/lang/Runnable;

    throw v1

    :catchall_1
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
