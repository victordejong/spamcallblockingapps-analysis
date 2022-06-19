.class public final Lcom/google/android/gms/internal/ads/ebb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dyc;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/ebz;

.field final b:I

.field final c:Lcom/google/android/gms/internal/ads/eaz;

.field final d:Lcom/google/android/gms/internal/ads/eay;

.field final e:Lcom/google/android/gms/internal/ads/ecy;

.field f:Lcom/google/android/gms/internal/ads/eba;

.field g:Lcom/google/android/gms/internal/ads/zzht;

.field h:Lcom/google/android/gms/internal/ads/ebd;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Lcom/google/android/gms/internal/ads/eba;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/ads/zzht;

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ebz;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ebz;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/eaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eaz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/eay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eay;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ecy;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/eba;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/eba;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    return-void
.end method

.method private final a(I)I
    .locals 6

    .line 208
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/eba;->c:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eba;->e:Lcom/google/android/gms/internal/ads/eba;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ebz;->a()Lcom/google/android/gms/internal/ads/eca;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/eba;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/eba;->b:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/eba;-><init>(JI)V

    .line 213
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    .line 214
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/eba;->e:Lcom/google/android/gms/internal/ads/eba;

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/eba;->c:Z

    .line 216
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final b()Z
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final c()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->d()V

    :cond_0
    return-void
.end method

.method private final d()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eaz;->a()V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    .line 193
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/eba;->c:Z

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/eba;->c:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/eba;->a:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/eba;->a:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 195
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/eca;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 198
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    aput-object v4, v2, v3

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eba;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/ebz;->a([Lcom/google/android/gms/internal/ads/eca;)V

    .line 202
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/eba;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/eba;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    .line 203
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    .line 204
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ebb;->m:J

    .line 205
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebz;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dxt;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 141
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dxt;->a(I)I

    move-result p1

    if-eq p1, v1, :cond_0

    return p1

    .line 144
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 146
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ebb;->a(I)I

    move-result p2

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    .line 148
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eca;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    add-int/lit8 v2, v2, 0x0

    .line 152
    invoke-interface {p1, v0, v2, p2}, Lcom/google/android/gms/internal/ads/dxt;->a([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 156
    iget p2, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    .line 157
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ebb;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ebb;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->c()V

    return p1

    .line 155
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->c()V

    .line 162
    throw p1
.end method

.method public final a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->d()V

    :cond_0
    return-void
.end method

.method final a(J)V
    .locals 3

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/eba;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ebz;->a(Lcom/google/android/gms/internal/ads/eca;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eba;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(JIIILcom/google/android/gms/internal/ads/dyf;)V
    .locals 10

    move-object v1, p0

    .line 178
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    move-wide v3, p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/eaz;->a(J)V

    return-void

    :cond_0
    move-wide v3, p1

    .line 181
    :try_start_0
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/ebb;->m:J

    move v0, p4

    int-to-long v7, v0

    sub-long/2addr v5, v7

    move v2, p5

    int-to-long v7, v2

    sub-long v6, v5, v7

    .line 182
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    move-wide v3, p1

    move v5, p3

    move v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/eaz;->a(JIJILcom/google/android/gms/internal/ads/dyf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 185
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->c()V

    .line 186
    throw v0
.end method

.method final a(J[BI)V
    .locals 7

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ebb;->a(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, p4, :cond_1

    .line 108
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/eba;->a:J

    sub-long v2, p1, v2

    long-to-int v3, v2

    sub-int v2, p4, v1

    .line 109
    iget v4, p0, Lcom/google/android/gms/internal/ads/ebb;->b:I

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 110
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    .line 111
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/eca;->a:[B

    add-int/2addr v3, v0

    .line 113
    invoke-static {v5, v3, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v5, v2

    add-long/2addr p1, v5

    add-int/2addr v1, v2

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/eba;->b:J

    cmp-long v5, p1, v2

    if-nez v5, :cond_0

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/ebz;->a(Lcom/google/android/gms/internal/ads/eca;)V

    .line 118
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/eba;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ecy;I)V
    .locals 5

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ecy;->d(I)V

    return-void

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 167
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ebb;->a(I)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebb;->j:Lcom/google/android/gms/internal/ads/eba;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    .line 169
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eca;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    add-int/lit8 v2, v2, 0x0

    .line 171
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/ecy;->a([BII)V

    .line 172
    iget v1, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ebb;->n:I

    .line 173
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ebb;->m:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/ebb;->m:J

    sub-int/2addr p2, v0

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->c()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eaz;->a(Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result v0

    .line 135
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebb;->l:Lcom/google/android/gms/internal/ads/zzht;

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ebb;->k:Z

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ebb;->h:Lcom/google/android/gms/internal/ads/ebd;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ebd;->f()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebb;->d()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eaz;->b()V

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebb;->g:Lcom/google/android/gms/internal/ads/zzht;

    :cond_1
    return-void
.end method

.method public final a(JZ)Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eaz;->a(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ebb;->a(J)V

    const/4 p1, 0x1

    return p1
.end method
