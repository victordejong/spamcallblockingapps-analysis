.class public Ld2/g2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/g2;->a(Z)V
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
    iput-object p1, p0, Ld2/g2$b;->b:Ld2/g2;

    iput-boolean p2, p0, Ld2/g2$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld2/u0;->a:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/z0;

    .line 5
    new-instance v3, Ld2/f4;

    invoke-direct {v3}, Ld2/f4;-><init>()V

    const-string v4, "from_window_focus"

    .line 6
    iget-boolean v5, p0, Ld2/g2$b;->a:Z

    invoke-static {v3, v4, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 7
    iget-object v4, p0, Ld2/g2$b;->b:Ld2/g2;

    .line 8
    iget-boolean v5, v4, Ld2/g2;->h:Z

    if-eqz v5, :cond_0

    .line 9
    iget-boolean v4, v4, Ld2/g2;->g:Z

    if-nez v4, :cond_0

    const-string v4, "app_in_foreground"

    const/4 v5, 0x0

    .line 10
    invoke-static {v3, v4, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 11
    iget-object v4, p0, Ld2/g2$b;->b:Ld2/g2;

    .line 12
    iput-boolean v5, v4, Ld2/g2;->h:Z

    .line 13
    :cond_0
    new-instance v4, Ld2/t0;

    const-string v5, "SessionInfo.on_pause"

    invoke-interface {v2}, Ld2/z0;->d()I

    move-result v2

    invoke-direct {v4, v5, v2, v3}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v4}, Ld2/t0;->b()V

    goto :goto_0

    .line 14
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Ld2/t;->g()V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
