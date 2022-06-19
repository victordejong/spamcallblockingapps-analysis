.class public Lp9/x$a;
.super Laa/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/x;-><init>(Lp9/v;Lp9/y;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lp9/x;


# direct methods
.method public constructor <init>(Lp9/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp9/x$a;->k:Lp9/x;

    invoke-direct {p0}, Laa/c;-><init>()V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/x$a;->k:Lp9/x;

    .line 2
    iget-object v0, v0, Lp9/x;->b:Lt9/i;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lt9/i;->d:Z

    .line 4
    iget-object v0, v0, Lt9/i;->b:Ls9/e;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, v0, Ls9/e;->d:Lp9/i;

    monitor-enter v2

    .line 6
    :try_start_0
    iput-boolean v1, v0, Ls9/e;->m:Z

    .line 7
    iget-object v1, v0, Ls9/e;->n:Lt9/c;

    .line 8
    iget-object v0, v0, Ls9/e;->j:Ls9/c;

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1}, Lt9/c;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, v0, Ls9/c;->d:Ljava/net/Socket;

    invoke-static {v0}, Lq9/c;->e(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
