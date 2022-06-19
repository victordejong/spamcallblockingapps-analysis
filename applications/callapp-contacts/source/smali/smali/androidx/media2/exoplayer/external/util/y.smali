.class public final Landroidx/media2/exoplayer/external/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[J

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 41
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/util/y;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    .line 1167
    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move-object v1, v0

    .line 4112
    :goto_0
    :try_start_0
    iget v2, p0, Landroidx/media2/exoplayer/external/util/y;->d:I

    if-lez v2, :cond_0

    .line 4113
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    iget v4, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    aget-wide v5, v3, v4

    sub-long v5, p1, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_0

    .line 4118
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    aget-object v3, v1, v4

    .line 4119
    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 4120
    array-length v1, v1

    rem-int/2addr v4, v1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    add-int/lit8 v2, v2, -0x1

    .line 4121
    iput v2, p0, Landroidx/media2/exoplayer/external/util/y;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 83
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :try_start_0
    iput v0, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    .line 64
    iput v0, p0, Landroidx/media2/exoplayer/external/util/y;->d:I

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2127
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/y;->d:I

    if-lez v0, :cond_0

    .line 2128
    iget v1, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 2129
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 2130
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/y;->a()V

    .line 2136
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 2137
    iget v1, p0, Landroidx/media2/exoplayer/external/util/y;->d:I

    if-lt v1, v0, :cond_2

    mul-int/lit8 v1, v0, 0x2

    .line 2141
    new-array v2, v1, [J

    .line 2167
    new-array v1, v1, [Ljava/lang/Object;

    .line 2145
    iget v3, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    sub-int/2addr v0, v3

    .line 2146
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2147
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    iget v4, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2149
    iget v3, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    if-lez v3, :cond_1

    .line 2150
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2151
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    iget v4, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2153
    :cond_1
    iput-object v2, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    .line 2154
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    .line 2155
    iput v5, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    .line 3159
    :cond_2
    iget v0, p0, Landroidx/media2/exoplayer/external/util/y;->c:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/y;->d:I

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/y;->b:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 3160
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/y;->a:[J

    aput-wide p1, v3, v0

    .line 3161
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 3162
    iput v1, p0, Landroidx/media2/exoplayer/external/util/y;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
