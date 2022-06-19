.class public final Lcom/google/android/gms/internal/ads/dmj;
.super Lcom/google/android/gms/internal/ads/doy;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsd;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dlt;

.field private final c:Lcom/google/android/gms/internal/ads/dmd;

.field private d:Z

.field private e:Z

.field private f:Landroid/media/MediaFormat;

.field private g:I

.field private h:I

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dpa;)V
    .locals 2

    .prologue
    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/dmj;-><init>(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;Z)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dpa;",
            "Lcom/google/android/gms/internal/ads/dnb",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dmj;-><init>(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;ZLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dlu;)V

    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;ZLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dlu;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dpa;",
            "Lcom/google/android/gms/internal/ads/dnb",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;Z",
            "Lcom/google/android/gms/internal/ads/cnz;",
            "Lcom/google/android/gms/internal/ads/dlu;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/android/gms/internal/ads/dls;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/dmj;-><init>(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;ZLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dlu;Lcom/google/android/gms/internal/ads/dlq;[Lcom/google/android/gms/internal/ads/dls;)V

    .line 6
    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;ZLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dlu;Lcom/google/android/gms/internal/ads/dlq;[Lcom/google/android/gms/internal/ads/dls;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dpa;",
            "Lcom/google/android/gms/internal/ads/dnb",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;Z",
            "Lcom/google/android/gms/internal/ads/cnz;",
            "Lcom/google/android/gms/internal/ads/dlu;",
            "Lcom/google/android/gms/internal/ads/dlq;",
            "[",
            "Lcom/google/android/gms/internal/ads/dls;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/doy;-><init>(ILcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;Z)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dmd;

    new-instance v1, Lcom/google/android/gms/internal/ads/dml;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/dml;-><init>(Lcom/google/android/gms/internal/ads/dmj;Lcom/google/android/gms/internal/ads/dmm;)V

    invoke-direct {v0, v2, p7, v1}, Lcom/google/android/gms/internal/ads/dmd;-><init>(Lcom/google/android/gms/internal/ads/dlq;[Lcom/google/android/gms/internal/ads/dls;Lcom/google/android/gms/internal/ads/dmh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/dlt;

    invoke-direct {v0, v2, v2}, Lcom/google/android/gms/internal/ads/dlt;-><init>(Lcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dlu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dmj;)Lcom/google/android/gms/internal/ads/dlt;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    return-object v0
.end method

.method protected static a(IJJ)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dmj;Z)Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmj;->j:Z

    return v0
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dmd;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static b(I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected static v()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;)I
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 11
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dsg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return v1

    .line 14
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-lt v0, v6, :cond_1

    const/16 v0, 0x10

    .line 15
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dmj;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dpa;->a()Lcom/google/android/gms/internal/ads/doz;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 16
    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v1, v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 14
    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p1, v3, v1}, Lcom/google/android/gms/internal/ads/dpa;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v3

    .line 18
    if-nez v3, :cond_3

    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_3
    sget v4, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-lt v4, v6, :cond_5

    iget v4, p2, Lcom/google/android/gms/internal/ads/dlf;->m:I

    if-eq v4, v5, :cond_4

    iget v4, p2, Lcom/google/android/gms/internal/ads/dlf;->m:I

    .line 21
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/doz;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget v4, p2, Lcom/google/android/gms/internal/ads/dlf;->l:I

    if-eq v4, v5, :cond_5

    iget v4, p2, Lcom/google/android/gms/internal/ads/dlf;->l:I

    .line 22
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/doz;->b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    .line 23
    :cond_6
    if-eqz v1, :cond_7

    const/4 v1, 0x3

    .line 24
    :goto_2
    or-int/lit8 v0, v0, 0x4

    or-int/2addr v1, v0

    goto :goto_0

    .line 23
    :cond_7
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dmd;->a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;Z)Lcom/google/android/gms/internal/ads/doz;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dmj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dpa;->a()Lcom/google/android/gms/internal/ads/doz;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dmj;->d:Z

    .line 31
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmj;->d:Z

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;Z)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/doy;->a(ILjava/lang/Object;)V

    .line 144
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dmd;->a(F)V

    goto :goto_0

    .line 140
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dmd;->a(I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(JZ)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/doy;->a(JZ)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->i()V

    .line 83
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dmj;->i:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmj;->j:Z

    .line 85
    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 7

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 57
    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    const-string/jumbo v3, "mime"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_1
    if-eqz v2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    .line 60
    :cond_0
    const-string/jumbo v2, "channel-count"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 61
    const-string/jumbo v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 62
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dmj;->e:Z

    if-eqz v4, :cond_3

    if-ne v2, v5, :cond_3

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmj;->h:I

    if-ge v4, v5, :cond_3

    .line 63
    iget v4, p0, Lcom/google/android/gms/internal/ads/dmj;->h:I

    new-array v6, v4, [I

    .line 64
    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/dmj;->h:I

    if-ge v0, v4, :cond_4

    .line 65
    aput v0, v6, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    const-string/jumbo v1, "audio/raw"

    goto :goto_1

    .line 67
    :cond_3
    const/4 v6, 0x0

    .line 68
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmj;->g:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dmd;->a(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzij; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 70
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/doz;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dlf;Landroid/media/MediaCrypto;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 33
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/doz;->a:Ljava/lang/String;

    .line 34
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    const-string/jumbo v2, "OMX.SEC.aac.dec"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "samsung"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v2, "zeroflte"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v2, "herolte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v2, "heroqlte"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 38
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmj;->e:Z

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmj;->d:Z

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/dlf;->b()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "audio/raw"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    invoke-virtual {p2, v0, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/dlf;->b()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p2, v0, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 45
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dmj;->f:Landroid/media/MediaFormat;

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dlt;->a(Ljava/lang/String;JJ)V

    .line 49
    return-void
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/doy;->a(Z)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dlt;->a(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->q()Lcom/google/android/gms/internal/ads/dlk;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlk;->b:I

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dmd;->b(I)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->g()V

    goto :goto_0
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dmj;->d:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 133
    :goto_0
    return v0

    .line 122
    :cond_0
    if-eqz p11, :cond_1

    .line 123
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 124
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v2, v1, Lcom/google/android/gms/internal/ads/dmt;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/dmt;->e:I

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dmd;->b()V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v2, p6, p9, p10}, Lcom/google/android/gms/internal/ads/dmd;->a(Ljava/nio/ByteBuffer;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v2, v1, Lcom/google/android/gms/internal/ads/dmt;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/dmt;->d:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzin; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/doy;->b(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dlt;->a(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 52
    const-string/jumbo v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/dlf;->n:I

    .line 53
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmj;->g:I

    .line 54
    iget v0, p1, Lcom/google/android/gms/internal/ads/dlf;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmj;->h:I

    .line 55
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/dsd;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->n()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->a()V

    .line 88
    return-void
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->h()V

    .line 90
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->o()V

    .line 91
    return-void
.end method

.method protected final p()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dlt;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dlt;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 99
    throw v0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dlt;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 108
    throw v0

    .line 105
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmj;->b:Lcom/google/android/gms/internal/ads/dlt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmj;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dlt;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 107
    throw v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()J
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dmd;->a(Z)J

    move-result-wide v0

    .line 112
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 113
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dmj;->j:Z

    if-eqz v2, :cond_1

    .line 114
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmj;->i:J

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmj;->j:Z

    .line 116
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmj;->i:J

    return-wide v0

    .line 114
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmj;->i:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final x()Lcom/google/android/gms/internal/ads/dlj;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->f()Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v0

    return-object v0
.end method

.method protected final y()V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmj;->c:Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmd;->c()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzin; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 136
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0
.end method
