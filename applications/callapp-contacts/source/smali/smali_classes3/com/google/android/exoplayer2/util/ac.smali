.class public final Lcom/google/android/exoplayer2/util/ac;
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

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ac;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    .line 1174
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    return-void
.end method

.method private a(JZ)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    .line 112
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    if-lez v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    iget v4, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    aget-wide v4, v3, v4

    sub-long v3, p1, v4

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ac;->d()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private d()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 127
    aput-object v4, v0, v2

    add-int/2addr v2, v1

    .line 128
    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    return-object v3
.end method


# virtual methods
.method public final declared-synchronized a(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 82
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/ac;->a(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iput v0, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
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

    .line 2134
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    if-lez v0, :cond_0

    .line 2135
    iget v1, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 2136
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 2137
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ac;->a()V

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 2144
    iget v1, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    if-lt v1, v0, :cond_2

    mul-int/lit8 v1, v0, 0x2

    .line 2148
    new-array v2, v1, [J

    .line 2174
    new-array v1, v1, [Ljava/lang/Object;

    .line 2152
    iget v3, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    sub-int/2addr v0, v3

    .line 2153
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2154
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2156
    iget v3, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    if-lez v3, :cond_1

    .line 2157
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2158
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2160
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    .line 2161
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    .line 2162
    iput v5, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    .line 3166
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/util/ac;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ac;->d:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ac;->b:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 3167
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ac;->a:[J

    aput-wide p1, v3, v0

    .line 3168
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 3169
    iput v1, p0, Lcom/google/android/exoplayer2/util/ac;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/ac;->a(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ac;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ac;->d()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
