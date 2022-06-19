.class public final Lcom/google/android/gms/internal/ads/tw3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gw3;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/la;

.field private final c:Lcom/google/android/gms/internal/ads/ka;

.field private d:Lcom/google/android/gms/internal/ads/yr3;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/internal/ads/u4;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tw3;->a:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    new-instance v0, Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object p1

    .line 2
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ka;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tw3;->c:Lcom/google/android/gms/internal/ads/ka;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tw3;->k:J

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/ka;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ka;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/xp3;->b(Lcom/google/android/gms/internal/ads/ka;Z)Lcom/google/android/gms/internal/ads/vp3;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vp3;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/tw3;->u:Ljava/lang/String;

    iget v2, v1, Lcom/google/android/gms/internal/ads/vp3;->a:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/tw3;->r:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/vp3;->b:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/tw3;->t:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ka;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private static f(Lcom/google/android/gms/internal/ads/ka;)J
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tw3;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tw3;->k:J

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1b

    const/4 v1, 0x3

    const/16 v5, 0x8

    if-eq v0, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/tw3;->i:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/tw3;->h:I

    sub-int/2addr v3, v6

    .line 2
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ka;->a:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/tw3;->h:I

    .line 3
    invoke-virtual {p1, v3, v6, v0}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/tw3;->h:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/gms/internal/ads/tw3;->h:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/tw3;->i:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 4
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->g()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_10

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/tw3;->l:Z

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v3

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v3

    const/4 v3, 0x0

    :goto_1
    iput v3, p0, Lcom/google/android/gms/internal/ads/tw3;->m:I

    if-nez v3, :cond_f

    if-ne v7, v2, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tw3;->f(Lcom/google/android/gms/internal/ads/ka;)J

    const/4 v7, 0x1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->g()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/gms/internal/ads/tw3;->n:I

    const/4 v8, 0x4

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v9

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v10

    if-nez v9, :cond_d

    if-nez v10, :cond_d

    if-nez v7, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->c()I

    move-result v9

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/tw3;->e(Lcom/google/android/gms/internal/ads/ka;)I

    move-result v10

    .line 15
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    add-int/lit8 v9, v10, 0x7

    div-int/2addr v9, v5

    .line 16
    new-array v9, v9, [B

    .line 17
    invoke-virtual {v0, v9, v4, v10}, Lcom/google/android/gms/internal/ads/ka;->i([BII)V

    new-instance v10, Lcom/google/android/gms/internal/ads/s4;

    .line 18
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/tw3;->e:Ljava/lang/String;

    .line 19
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const-string v11, "audio/mp4a-latm"

    .line 20
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/tw3;->u:Ljava/lang/String;

    .line 21
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/s4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget v11, p0, Lcom/google/android/gms/internal/ads/tw3;->t:I

    .line 22
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    iget v11, p0, Lcom/google/android/gms/internal/ads/tw3;->r:I

    .line 23
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    .line 24
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/tw3;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 26
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/tw3;->f:Lcom/google/android/gms/internal/ads/u4;

    .line 27
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/u4;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/tw3;->f:Lcom/google/android/gms/internal/ads/u4;

    const-wide/32 v10, 0x3d090000

    iget v12, v9, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v12, v12

    .line 28
    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/google/android/gms/internal/ads/tw3;->s:J

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/tw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    .line 29
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    goto :goto_2

    .line 30
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tw3;->f(Lcom/google/android/gms/internal/ads/ka;)J

    move-result-wide v9

    long-to-int v10, v9

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/tw3;->e(Lcom/google/android/gms/internal/ads/ka;)I

    move-result v9

    sub-int/2addr v10, v9

    .line 32
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    .line 33
    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v9

    iput v9, p0, Lcom/google/android/gms/internal/ads/tw3;->o:I

    if-eqz v9, :cond_9

    if-eq v9, v2, :cond_8

    if-eq v9, v1, :cond_7

    if-eq v9, v8, :cond_7

    const/4 v1, 0x5

    if-eq v9, v1, :cond_7

    if-eq v9, v3, :cond_6

    const/4 v1, 0x7

    if-ne v9, v1, :cond_5

    goto :goto_3

    .line 34
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 36
    :cond_6
    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    goto :goto_4

    .line 37
    :cond_7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    goto :goto_4

    :cond_8
    const/16 v1, 0x9

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    goto :goto_4

    .line 39
    :cond_9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    .line 40
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/tw3;->p:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/tw3;->q:J

    if-eqz v1, :cond_c

    if-eq v7, v2, :cond_b

    .line 41
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->g()Z

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/tw3;->q:J

    shl-long/2addr v2, v5

    .line 42
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/tw3;->q:J

    if-nez v1, :cond_a

    goto :goto_5

    .line 43
    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tw3;->f(Lcom/google/android/gms/internal/ads/ka;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/tw3;->q:J

    .line 44
    :cond_c
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->g()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 45
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    goto :goto_6

    .line 46
    :cond_d
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 47
    :cond_e
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 48
    :cond_f
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 49
    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/tw3;->l:Z

    if-nez v1, :cond_11

    goto :goto_9

    .line 50
    :cond_11
    :goto_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/tw3;->m:I

    if-nez v1, :cond_18

    iget v1, p0, Lcom/google/android/gms/internal/ads/tw3;->n:I

    if-nez v1, :cond_17

    iget v1, p0, Lcom/google/android/gms/internal/ads/tw3;->o:I

    if-nez v1, :cond_16

    const/4 v1, 0x0

    .line 51
    :goto_7
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v2

    add-int v10, v1, v2

    const/16 v1, 0xff

    if-eq v2, v1, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ka;->c()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    shr-int/lit8 v1, v1, 0x3

    .line 52
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_8

    .line 53
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v1

    mul-int/lit8 v2, v10, 0x8

    .line 54
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/ka;->i([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 55
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 56
    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 57
    invoke-static {v1, v2, v10}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/tw3;->k:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v7, v1

    if-eqz v3, :cond_13

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/tw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 58
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/tw3;->k:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/tw3;->s:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/tw3;->k:J

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/tw3;->p:Z

    if-eqz v1, :cond_14

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/tw3;->q:J

    long-to-int v2, v1

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    :cond_14
    :goto_9
    iput v4, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    goto/16 :goto_0

    :cond_15
    move v1, v10

    goto :goto_7

    .line 60
    :cond_16
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 61
    :cond_17
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 62
    :cond_18
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 63
    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/ads/tw3;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v5

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/tw3;->i:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    .line 65
    array-length v2, v2

    if-le v0, v2, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/tw3;->i:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 66
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/la;->i(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tw3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    .line 67
    array-length v3, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->a([BI)V

    :cond_1a
    iput v4, p0, Lcom/google/android/gms/internal/ads/tw3;->h:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    goto/16 :goto_0

    .line 68
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1c

    iput v0, p0, Lcom/google/android/gms/internal/ads/tw3;->j:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    goto/16 :goto_0

    :cond_1c
    if-eq v0, v1, :cond_0

    iput v4, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    goto/16 :goto_0

    .line 69
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/tw3;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/tw3;->k:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tw3;->l:Z

    return-void
.end method
