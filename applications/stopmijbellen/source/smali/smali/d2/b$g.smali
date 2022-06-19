.class public Ld2/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/i3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b;->l(Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/support/v4/media/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ld2/i3$c;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/a;Ljava/lang/String;Ld2/i3$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b$g;->b:Landroid/support/v4/media/a;

    iput-object p2, p0, Ld2/b$g;->c:Ljava/lang/String;

    iput-object p3, p0, Ld2/b$g;->d:Ld2/i3$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/b$g;->a:Z

    return v0
.end method

.method public run()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld2/b$g;->a:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld2/b$g;->a:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Ld2/b$g;->b:Landroid/support/v4/media/a;

    iget-object v2, p0, Ld2/b$g;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Ld2/b;->c(Landroid/support/v4/media/a;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Ld2/b$g;->d:Ld2/i3$c;

    invoke-virtual {v1}, Ld2/i3$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RequestNotFilled called due to a native timeout. "

    .line 8
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Timeout set to: "

    .line 9
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld2/b$g;->d:Ld2/i3$c;

    .line 10
    iget-wide v3, v3, Ld2/i3$c;->a:J

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execution took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Ld2/b$g;->d:Ld2/i3$c;

    .line 15
    iget-wide v6, v5, Ld2/i3$c;->b:J

    iget-wide v8, v5, Ld2/i3$c;->a:J

    sub-long/2addr v6, v8

    sub-long/2addr v3, v6

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Interstitial request not yet started."

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 20
    invoke-static {v2, v2, v1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
