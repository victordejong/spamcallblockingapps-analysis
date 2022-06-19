.class public Lev$g;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->n0(JI)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field public final synthetic m:I

.field public final synthetic n:J

.field public final synthetic o:Lev;


# direct methods
.method public constructor <init>(Lev;Ljava/util/concurrent/Executor;ZIJ)V
    .locals 0

    iput-object p1, p0, Lev$g;->o:Lev;

    iput p4, p0, Lev$g;->m:I

    iput-wide p5, p0, Lev$g;->n:J

    invoke-direct {p0, p2, p3}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method public t()Ljava/util/List;
    .locals 7
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

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v1

    sget-object v2, Lev;->y:Lb4;

    iget v3, p0, Lev$g;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh4;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lev;->y:Lb4;

    iget v3, p0, Lev$g;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lev$g;->o:Lev;

    iget-object v3, v3, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lev$g;->o:Lev;

    iget-object v4, v4, Lev;->c:Lfv;

    iget-wide v5, p0, Lev$g;->n:J

    invoke-virtual {v4, v5, v6, v2}, Lfv;->L(JI)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lev$g;->o:Lev;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v1, v2}, Lev;->P(ILxv;Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
