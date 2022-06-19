.class final Landroidx/work/impl/background/systemalarm/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/work/impl/background/systemalarm/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/e;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e$c;->a:Landroidx/work/impl/background/systemalarm/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 335
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$c;->a:Landroidx/work/impl/background/systemalarm/e;

    .line 1199
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 1200
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->c()V

    .line 1202
    iget-object v1, v0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    monitor-enter v1

    .line 1219
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1220
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "Removing command %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1221
    iget-object v2, v0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v3, v0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1224
    iput-object v2, v0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    goto :goto_0

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Dequeue-d command is not the first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/utils/b/a;

    invoke-interface {v2}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/g;

    move-result-object v2

    .line 1227
    iget-object v3, v0, Landroidx/work/impl/background/systemalarm/e;->g:Landroidx/work/impl/background/systemalarm/b;

    invoke-virtual {v3}, Landroidx/work/impl/background/systemalarm/b;->a()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    .line 1228
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1229
    invoke-virtual {v2}, Landroidx/work/impl/utils/g;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1233
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 1234
    iget-object v2, v0, Landroidx/work/impl/background/systemalarm/e;->j:Landroidx/work/impl/background/systemalarm/e$b;

    if-eqz v2, :cond_3

    .line 1235
    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->j:Landroidx/work/impl/background/systemalarm/e$b;

    invoke-interface {v0}, Landroidx/work/impl/background/systemalarm/e$b;->a()V

    goto :goto_1

    .line 1237
    :cond_2
    iget-object v2, v0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1239
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->b()V

    .line 1241
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
