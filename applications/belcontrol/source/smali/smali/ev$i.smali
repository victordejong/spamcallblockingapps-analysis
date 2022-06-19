.class public Lev$i;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->Z(Lev$k0;)Lcom/google/common/util/concurrent/ListenableFuture;
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

.field public final synthetic n:Lev$k0;

.field public final synthetic o:Lev;


# direct methods
.method public constructor <init>(Lev;Ljava/util/concurrent/Executor;ILev$k0;)V
    .locals 0

    iput-object p1, p0, Lev$i;->o:Lev;

    iput p3, p0, Lev$i;->m:I

    iput-object p4, p0, Lev$i;->n:Lev$k0;

    invoke-direct {p0, p2}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;)V

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

    iget-object v2, p0, Lev$i;->o:Lev;

    iget-object v2, v2, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lev$i;->o:Lev;

    iget-object v3, v3, Lev;->c:Lfv;

    iget v4, p0, Lev$i;->m:I

    invoke-virtual {v3, v4}, Lfv;->u(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lev$i;->o:Lev;

    const/4 v5, 0x2

    iget-object v6, p0, Lev$i;->n:Lev$k0;

    invoke-virtual {v4, v5, v1, v6, v3}, Lev;->Q(ILxv;Lev$k0;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
