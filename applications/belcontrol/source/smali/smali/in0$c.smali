.class public Lin0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Lin0$c;

.field public c:Lin0$c;

.field public d:Z

.field public final synthetic e:Lin0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lin0;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lin0$c;->e:Lin0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lin0$c;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lin0$c;->e:Lin0;

    invoke-static {v0}, Lin0;->b(Lin0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lin0$c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lin0$c;->e:Lin0;

    invoke-static {v1}, Lin0;->c(Lin0;)Lin0$c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lin0$c;->e(Lin0$c;)Lin0$c;

    move-result-object v2

    invoke-static {v1, v2}, Lin0;->d(Lin0;Lin0$c;)Lin0$c;

    iget-object v1, p0, Lin0$c;->e:Lin0;

    invoke-static {v1}, Lin0;->c(Lin0;)Lin0$c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lin0$c;->b(Lin0$c;Z)Lin0$c;

    move-result-object v2

    invoke-static {v1, v2}, Lin0;->d(Lin0;Lin0$c;)Lin0$c;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lin0$c;Z)Lin0$c;
    .locals 1

    if-nez p1, :cond_0

    iput-object p0, p0, Lin0$c;->c:Lin0$c;

    iput-object p0, p0, Lin0$c;->b:Lin0$c;

    move-object p1, p0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lin0$c;->b:Lin0$c;

    iget-object v0, p1, Lin0$c;->c:Lin0$c;

    iput-object v0, p0, Lin0$c;->c:Lin0$c;

    iput-object p0, v0, Lin0$c;->b:Lin0$c;

    iput-object p0, p1, Lin0$c;->c:Lin0$c;

    :goto_0
    if-eqz p2, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public c()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lin0$c;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lin0$c;->e:Lin0;

    invoke-static {v0}, Lin0;->b(Lin0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lin0$c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lin0$c;->e:Lin0;

    invoke-static {v1}, Lin0;->c(Lin0;)Lin0$c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lin0$c;->e(Lin0$c;)Lin0$c;

    move-result-object v2

    invoke-static {v1, v2}, Lin0;->d(Lin0;Lin0$c;)Lin0$c;

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lin0$c;->d:Z

    return v0
.end method

.method public e(Lin0$c;)Lin0$c;
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Lin0$c;->b:Lin0$c;

    if-ne p1, p0, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lin0$c;->b:Lin0$c;

    iget-object v2, p0, Lin0$c;->c:Lin0$c;

    iput-object v2, v1, Lin0$c;->c:Lin0$c;

    iget-object v2, p0, Lin0$c;->c:Lin0$c;

    iput-object v1, v2, Lin0$c;->b:Lin0$c;

    iput-object v0, p0, Lin0$c;->c:Lin0$c;

    iput-object v0, p0, Lin0$c;->b:Lin0$c;

    return-object p1
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lin0$c;->d:Z

    return-void
.end method
