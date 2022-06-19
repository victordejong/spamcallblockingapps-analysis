.class public final Lcom/google/android/exoplayer2/upstream/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/b;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:[Lcom/google/android/exoplayer2/upstream/a;

.field private e:I

.field private f:I

.field private g:I

.field private h:[Lcom/google/android/exoplayer2/upstream/a;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/k;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 67
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 68
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/k;->a:Z

    .line 69
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/k;->b:I

    .line 70
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    add-int/lit8 p1, p3, 0x64

    .line 71
    new-array p1, p1, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    .line 73
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k;->c:[B

    :goto_2
    if-ge v0, p3, :cond_3

    mul-int p1, v0, p2

    .line 76
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/k;->c:[B

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/upstream/a;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k;->c:[B

    :cond_3
    new-array p1, v1, [Lcom/google/android/exoplayer2/upstream/a;

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k;->d:[Lcom/google/android/exoplayer2/upstream/a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/exoplayer2/upstream/a;
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:I

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    if-lez v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/a;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/k;->b:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/a;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->e:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/k;->e:I

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/k;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->d:[Lcom/google/android/exoplayer2/upstream/a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/k;->a([Lcom/google/android/exoplayer2/upstream/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a([Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 6

    monitor-enter p0

    .line 119
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 120
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    .line 123
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 121
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    .line 125
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 126
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:I

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 7

    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/k;->b:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result v0

    .line 136
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/k;->f:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 137
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/k;->c:[B

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    .line 149
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/a;

    .line 150
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/k;->c:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/a;

    .line 154
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/k;->c:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 157
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    .line 158
    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    .line 163
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 164
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 166
    monitor-exit p0

    return-void

    .line 171
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/k;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 172
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->b:I

    return v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/k;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/k;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
