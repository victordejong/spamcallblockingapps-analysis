.class public Ld2/g2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/g2;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ld2/g2;


# direct methods
.method public constructor <init>(Ld2/g2;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/g2$c;->b:Ld2/g2;

    iput-boolean p2, p0, Ld2/g2$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v1

    .line 3
    iget-object v1, v1, Ld2/u0;->a:Ljava/util/ArrayList;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/z0;

    .line 6
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    const-string v5, "from_window_focus"

    .line 7
    iget-boolean v6, p0, Ld2/g2$c;->a:Z

    invoke-static {v4, v5, v6}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 8
    iget-object v5, p0, Ld2/g2$c;->b:Ld2/g2;

    .line 9
    iget-boolean v6, v5, Ld2/g2;->h:Z

    if-eqz v6, :cond_0

    .line 10
    iget-boolean v5, v5, Ld2/g2;->g:Z

    if-eqz v5, :cond_0

    const-string v5, "app_in_foreground"

    const/4 v6, 0x1

    .line 11
    invoke-static {v4, v5, v6}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 12
    iget-object v5, p0, Ld2/g2$c;->b:Ld2/g2;

    const/4 v6, 0x0

    .line 13
    iput-boolean v6, v5, Ld2/g2;->h:Z

    .line 14
    :cond_0
    new-instance v5, Ld2/t0;

    const-string v6, "SessionInfo.on_resume"

    invoke-interface {v3}, Ld2/z0;->d()I

    move-result v3

    invoke-direct {v5, v6, v3, v4}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v5}, Ld2/t0;->b()V

    goto :goto_0

    .line 15
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/h0;->f()V

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
