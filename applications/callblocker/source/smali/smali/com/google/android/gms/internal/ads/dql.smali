.class final Lcom/google/android/gms/internal/ads/dql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:I

.field private b:[I

.field private c:[J

.field private d:[I

.field private e:[I

.field private f:[J

.field private g:[Lcom/google/android/gms/internal/ads/dnr;

.field private h:[Lcom/google/android/gms/internal/ads/dlf;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/dlf;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->b:[I

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dnr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->g:[Lcom/google/android/gms/internal/ads/dnr;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dlf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dql;->m:J

    .line 11
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dql;->n:J

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dql;->p:Z

    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dql;->o:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;ZZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqk;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x3

    const/4 v0, -0x4

    const/4 v1, -0x5

    .line 28
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dql;->d()Z

    move-result v4

    if-nez v4, :cond_3

    .line 29
    if-eqz p4, :cond_0

    .line 30
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/dmp;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return v0

    .line 32
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;

    if-eq v0, p5, :cond_2

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    move v0, v1

    .line 34
    goto :goto_0

    :cond_2
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    if-nez p3, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-object v4, v4, v5

    if-eq v4, p5, :cond_5

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 41
    :goto_1
    if-eqz v1, :cond_7

    move v0, v2

    .line 42
    goto :goto_0

    :cond_6
    move v1, v3

    .line 40
    goto :goto_1

    .line 43
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-wide v2, v1, v2

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dmx;->c:J

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/dmp;->a(I)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget v1, v1, v2

    iput v1, p6, Lcom/google/android/gms/internal/ads/dqk;->a:I

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-wide v2, v1, v2

    iput-wide v2, p6, Lcom/google/android/gms/internal/ads/dqk;->b:J

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->g:[Lcom/google/android/gms/internal/ads/dnr;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-object v1, v1, v2

    iput-object v1, p6, Lcom/google/android/gms/internal/ads/dqk;->d:Lcom/google/android/gms/internal/ads/dnr;

    .line 48
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dql;->m:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/dmx;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dql;->m:J

    .line 49
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    .line 50
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 51
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    .line 52
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    if-ne v1, v2, :cond_8

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 54
    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-wide v2, v1, v2

    .line 55
    :goto_2
    iput-wide v2, p6, Lcom/google/android/gms/internal/ads/dqk;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_9
    :try_start_2
    iget-wide v2, p6, Lcom/google/android/gms/internal/ads/dqk;->b:J

    iget v1, p6, Lcom/google/android/gms/internal/ads/dqk;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_2
.end method

.method public final declared-synchronized a(JZ)J
    .locals 9

    .prologue
    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dql;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-wide v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 66
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dql;->n:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    if-eqz p3, :cond_0

    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 70
    iget v4, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    move v2, v5

    .line 71
    :goto_1
    iget v6, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    if-eq v4, v6, :cond_4

    .line 72
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, p1

    if-gtz v6, :cond_4

    .line 73
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v2, v3

    .line 75
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    rem-int/2addr v4, v6

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_4
    if-eq v2, v5, :cond_0

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    .line 81
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    aget-wide v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dql;->o:Z

    .line 20
    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dql;->n:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dql;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JIJILcom/google/android/gms/internal/ads/dnr;)V
    .locals 13

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dql;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 92
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dql;->o:Z

    .line 95
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dql;->p:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dql;->a(J)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    aput-wide p1, v0, v1

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    aput-wide p4, v0, v1

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    aput p6, v0, v1

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    aput p3, v0, v1

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->g:[Lcom/google/android/gms/internal/ads/dnr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    aput-object p7, v0, v1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->b:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 104
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    .line 105
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    if-ne v0, v1, :cond_4

    .line 106
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    add-int/lit16 v0, v0, 0x3e8

    .line 107
    new-array v1, v0, [I

    .line 108
    new-array v2, v0, [J

    .line 109
    new-array v3, v0, [J

    .line 110
    new-array v4, v0, [I

    .line 111
    new-array v5, v0, [I

    .line 112
    new-array v6, v0, [Lcom/google/android/gms/internal/ads/dnr;

    .line 113
    new-array v7, v0, [Lcom/google/android/gms/internal/ads/dlf;

    .line 114
    iget v8, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    sub-int/2addr v8, v9

    .line 115
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->g:[Lcom/google/android/gms/internal/ads/dnr;

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dql;->b:[I

    iget v10, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget v9, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 123
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->g:[Lcom/google/android/gms/internal/ads/dnr;

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dql;->b:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    .line 131
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dql;->f:[J

    .line 132
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dql;->e:[I

    .line 133
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    .line 134
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dql;->g:[Lcom/google/android/gms/internal/ads/dnr;

    .line 135
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dql;->h:[Lcom/google/android/gms/internal/ads/dlf;

    .line 136
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->b:[I

    .line 137
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 138
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    .line 139
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    .line 140
    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 142
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->l:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    if-ne v0, v1, :cond_0

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dql;->l:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dlf;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    monitor-enter p0

    if-nez p1, :cond_1

    .line 84
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dql;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 86
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dql;->p:Z

    .line 87
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 90
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dql;->m:J

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dql;->n:J

    .line 23
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/google/android/gms/internal/ads/dlf;
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dql;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dql;->q:Lcom/google/android/gms/internal/ads/dlf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()J
    .locals 4

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dql;->m:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dql;->n:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()J
    .locals 4

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dql;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-wide/16 v0, -0x1

    .line 63
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 59
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    rem-int/2addr v0, v1

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->a:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->k:I

    .line 61
    iget v1, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->j:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dql;->i:I

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->c:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dql;->d:[I

    aget v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
