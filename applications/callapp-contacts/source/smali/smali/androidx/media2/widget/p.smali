.class abstract Landroidx/media2/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/p$c;,
        Landroidx/media2/widget/p$d;,
        Landroidx/media2/widget/p$a;,
        Landroidx/media2/widget/p$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/p$a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z

.field public c:Z

.field protected d:Landroid/os/Handler;

.field e:Landroid/media/MediaFormat;

.field protected f:Landroidx/media2/widget/h;

.field private g:J

.field private h:J

.field private final i:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/widget/p$d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/widget/p$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/media2/widget/p$b;

.field private l:J


# direct methods
.method constructor <init>(Landroid/media/MediaFormat;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/p;->i:Landroid/util/LongSparseArray;

    .line 51
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/p;->j:Landroid/util/LongSparseArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Landroidx/media2/widget/p;->c:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/p;->d:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 76
    iput-wide v0, p0, Landroidx/media2/widget/p;->l:J

    .line 66
    iput-object p1, p0, Landroidx/media2/widget/p;->e:Landroid/media/MediaFormat;

    .line 67
    new-instance p1, Landroidx/media2/widget/p$b;

    invoke-direct {p1}, Landroidx/media2/widget/p$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/p;->k:Landroidx/media2/widget/p$b;

    .line 68
    invoke-direct {p0}, Landroidx/media2/widget/p;->d()V

    .line 69
    iput-wide v0, p0, Landroidx/media2/widget/p;->h:J

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/widget/p;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/widget/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " active cues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, -0x1

    .line 204
    iput-wide v0, p0, Landroidx/media2/widget/p;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract a()Landroidx/media2/widget/p$c;
.end method

.method public final a(Landroidx/media2/common/SubtitleData;)V
    .locals 8

    .line 1099
    iget-wide v0, p1, Landroidx/media2/common/SubtitleData;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1120
    iget-object v2, p1, Landroidx/media2/common/SubtitleData;->c:[B

    .line 83
    invoke-virtual {p0, v2}, Landroidx/media2/widget/p;->a([B)V

    .line 2099
    iget-wide v2, p1, Landroidx/media2/common/SubtitleData;->a:J

    .line 2107
    iget-wide v4, p1, Landroidx/media2/common/SubtitleData;->b:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    .line 86
    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    const-wide/16 v6, -0x1

    cmp-long p1, v0, v6

    if-eqz p1, :cond_5

    .line 2593
    iget-object p1, p0, Landroidx/media2/widget/p;->j:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/widget/p$d;

    if-eqz p1, :cond_5

    .line 2595
    iput-wide v2, p1, Landroidx/media2/widget/p$d;->d:J

    .line 2596
    iget-object v0, p0, Landroidx/media2/widget/p;->i:Landroid/util/LongSparseArray;

    .line 2622
    iget-wide v1, p1, Landroidx/media2/widget/p$d;->f:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 2624
    iget-object v3, p1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    if-nez v3, :cond_1

    .line 2625
    iget-object v3, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    if-nez v3, :cond_0

    .line 2626
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 2628
    :cond_0
    iget-object v3, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    invoke-virtual {v0, v1, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2647
    :cond_1
    :goto_0
    iget-object v1, p1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    .line 2649
    iget-object v3, p1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    if-eqz v3, :cond_2

    .line 2650
    iget-object v3, p1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    iget-object v6, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    iput-object v6, v3, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    .line 2651
    iput-object v2, p1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    .line 2653
    :cond_2
    iget-object v3, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    if-eqz v3, :cond_3

    .line 2654
    iget-object v3, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    iput-object v1, v3, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    .line 2655
    iput-object v2, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    .line 2635
    :cond_3
    iget-wide v6, p1, Landroidx/media2/widget/p$d;->d:J

    cmp-long v1, v6, v4

    if-ltz v1, :cond_5

    .line 2636
    iput-object v2, p1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    .line 2637
    iget-wide v1, p1, Landroidx/media2/widget/p$d;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/widget/p$d;

    iput-object v1, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    .line 2638
    iget-object v1, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    if-eqz v1, :cond_4

    .line 2639
    iget-object v1, p1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    iput-object p1, v1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    .line 2641
    :cond_4
    iget-wide v1, p1, Landroidx/media2/widget/p$d;->d:J

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2642
    iget-wide v0, p1, Landroidx/media2/widget/p$d;->d:J

    iput-wide v0, p1, Landroidx/media2/widget/p$d;->f:J

    :cond_5
    return-void
.end method

.method public final declared-synchronized a(Landroidx/media2/widget/h;)V
    .locals 1

    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Landroidx/media2/widget/p;->f:Landroidx/media2/widget/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 369
    monitor-exit p0

    return-void

    .line 374
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/media2/widget/p;->f:Landroidx/media2/widget/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract a([B)V
.end method

.method public final b()V
    .locals 2

    .line 259
    iget-boolean v0, p0, Landroidx/media2/widget/p;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Landroidx/media2/widget/p;->b:Z

    .line 264
    invoke-virtual {p0}, Landroidx/media2/widget/p;->a()Landroidx/media2/widget/p$c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1, v0}, Landroidx/media2/widget/p$c;->a(Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 277
    iget-boolean v0, p0, Landroidx/media2/widget/p;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/widget/p;->a()Landroidx/media2/widget/p$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0, v1}, Landroidx/media2/widget/p$c;->a(Z)V

    .line 288
    :cond_1
    iput-boolean v1, p0, Landroidx/media2/widget/p;->b:Z

    return-void
.end method

.method protected finalize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media2/widget/p;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 3168
    iget-object v1, p0, Landroidx/media2/widget/p;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/widget/p$d;

    :goto_1
    if-eqz v1, :cond_2

    .line 3170
    iget-object v2, v1, Landroidx/media2/widget/p$d;->a:Landroidx/media2/widget/p$a;

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3172
    iget-object v4, p0, Landroidx/media2/widget/p;->k:Landroidx/media2/widget/p$b;

    .line 3433
    iget-wide v5, v2, Landroidx/media2/widget/p$a;->a:J

    invoke-virtual {v4, v2, v5, v6}, Landroidx/media2/widget/p$b;->a(Landroidx/media2/widget/p$a;J)V

    .line 3434
    iget-object v5, v2, Landroidx/media2/widget/p$a;->c:[J

    if-eqz v5, :cond_0

    .line 3435
    iget-object v5, v2, Landroidx/media2/widget/p$a;->c:[J

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_0

    aget-wide v8, v5, v7

    .line 3436
    invoke-virtual {v4, v2, v8, v9}, Landroidx/media2/widget/p$b;->a(Landroidx/media2/widget/p$a;J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3439
    :cond_0
    iget-wide v5, v2, Landroidx/media2/widget/p$a;->b:J

    invoke-virtual {v4, v2, v5, v6}, Landroidx/media2/widget/p$b;->a(Landroidx/media2/widget/p$a;J)V

    .line 3173
    iget-object v4, v2, Landroidx/media2/widget/p$a;->d:Landroidx/media2/widget/p$a;

    .line 3174
    iput-object v3, v2, Landroidx/media2/widget/p$a;->d:Landroidx/media2/widget/p$a;

    move-object v2, v4

    goto :goto_2

    .line 3177
    :cond_1
    iget-object v2, p0, Landroidx/media2/widget/p;->j:Landroid/util/LongSparseArray;

    iget-wide v4, v1, Landroidx/media2/widget/p$d;->e:J

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3178
    iget-object v2, v1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    .line 3179
    iput-object v3, v1, Landroidx/media2/widget/p$d;->c:Landroidx/media2/widget/p$d;

    .line 3180
    iput-object v3, v1, Landroidx/media2/widget/p$d;->b:Landroidx/media2/widget/p$d;

    move-object v1, v2

    goto :goto_1

    .line 3183
    :cond_2
    iget-object v1, p0, Landroidx/media2/widget/p;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
