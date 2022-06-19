.class public Lev$j;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->F()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lev$h0<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic m:Lev;


# direct methods
.method public constructor <init>(Lev;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lev$j;->m:Lev;

    invoke-direct {p0, p2}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public t()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lev$j;->m:Lev;

    iget-object v1, v1, Lev;->m:Ldv;

    invoke-virtual {v1}, Ldv;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lev$j;->m:Lev;

    iget-object v1, v1, Lev;->c:Lfv;

    invoke-virtual {v1}, Lfv;->v()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lev$j;->m:Lev;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lev;->x0(F)Lxv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v1

    iget-object v2, p0, Lev$j;->m:Lev;

    iget-object v2, v2, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lev$j;->m:Lev;

    iget-object v3, v3, Lev;->c:Lfv;

    invoke-virtual {v3}, Lfv;->H()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lev$j;->m:Lev;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1, v3}, Lev;->P(ILxv;Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v1, p0, Lev$j;->m:Lev;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lev;->T(I)Lxv;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
