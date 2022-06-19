.class public final Lcom/google/android/gms/internal/ads/dqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dno;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/drn;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/dql;

.field private final d:Lcom/google/android/gms/internal/ads/dqk;

.field private final e:Lcom/google/android/gms/internal/ads/dsk;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Lcom/google/android/gms/internal/ads/dqm;

.field private h:Lcom/google/android/gms/internal/ads/dqm;

.field private i:Lcom/google/android/gms/internal/ads/dlf;

.field private j:Z

.field private k:Lcom/google/android/gms/internal/ads/dlf;

.field private l:J

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/dqp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/drn;)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drn;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dql;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dql;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/dqm;

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dqm;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    .line 11
    return-void
.end method

.method private final a(I)I
    .locals 6

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    if-ne v0, v1, :cond_1

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dqm;->c:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dqm;->e:Lcom/google/android/gms/internal/ads/dqm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/drn;->a()Lcom/google/android/gms/internal/ads/drk;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/dqm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/dqm;->b:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/dqm;-><init>(JI)V

    .line 205
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    .line 206
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/dqm;->e:Lcom/google/android/gms/internal/ads/dqm;

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dqm;->c:Z

    .line 208
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private final a(J)V
    .locals 3

    .prologue
    .line 117
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dqm;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/drn;->a(Lcom/google/android/gms/internal/ads/drk;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqm;->a()Lcom/google/android/gms/internal/ads/dqm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private final a(J[BI)V
    .locals 7

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dqn;->a(J)V

    .line 105
    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/dqm;->a:J

    sub-long v2, p1, v2

    long-to-int v1, v2

    .line 107
    sub-int v2, p4, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    .line 109
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/drk;->a:[B

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/drk;->a(I)I

    move-result v1

    invoke-static {v4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    int-to-long v4, v2

    add-long/2addr p1, v4

    .line 111
    add-int/2addr v0, v2

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/dqm;->b:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/drn;->a(Lcom/google/android/gms/internal/ads/drk;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dqm;->a()Lcom/google/android/gms/internal/ads/dqm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method private final g()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final h()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->i()V

    .line 182
    :cond_0
    return-void
.end method

.method private final i()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dql;->a()V

    .line 184
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    .line 185
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/dqm;->c:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dqm;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/dqm;->a:J

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/dqm;->a:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    div-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 187
    new-array v3, v0, [Lcom/google/android/gms/internal/ads/drk;

    move-object v0, v2

    .line 189
    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_1

    .line 190
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    aput-object v2, v3, v1

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqm;->a()Lcom/google/android/gms/internal/ads/dqm;

    move-result-object v0

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 186
    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/drn;->a([Lcom/google/android/gms/internal/ads/drk;)V

    .line 194
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dqm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    invoke-direct {v0, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dqm;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    .line 196
    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/dqn;->l:J

    .line 197
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/drn;->b()V

    .line 199
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dql;->c()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;ZZJ)I
    .locals 11

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dqn;->i:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dql;->a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;ZZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqk;)I

    move-result v0

    .line 35
    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 36
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->i:Lcom/google/android/gms/internal/ads/dlf;

    .line 37
    const/4 v0, -0x5

    .line 101
    :goto_0
    return v0

    .line 38
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dmp;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 39
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/dmx;->c:J

    cmp-long v0, v0, p5

    if-gez v0, :cond_0

    .line 40
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/dmp;->b(I)V

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dmx;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    .line 43
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/dqk;->b:J

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dsk;->a(I)V

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dqn;->a(J[BI)V

    .line 46
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 48
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 49
    :goto_1
    and-int/lit8 v1, v1, 0x7f

    .line 50
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dms;->a:[B

    if-nez v4, :cond_1

    .line 51
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/dms;->a:[B

    .line 52
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dms;->a:[B

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/dqn;->a(J[BI)V

    .line 53
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 54
    if-eqz v0, :cond_7

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/dsk;->a(I)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/dqn;->a(J[BI)V

    .line 57
    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v1

    move-wide v4, v2

    .line 60
    :goto_2
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dms;->b:[I

    .line 61
    if-eqz v2, :cond_2

    array-length v3, v2

    if-ge v3, v1, :cond_3

    .line 62
    :cond_2
    new-array v2, v1, [I

    .line 63
    :cond_3
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dms;->c:[I

    .line 64
    if-eqz v3, :cond_4

    array-length v6, v3

    if-ge v6, v1, :cond_5

    .line 65
    :cond_4
    new-array v3, v1, [I

    .line 66
    :cond_5
    if-eqz v0, :cond_b

    .line 67
    mul-int/lit8 v0, v1, 0x6

    .line 68
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/dsk;->a(I)V

    .line 69
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-direct {p0, v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/dqn;->a(J[BI)V

    .line 70
    int-to-long v8, v0

    add-long/2addr v4, v8

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 72
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_8

    .line 73
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v6

    aput v6, v2, v0

    .line 74
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqn;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v6

    aput v6, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 48
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :cond_7
    const/4 v1, 0x1

    move-wide v4, v2

    goto :goto_2

    :cond_8
    move-wide v8, v4

    .line 79
    :goto_4
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/dqk;->d:Lcom/google/android/gms/internal/ads/dnr;

    .line 80
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/dnr;->b:[B

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dms;->a:[B

    iget v6, v6, Lcom/google/android/gms/internal/ads/dnr;->a:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dms;->a(I[I[I[B[BI)V

    .line 81
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/dqk;->b:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    .line 82
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/dqk;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/dqk;->b:J

    .line 83
    iget v1, v7, Lcom/google/android/gms/internal/ads/dqk;->a:I

    sub-int v0, v1, v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/dqk;->a:I

    .line 84
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dqk;->a:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/dmx;->d(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/dqk;->b:J

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dqk;->a:I

    .line 87
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/dqn;->a(J)V

    .line 88
    :cond_a
    :goto_5
    if-lez v0, :cond_c

    .line 89
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dqm;->a:J

    sub-long v4, v2, v4

    long-to-int v4, v4

    .line 90
    iget v5, p0, Lcom/google/android/gms/internal/ads/dqn;->b:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 91
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    .line 92
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/drk;->a:[B

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/drk;->a(I)I

    move-result v4

    invoke-virtual {v1, v7, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 93
    int-to-long v8, v5

    add-long/2addr v2, v8

    .line 94
    sub-int/2addr v0, v5

    .line 95
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dqm;->b:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_a

    .line 96
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqn;->a:Lcom/google/android/gms/internal/ads/drn;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/drn;->a(Lcom/google/android/gms/internal/ads/drk;)V

    .line 97
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dqm;->a()Lcom/google/android/gms/internal/ads/dqm;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dqn;->g:Lcom/google/android/gms/internal/ads/dqm;

    goto :goto_5

    .line 77
    :cond_b
    const/4 v0, 0x0

    const/4 v6, 0x0

    aput v6, v2, v0

    .line 78
    const/4 v0, 0x0

    iget v6, v7, Lcom/google/android/gms/internal/ads/dqk;->a:I

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/dqk;->b:J

    sub-long v8, v4, v8

    long-to-int v8, v8

    sub-int/2addr v6, v8

    aput v6, v3, v0

    move-wide v8, v4

    goto :goto_4

    .line 99
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->d:Lcom/google/android/gms/internal/ads/dqk;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dqk;->c:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dqn;->a(J)V

    .line 100
    :cond_d
    const/4 v0, -0x4

    goto/16 :goto_0

    .line 101
    :pswitch_2
    const/4 v0, -0x3

    goto/16 :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dng;IZ)I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dng;->a(I)I

    move-result v0

    .line 138
    if-ne v0, v4, :cond_2

    .line 140
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 142
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dqn;->a(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    .line 144
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/drk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    .line 145
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/drk;->a(I)I

    move-result v1

    .line 146
    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/dng;->a([BII)I

    move-result v0

    .line 147
    if-ne v0, v4, :cond_1

    .line 149
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->h()V

    .line 156
    throw v0

    .line 150
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    .line 151
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dqn;->l:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dqn;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->h()V

    .line 154
    :cond_2
    return v0
.end method

.method public final a(JIIILcom/google/android/gms/internal/ads/dnr;)V
    .locals 9

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dql;->a(J)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dqn;->l:J

    int-to-long v2, p4

    sub-long v4, v0, v2

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/dql;->a(JIJILcom/google/android/gms/internal/ads/dnr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->h()V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->h()V

    .line 178
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 123
    .line 124
    if-nez p1, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dql;->a(Lcom/google/android/gms/internal/ads/dlf;)Z

    move-result v1

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqn;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 132
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dqn;->j:Z

    .line 133
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqn;->n:Lcom/google/android/gms/internal/ads/dqp;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->n:Lcom/google/android/gms/internal/ads/dqp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dqp;->a(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 135
    :cond_0
    return-void

    .line 126
    :cond_1
    cmp-long v0, v0, v0

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/dlf;->o:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 127
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/dlf;->o:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(J)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqp;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqn;->n:Lcom/google/android/gms/internal/ads/dqp;

    .line 122
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dsk;I)V
    .locals 6

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    :goto_1
    if-lez p2, :cond_1

    .line 161
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dqn;->a(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqn;->h:Lcom/google/android/gms/internal/ads/dqm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    .line 163
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/drk;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/drk;->a(I)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/dsk;->a([BII)V

    .line 164
    iget v1, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dqn;->m:I

    .line 165
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dqn;->l:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dqn;->l:J

    .line 166
    sub-int/2addr p2, v0

    .line 167
    goto :goto_1

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->h()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqn;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->i()V

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dql;->b()V

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->i:Lcom/google/android/gms/internal/ads/dlf;

    .line 17
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 12
    goto :goto_0
.end method

.method public final a(JZ)Z
    .locals 5

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dql;->a(JZ)J

    move-result-wide v0

    .line 30
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dqn;->a(J)V

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dqn;->i()V

    .line 21
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dql;->d()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dlf;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dql;->e()Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dql;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqn;->c:Lcom/google/android/gms/internal/ads/dql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dql;->g()J

    move-result-wide v0

    .line 26
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dqn;->a(J)V

    .line 28
    :cond_0
    return-void
.end method
