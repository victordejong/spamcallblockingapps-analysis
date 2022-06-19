.class public final Lcom/google/android/gms/internal/ads/zzjc;
.super Lcom/google/android/gms/internal/ads/zzlv;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private zzaho:I

.field private zzahq:I

.field private final zzamm:Lcom/google/android/gms/internal/ads/zzik;

.field private final zzamn:Lcom/google/android/gms/internal/ads/zzit;

.field private zzamo:Z

.field private zzamp:Z

.field private zzamq:Landroid/media/MediaFormat;

.field private zzamr:J

.field private zzams:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzil;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzjt;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzil;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzjt;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzil;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzlx;",
            "Lcom/google/android/gms/internal/ads/zzjt<",
            "Lcom/google/android/gms/internal/ads/zzjv;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zzil;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    new-array v7, p2, [Lcom/google/android/gms/internal/ads/zzij;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzjt;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzig;[Lcom/google/android/gms/internal/ads/zzij;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzjt;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzig;[Lcom/google/android/gms/internal/ads/zzij;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzlx;",
            "Lcom/google/android/gms/internal/ads/zzjt<",
            "Lcom/google/android/gms/internal/ads/zzjv;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zzil;",
            "Lcom/google/android/gms/internal/ads/zzig;",
            "[",
            "Lcom/google/android/gms/internal/ads/zzij;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzlv;-><init>(ILcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzjt;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzit;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzjc;Lcom/google/android/gms/internal/ads/zzjf;)V

    invoke-direct {p1, p3, p7, p2}, Lcom/google/android/gms/internal/ads/zzit;-><init>(Lcom/google/android/gms/internal/ads/zzig;[Lcom/google/android/gms/internal/ads/zzij;Lcom/google/android/gms/internal/ads/zziz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzik;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzil;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzik;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzjc;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzams:Z

    return p1
.end method

.method private final zzax(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static zzb(IJJ)V
    .locals 0

    return-void
.end method

.method public static zzgd()V
    .locals 0

    return-void
.end method

.method public static zzx(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->zzfr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "audio/raw"

    :goto_1
    move-object v3, p1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:Landroid/media/MediaFormat;

    :cond_2
    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamp:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    if-ne v4, p1, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzaho:I

    if-ge p2, p1, :cond_3

    new-array p1, p2, [I

    :goto_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzaho:I

    if-ge v0, p2, :cond_4

    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    move-object v8, p1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzahq:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzit;->zza(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzix; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p1

    throw p1
.end method

.method public final onStarted()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->onStarted()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->play()V

    return-void
.end method

.method public final onStopped()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->pause()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->onStopped()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 7

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzbc(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v4, 0x10

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjc;->zzax(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzhj()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 p1, v4, 0x4

    or-int/2addr p1, v6

    return p1

    :cond_2
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzlx;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    :cond_3
    if-lt v1, v3, :cond_5

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahp:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzlw;->zzaw(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzht;->zzaho:I

    if-eq p2, v3, :cond_5

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzlw;->zzax(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x2

    :goto_1
    or-int/lit8 p1, v4, 0x4

    or-int/2addr p1, v6

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzht;Z)Lcom/google/android/gms/internal/ads/zzlw;
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjc;->zzax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzhj()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamo:Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamo:Z

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlv;->zza(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzht;Z)Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhd;->zza(ILjava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzit;->setStreamType(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzit;->setVolume(F)V

    return-void
.end method

.method public final zza(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlv;->zza(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzit;->reset()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamr:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzams:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlw;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;Landroid/media/MediaCrypto;)V
    .locals 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlw;->name:Ljava/lang/String;

    sget p4, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p4, v1, :cond_1

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpt;->MANUFACTURER:Ljava/lang/String;

    const-string p4, "samsung"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpt;->DEVICE:Ljava/lang/String;

    const-string p4, "zeroflte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "heroqlte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamp:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamo:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->zzfa()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->zzfa()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:Landroid/media/MediaFormat;

    return-void
.end method

.method public final zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamo:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzit;->zzfo()V

    return p3

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zziw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzjb; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_2
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzik;->zza(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zzd(Lcom/google/android/gms/internal/ads/zzht;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzb(Lcom/google/android/gms/internal/ads/zzht;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahq:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzahq:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzht;->zzaho:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzaho:I

    return-void
.end method

.method public final zze(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zze(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzjm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzei()Lcom/google/android/gms/internal/ads/zzia;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzia;->zzaif:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzit;->zzft()V

    return-void
.end method

.method public final zzea()Lcom/google/android/gms/internal/ads/zzpk;
    .locals 0

    return-object p0
.end method

.method public final zzeh()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzeh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzik;->zzb(Lcom/google/android/gms/internal/ads/zzjm;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzb(Lcom/google/android/gms/internal/ads/zzjm;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzeh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzb(Lcom/google/android/gms/internal/ads/zzjm;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamm:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzik;->zzb(Lcom/google/android/gms/internal/ads/zzjm;)V

    throw v0
.end method

.method public final zzfe()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzfe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->zzfe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfs()Lcom/google/android/gms/internal/ads/zzhz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->zzfs()Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v0

    return-object v0
.end method

.method public final zzgc()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzfe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzit;->zzj(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzams:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamr:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamr:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzams:Z

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamr:J

    return-wide v0
.end method

.method public final zzge()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzamn:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->zzfp()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzjb; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v0

    throw v0
.end method
