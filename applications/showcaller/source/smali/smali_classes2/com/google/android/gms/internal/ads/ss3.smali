.class final Lcom/google/android/gms/internal/ads/ss3;
.super Lcom/google/android/gms/internal/ads/rs3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/la;

.field private final c:Lcom/google/android/gms/internal/ads/la;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yr3;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rs3;-><init>(Lcom/google/android/gms/internal/ads/yr3;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/ba;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ss3;->b:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ss3;->c:Lcom/google/android/gms/internal/ads/la;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/la;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/ss3;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpp;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/la;J)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->A()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ss3;->e:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v1

    .line 3
    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v2

    .line 4
    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eq3;->a(Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/eq3;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/eq3;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ss3;->d:I

    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    const-string v1, "video/avc"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/eq3;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget v1, p1, Lcom/google/android/gms/internal/ads/eq3;->c:I

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->s(I)Lcom/google/android/gms/internal/ads/s4;

    iget v1, p1, Lcom/google/android/gms/internal/ads/eq3;->d:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->t(I)Lcom/google/android/gms/internal/ads/s4;

    iget v1, p1, Lcom/google/android/gms/internal/ads/eq3;->e:F

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->w(F)Lcom/google/android/gms/internal/ads/s4;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eq3;->a:Ljava/util/List;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rs3;->a:Lcom/google/android/gms/internal/ads/yr3;

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ss3;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ss3;->e:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/ss3;->g:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ss3;->f:Z

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    return p3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ss3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    .line 15
    aput-byte p3, v0, p3

    .line 16
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 17
    aput-byte p3, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ss3;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/ss3;->d:I

    .line 18
    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 19
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ss3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 21
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rs3;->a:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/ss3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 22
    invoke-interface {v3, v8, v1}, Lcom/google/android/gms/internal/ads/yr3;->b(Lcom/google/android/gms/internal/ads/la;I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rs3;->a:Lcom/google/android/gms/internal/ads/yr3;

    .line 23
    invoke-interface {v3, p1, v2}, Lcom/google/android/gms/internal/ads/yr3;->b(Lcom/google/android/gms/internal/ads/la;I)V

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rs3;->a:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 24
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ss3;->f:Z

    return p2

    :cond_5
    return p3
.end method
