.class public final Lcom/google/android/gms/internal/ads/yv3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gw3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ka;

.field private final b:Lcom/google/android/gms/internal/ads/la;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/ads/yr3;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/u4;

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ka;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ka;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->a:Lcom/google/android/gms/internal/ads/ka;

    new-instance v1, Lcom/google/android/gms/internal/ads/la;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ka;->a:[B

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yv3;->b:Lcom/google/android/gms/internal/ads/la;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv3;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yv3;->m:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv3;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv3;->e:Lcom/google/android/gms/internal/ads/yr3;

    return-void
.end method

.method public final c(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yv3;->m:J

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->e:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv3;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/yv3;->l:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    sub-int/2addr v1, v3

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv3;->e:Lcom/google/android/gms/internal/ads/yr3;

    .line 3
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/yv3;->l:I

    if-ne v1, v7, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/yv3;->m:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yv3;->e:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yv3;->m:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/yv3;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yv3;->m:J

    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/yv3;->f:I

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    const/16 v5, 0x10

    rsub-int/lit8 v4, v4, 0x10

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    .line 7
    invoke-virtual {p1, v0, v4, v3}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->a:Lcom/google/android/gms/internal/ads/ka;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->a:Lcom/google/android/gms/internal/ads/ka;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dq3;->a(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/cq3;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yv3;->k:Lcom/google/android/gms/internal/ads/u4;

    const-string v4, "audio/ac4"

    if-eqz v3, :cond_3

    iget v6, v3, Lcom/google/android/gms/internal/ads/u4;->A:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Lcom/google/android/gms/internal/ads/cq3;->a:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/u4;->B:I

    if-ne v6, v7, :cond_3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/s4;

    .line 11
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/yv3;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 14
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    iget v4, v0, Lcom/google/android/gms/internal/ads/cq3;->a:I

    .line 15
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yv3;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/yv3;->k:Lcom/google/android/gms/internal/ads/u4;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yv3;->e:Lcom/google/android/gms/internal/ads/yr3;

    .line 18
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    :cond_4
    iget v3, v0, Lcom/google/android/gms/internal/ads/cq3;->b:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/yv3;->l:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/cq3;->c:I

    int-to-long v3, v0

    const-wide/32 v6, 0xf4240

    mul-long v3, v3, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->k:Lcom/google/android/gms/internal/ads/u4;

    .line 19
    iget v0, v0, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v6, v0

    div-long/2addr v3, v6

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/yv3;->j:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->e:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 21
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/yv3;->f:I

    goto/16 :goto_0

    .line 22
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->h:Z

    const/16 v4, 0xac

    if-nez v0, :cond_7

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->h:Z

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/yv3;->h:Z

    const/16 v4, 0x40

    const/16 v5, 0x41

    if-eq v0, v4, :cond_9

    if-ne v0, v5, :cond_5

    goto :goto_4

    :cond_9
    if-eq v0, v5, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->i:Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/yv3;->f:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    const/16 v6, -0x54

    .line 25
    aput-byte v6, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/yv3;->i:Z

    if-eq v3, v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v4, 0x41

    .line 26
    :goto_6
    aput-byte v4, v0, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv3;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv3;->g:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv3;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yv3;->m:J

    return-void
.end method
