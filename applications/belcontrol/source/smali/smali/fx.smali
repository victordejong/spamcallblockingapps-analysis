.class public abstract Lfx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfx$c;,
        Lfx$d;,
        Lfx$a;,
        Lfx$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lfx$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lfx$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lfx$b;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfx$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Landroid/media/MediaFormat;

.field public h:Lrw;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lfx;->a:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lfx;->b:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfx;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfx;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lfx;->g:Landroid/media/MediaFormat;

    new-instance p1, Lfx$b;

    invoke-direct {p1}, Lfx$b;-><init>()V

    iput-object p1, p0, Lfx;->c:Lfx$b;

    invoke-virtual {p0}, Lfx;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfx;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfx;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lfx;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lfx;->g:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract c()Lfx$c;
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lfx;->c()Lfx$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lfx;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfx;->h:Lrw;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lrw;->b(Lrw$a;)V

    :cond_1
    invoke-virtual {p0}, Lfx;->c()Lfx$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lfx$c;->setVisible(Z)V

    :cond_2
    iput-boolean v1, p0, Lfx;->e:Z

    return-void
.end method

.method public f(Landroidx/media2/common/SubtitleData;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->c()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Lfx;->g([BZJ)V

    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lfx;->i(JJ)V

    return-void
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lfx;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lfx;->h(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract g([BZJ)V
.end method

.method public final h(I)V
    .locals 5

    iget-object v0, p0, Lfx;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfx$d;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lfx$d;->a:Lfx$a;

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lfx;->c:Lfx$b;

    invoke-virtual {v3, v1}, Lfx$b;->a(Lfx$a;)V

    iget-object v3, v1, Lfx$a;->d:Lfx$a;

    iput-object v2, v1, Lfx$a;->d:Lfx$a;

    move-object v1, v3

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lfx;->b:Landroid/util/LongSparseArray;

    iget-wide v3, v0, Lfx$d;->e:J

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v1, v0, Lfx$d;->b:Lfx$d;

    iput-object v2, v0, Lfx$d;->c:Lfx$d;

    iput-object v2, v0, Lfx$d;->b:Lfx$d;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfx;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    return-void
.end method

.method public i(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lfx;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfx$d;

    if-eqz p1, :cond_0

    iput-wide p3, p1, Lfx$d;->d:J

    iget-object p2, p0, Lfx;->a:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Lfx$d;->b(Landroid/util/LongSparseArray;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized j(Lrw;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfx;->h:Lrw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0, p0}, Lrw;->b(Lrw$a;)V

    :cond_1
    iput-object p1, p0, Lfx;->h:Lrw;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lrw;->a(Lrw$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()V
    .locals 2

    iget-boolean v0, p0, Lfx;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfx;->e:Z

    invoke-virtual {p0}, Lfx;->c()Lfx$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lfx$c;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lfx;->h:Lrw;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lrw;->a(Lrw$a;)V

    :cond_2
    return-void
.end method
