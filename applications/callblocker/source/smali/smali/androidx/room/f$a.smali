.class Landroidx/room/f$a;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[J

.field final b:[Z

.field final c:[I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/f$a;->a:[J

    .line 747
    new-array v0, p1, [Z

    iput-object v0, p0, Landroidx/room/f$a;->b:[Z

    .line 748
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/f$a;->c:[I

    .line 749
    iget-object v0, p0, Landroidx/room/f$a;->a:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 750
    iget-object v0, p0, Landroidx/room/f$a;->b:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 751
    return-void
.end method


# virtual methods
.method varargs a([I)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 757
    .line 758
    monitor-enter p0

    .line 759
    :try_start_0
    array-length v4, p1

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, p1, v2

    .line 760
    iget-object v5, p0, Landroidx/room/f$a;->a:[J

    aget-wide v6, v5, v3

    .line 761
    iget-object v5, p0, Landroidx/room/f$a;->a:[J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    aput-wide v8, v5, v3

    .line 762
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/f$a;->d:Z

    move v0, v1

    .line 759
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 767
    :cond_1
    monitor-exit p0

    .line 768
    return v0

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a()[I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 797
    monitor-enter p0

    .line 798
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/f$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/room/f$a;->e:Z

    if-eqz v0, :cond_1

    .line 799
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 813
    :goto_0
    return-object v0

    .line 801
    :cond_1
    iget-object v0, p0, Landroidx/room/f$a;->a:[J

    array-length v5, v0

    move v4, v3

    .line 802
    :goto_1
    if-ge v4, v5, :cond_5

    .line 803
    iget-object v0, p0, Landroidx/room/f$a;->a:[J

    aget-wide v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    move v2, v1

    .line 804
    :goto_2
    iget-object v0, p0, Landroidx/room/f$a;->b:[Z

    aget-boolean v0, v0, v4

    if-eq v2, v0, :cond_4

    .line 805
    iget-object v6, p0, Landroidx/room/f$a;->c:[I

    if-eqz v2, :cond_3

    move v0, v1

    :goto_3
    aput v0, v6, v4

    .line 809
    :goto_4
    iget-object v0, p0, Landroidx/room/f$a;->b:[Z

    aput-boolean v2, v0, v4

    .line 802
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 803
    goto :goto_2

    .line 805
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    .line 807
    :cond_4
    iget-object v0, p0, Landroidx/room/f$a;->c:[I

    const/4 v6, 0x0

    aput v6, v0, v4

    goto :goto_4

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 811
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/room/f$a;->e:Z

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/f$a;->d:Z

    .line 813
    iget-object v0, p0, Landroidx/room/f$a;->c:[I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 822
    monitor-enter p0

    .line 823
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/room/f$a;->e:Z

    .line 824
    monitor-exit p0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method varargs b([I)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 775
    .line 776
    monitor-enter p0

    .line 777
    :try_start_0
    array-length v4, p1

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, p1, v2

    .line 778
    iget-object v5, p0, Landroidx/room/f$a;->a:[J

    aget-wide v6, v5, v3

    .line 779
    iget-object v5, p0, Landroidx/room/f$a;->a:[J

    sub-long v8, v6, v10

    aput-wide v8, v5, v3

    .line 780
    cmp-long v3, v6, v10

    if-nez v3, :cond_0

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/f$a;->d:Z

    move v0, v1

    .line 777
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_1
    monitor-exit p0

    .line 786
    return v0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
