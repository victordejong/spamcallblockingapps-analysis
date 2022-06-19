.class public final Lcom/google/android/gms/internal/ads/sw3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gw3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/la;

.field private b:Lcom/google/android/gms/internal/ads/yr3;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/sw3;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw3;->b:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sw3;->c:Z

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/google/android/gms/internal/ads/sw3;->e:I

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/sw3;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->b:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sw3;->c:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sw3;->b:Lcom/google/android/gms/internal/ads/yr3;

    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const-string p2, "application/id3"

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    return-void
.end method

.method public final c(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/sw3;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/sw3;->d:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/sw3;->e:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw3;->b:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sw3;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    .line 3
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v1

    const/16 v4, 0x33

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    const/4 v3, 0x3

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->a()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/sw3;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/sw3;->c:Z

    return-void

    .line 12
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/sw3;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw3;->b:Lcom/google/android/gms/internal/ads/yr3;

    .line 14
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/sw3;->f:I

    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sw3;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/sw3;->d:J

    return-void
.end method
