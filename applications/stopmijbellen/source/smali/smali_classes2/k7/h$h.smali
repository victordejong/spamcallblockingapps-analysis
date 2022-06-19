.class public Lk7/h$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Lk7/h;

.field public b:Ljava/lang/Runnable;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>(Lk7/h;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk7/h$h;->a:Lk7/h;

    .line 3
    iput-object p2, p0, Lk7/h$h;->b:Ljava/lang/Runnable;

    .line 4
    iput-wide p3, p0, Lk7/h$h;->c:J

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/h$h;->a:Lk7/h;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk7/h$h;->a:Lk7/h;

    iget-object v1, v1, Lk7/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lk7/h$h;->d:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk7/h$h;->d:Z

    return v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/h$h;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
