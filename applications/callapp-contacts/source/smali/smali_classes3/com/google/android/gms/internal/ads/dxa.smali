.class public final Lcom/google/android/gms/internal/ads/dxa;
.super Lcom/google/android/gms/internal/ads/dzq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecv;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dwk;

.field private final c:Lcom/google/android/gms/internal/ads/dwt;

.field private d:Z

.field private e:Z

.field private f:Landroid/media/MediaFormat;

.field private g:I

.field private h:I

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dzs;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dxa;-><init>(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/dxq;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/dxq;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dzs;",
            "Lcom/google/android/gms/internal/ads/dxq<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/dwl;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    new-array v7, p2, [Lcom/google/android/gms/internal/ads/dwj;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/dxa;-><init>(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/dxq;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;Lcom/google/android/gms/internal/ads/dwh;[Lcom/google/android/gms/internal/ads/dwj;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/dxq;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;Lcom/google/android/gms/internal/ads/dwh;[Lcom/google/android/gms/internal/ads/dwj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dzs;",
            "Lcom/google/android/gms/internal/ads/dxq<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/dwl;",
            "Lcom/google/android/gms/internal/ads/dwh;",
            "[",
            "Lcom/google/android/gms/internal/ads/dwj;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p2, p1, p3, p2}, Lcom/google/android/gms/internal/ads/dzq;-><init>(ILcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/dxq;Z)V

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/dwt;

    new-instance p2, Lcom/google/android/gms/internal/ads/dxc;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/dxc;-><init>(Lcom/google/android/gms/internal/ads/dxa;Lcom/google/android/gms/internal/ads/dxd;)V

    invoke-direct {p1, p3, p7, p2}, Lcom/google/android/gms/internal/ads/dwt;-><init>(Lcom/google/android/gms/internal/ads/dwh;[Lcom/google/android/gms/internal/ads/dwj;Lcom/google/android/gms/internal/ads/dwx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/dwk;

    invoke-direct {p1, p4, p5}, Lcom/google/android/gms/internal/ads/dwk;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dxa;)Lcom/google/android/gms/internal/ads/dwk;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dxa;)Z
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxa;->j:Z

    return v0
.end method

.method protected static v()V
    .locals 0

    return-void
.end method

.method protected static w()V
    .locals 0

    return-void
.end method

.method protected static x()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 6394
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/dwt;->r:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6396
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6397
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv;->a(J)V

    const/4 v1, 0x0

    .line 6398
    iput v1, v0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    const/4 v1, 0x1

    .line 6399
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dwt;->r:Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzjb; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvi;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhe;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v0

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzmd;
        }
    .end annotation

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecu;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 12
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/dzs;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/dzr;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 18
    :cond_2
    sget v4, Lcom/google/android/gms/internal/ads/ede;->a:I

    if-lt v4, v3, :cond_a

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahz:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahz:I

    .line 1097
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/dzr;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v5, :cond_3

    const-string v3, "sampleRate.caps"

    .line 1098
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 1100
    :cond_3
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/dzr;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v3, "sampleRate.aCaps"

    .line 1102
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1104
    :cond_4
    invoke-virtual {v5, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x1f

    .line 1105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "sampleRate.support, "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_b

    .line 19
    :cond_6
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahy:I

    if-eq v3, v4, :cond_a

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahy:I

    .line 1108
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dzr;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v3, :cond_7

    const-string p2, "channelCount.caps"

    .line 1109
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    .line 1111
    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dzr;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-nez v3, :cond_8

    const-string p2, "channelCount.aCaps"

    .line 1113
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 1115
    :cond_8
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-ge v3, p2, :cond_9

    const/16 v3, 0x21

    .line 1116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "channelCount.support, "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    const/4 p1, 0x3

    goto :goto_5

    :cond_c
    const/4 p1, 0x2

    :goto_5
    or-int/lit8 p2, v1, 0x4

    or-int/2addr p1, p2

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dwt;->a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/zzht;Z)Lcom/google/android/gms/internal/ads/dzr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzmd;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxa;->d:Z

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dzq;->a(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/zzht;Z)Lcom/google/android/gms/internal/ads/dzr;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 141
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dzq;->a(ILjava/lang/Object;)V

    return-void

    .line 138
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 139
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 7446
    iget v0, p2, Lcom/google/android/gms/internal/ads/dwt;->h:I

    if-eq v0, p1, :cond_1

    .line 7448
    iput p1, p2, Lcom/google/android/gms/internal/ads/dwt;->h:I

    .line 7449
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/dwt;->u:Z

    if-nez p1, :cond_1

    .line 7451
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dwt;->f()V

    const/4 p1, 0x0

    .line 7452
    iput p1, p2, Lcom/google/android/gms/internal/ads/dwt;->t:I

    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 6459
    iget v0, p1, Lcom/google/android/gms/internal/ads/dwt;->q:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 6460
    iput p2, p1, Lcom/google/android/gms/internal/ads/dwt;->q:F

    .line 6461
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwt;->e()V

    :cond_3
    return-void
.end method

.method protected final a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dzq;->a(JZ)V

    .line 80
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/dwt;->f()V

    .line 81
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dxa;->i:J

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dxa;->j:Z

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 56
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dxa;->f:Landroid/media/MediaFormat;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "audio/raw"

    if-eqz v4, :cond_1

    const-string v6, "mime"

    .line 57
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    if-eqz v4, :cond_2

    .line 59
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dxa;->f:Landroid/media/MediaFormat;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p2

    :goto_2
    const-string v6, "channel-count"

    .line 60
    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    const-string v7, "sample-rate"

    .line 61
    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 62
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/dxa;->e:Z

    const/4 v8, 0x6

    if-eqz v7, :cond_3

    if-ne v6, v8, :cond_3

    iget v7, v1, Lcom/google/android/gms/internal/ads/dxa;->h:I

    if-ge v7, v8, :cond_3

    .line 63
    new-array v7, v7, [I

    const/4 v9, 0x0

    .line 64
    :goto_3
    iget v10, v1, Lcom/google/android/gms/internal/ads/dxa;->h:I

    if-ge v9, v10, :cond_4

    .line 65
    aput v9, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 68
    :cond_4
    :try_start_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    iget v10, v1, Lcom/google/android/gms/internal/ads/dxa;->g:I

    .line 2106
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v5, :cond_a

    const/4 v15, -0x1

    .line 2108
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v15, 0x3

    goto :goto_4

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :sswitch_2
    const-string v2, "audio/ac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v15, 0x0

    goto :goto_4

    :sswitch_3
    const-string v2, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v15, 0x2

    :cond_5
    :goto_4
    if-eqz v15, :cond_9

    if-eq v15, v3, :cond_8

    if-eq v15, v14, :cond_7

    if-eq v15, v13, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/16 v0, 0x8

    goto :goto_5

    :cond_7
    const/4 v0, 0x7

    goto :goto_5

    :cond_8
    const/4 v0, 0x6

    goto :goto_5

    :cond_9
    const/4 v0, 0x5

    goto :goto_5

    :cond_a
    move v0, v10

    :goto_5
    if-nez v5, :cond_d

    .line 2117
    invoke-static {v10, v6}, Lcom/google/android/gms/internal/ads/ede;->b(II)I

    move-result v2

    iput v2, v9, Lcom/google/android/gms/internal/ads/dwt;->n:I

    .line 2118
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/dwt;->a:Lcom/google/android/gms/internal/ads/dwz;

    .line 3007
    iput-object v7, v2, Lcom/google/android/gms/internal/ads/dwz;->b:[I

    .line 2119
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/dwt;->b:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v7, v2

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v10, v7, :cond_c

    aget-object v8, v2, v10
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzix; {:try_start_0 .. :try_end_0} :catch_1

    .line 2120
    :try_start_1
    invoke-interface {v8, v4, v6, v0}, Lcom/google/android/gms/internal/ads/dwj;->a(III)Z

    move-result v16
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzix; {:try_start_1 .. :try_end_1} :catch_1

    or-int v15, v15, v16

    .line 2124
    :try_start_2
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/dwj;->a()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2125
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/dwj;->b()I

    move-result v6

    const/4 v0, 0x2

    :cond_b
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x6

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2123
    new-instance v0, Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    if-eqz v15, :cond_e

    .line 2129
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dwt;->a()V

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    :cond_e
    :goto_7
    const/16 v7, 0xc

    packed-switch v6, :pswitch_data_0

    .line 2147
    new-instance v0, Lcom/google/android/gms/internal/ads/zzix;

    goto/16 :goto_11

    .line 2145
    :pswitch_0
    sget v8, Lcom/google/android/gms/internal/ads/dvj;->a:I

    goto :goto_8

    :pswitch_1
    const/16 v8, 0x4fc

    goto :goto_8

    :pswitch_2
    const/16 v8, 0xfc

    goto :goto_8

    :pswitch_3
    const/16 v8, 0xdc

    goto :goto_8

    :pswitch_4
    const/16 v8, 0xcc

    goto :goto_8

    :pswitch_5
    const/16 v8, 0x1c

    goto :goto_8

    :pswitch_6
    const/16 v8, 0xc

    goto :goto_8

    :pswitch_7
    const/4 v8, 0x4

    .line 2148
    :goto_8
    sget v10, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v2, 0x17

    if-gt v10, v2, :cond_11

    const-string v2, "foster"

    sget-object v10, Lcom/google/android/gms/internal/ads/ede;->b:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "NVIDIA"

    sget-object v10, Lcom/google/android/gms/internal/ads/ede;->c:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eq v6, v13, :cond_10

    if-eq v6, v12, :cond_10

    if-eq v6, v11, :cond_f

    goto :goto_9

    .line 2150
    :cond_f
    sget v2, Lcom/google/android/gms/internal/ads/dvj;->a:I

    goto :goto_a

    :cond_10
    const/16 v2, 0xfc

    goto :goto_a

    :cond_11
    :goto_9
    move v2, v8

    .line 2153
    :goto_a
    sget v8, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v10, 0x19

    if-gt v8, v10, :cond_12

    const-string v8, "fugu"

    sget-object v10, Lcom/google/android/gms/internal/ads/ede;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v5, :cond_12

    if-ne v6, v3, :cond_12

    goto :goto_b

    :cond_12
    move v7, v2

    :goto_b
    if-nez v15, :cond_13

    .line 2155
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v9, Lcom/google/android/gms/internal/ads/dwt;->f:I

    if-ne v2, v0, :cond_13

    iget v2, v9, Lcom/google/android/gms/internal/ads/dwt;->d:I

    if-ne v2, v4, :cond_13

    iget v2, v9, Lcom/google/android/gms/internal/ads/dwt;->e:I

    if-eq v2, v7, :cond_1c

    .line 2157
    :cond_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dwt;->f()V

    .line 2158
    iput v0, v9, Lcom/google/android/gms/internal/ads/dwt;->f:I

    .line 2159
    iput-boolean v5, v9, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    .line 2160
    iput v4, v9, Lcom/google/android/gms/internal/ads/dwt;->d:I

    .line 2161
    iput v7, v9, Lcom/google/android/gms/internal/ads/dwt;->e:I

    if-eqz v5, :cond_14

    goto :goto_c

    :cond_14
    const/4 v0, 0x2

    .line 2162
    :goto_c
    iput v0, v9, Lcom/google/android/gms/internal/ads/dwt;->g:I

    .line 2163
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/ede;->b(II)I

    move-result v0

    iput v0, v9, Lcom/google/android/gms/internal/ads/dwt;->o:I

    if-eqz v5, :cond_17

    .line 2165
    iget v0, v9, Lcom/google/android/gms/internal/ads/dwt;->g:I

    if-eq v0, v12, :cond_16

    iget v0, v9, Lcom/google/android/gms/internal/ads/dwt;->g:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_15

    goto :goto_d

    :cond_15
    const v0, 0xc000

    goto :goto_f

    :cond_16
    :goto_d
    const/16 v0, 0x5000

    goto :goto_f

    .line 2168
    :cond_17
    iget v0, v9, Lcom/google/android/gms/internal/ads/dwt;->g:I

    .line 2169
    invoke-static {v4, v7, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x1

    goto :goto_e

    :cond_18
    const/4 v2, 0x0

    .line 2170
    :goto_e
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    shl-int/lit8 v2, v0, 0x2

    const-wide/32 v3, 0x3d090

    .line 2172
    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/ads/dwt;->b(J)J

    move-result-wide v3

    long-to-int v4, v3

    iget v3, v9, Lcom/google/android/gms/internal/ads/dwt;->o:I

    mul-int v3, v3, v4

    int-to-long v6, v0

    const-wide/32 v10, 0xb71b0

    .line 2174
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/ads/dwt;->b(J)J

    move-result-wide v10

    iget v0, v9, Lcom/google/android/gms/internal/ads/dwt;->o:I

    int-to-long v12, v0

    mul-long v10, v10, v12

    .line 2175
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    if-ge v2, v3, :cond_19

    move v0, v3

    goto :goto_f

    :cond_19
    if-le v2, v0, :cond_1a

    goto :goto_f

    :cond_1a
    move v0, v2

    .line 2178
    :goto_f
    iput v0, v9, Lcom/google/android/gms/internal/ads/dwt;->j:I

    if-eqz v5, :cond_1b

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_10

    .line 2179
    :cond_1b
    iget v0, v9, Lcom/google/android/gms/internal/ads/dwt;->j:I

    iget v2, v9, Lcom/google/android/gms/internal/ads/dwt;->o:I

    div-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/ads/dwt;->a(J)J

    move-result-wide v2

    :goto_10
    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/dwt;->k:J

    .line 2180
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/dwt;->a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;

    :cond_1c
    return-void

    :goto_11
    const/16 v2, 0x26

    .line 2147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzix; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvi;->r()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzhe;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_3
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dzr;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 4

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dzr;->a:Ljava/lang/String;

    .line 34
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/ede;->c:Ljava/lang/String;

    const-string v0, "samsung"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/ede;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/ede;->b:Ljava/lang/String;

    const-string v0, "herolte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/ede;->b:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dxa;->e:Z

    .line 39
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/dxa;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->zzfe()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->f:Landroid/media/MediaFormat;

    const-string v2, "mime"

    const-string v3, "audio/raw"

    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->f:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->f:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->zzfe()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->f:Landroid/media/MediaFormat;

    return-void
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    .line 2008
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    if-eqz v0, :cond_0

    .line 2009
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/dwm;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dwm;-><init>(Lcom/google/android/gms/internal/ads/dwk;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dzq;->a(Z)V

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    .line 4005
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    if-eqz v1, :cond_0

    .line 4006
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/dwn;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/dwn;-><init>(Lcom/google/android/gms/internal/ads/dwk;Lcom/google/android/gms/internal/ads/dxk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvi;->q()Lcom/google/android/gms/internal/ads/dwb;

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 4454
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dwt;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4455
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/dwt;->u:Z

    .line 4456
    iput v0, p1, Lcom/google/android/gms/internal/ads/dwt;->t:I

    .line 4457
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwt;->f()V

    :cond_1
    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 117
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/dxa;->d:Z

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p5, p7, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p4

    :cond_0
    if-eqz p11, :cond_2

    .line 121
    invoke-virtual {p5, p7, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 122
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget p3, p1, Lcom/google/android/gms/internal/ads/dxk;->e:I

    add-int/2addr p3, p4

    iput p3, p1, Lcom/google/android/gms/internal/ads/dxk;->e:I

    .line 123
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 6202
    iget p3, p1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    if-ne p3, p4, :cond_1

    .line 6203
    iput p2, p1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    :cond_1
    return p4

    .line 125
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/android/gms/internal/ads/dwt;->a(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p5, p7, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 127
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget p2, p1, Lcom/google/android/gms/internal/ads/dxk;->d:I

    add-int/2addr p2, p4

    iput p2, p1, Lcom/google/android/gms/internal/ads/dxk;->d:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zziw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzjb; {:try_start_0 .. :try_end_0} :catch_0

    return p4

    :cond_3
    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvi;->r()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p1

    throw p1
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dzq;->b(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    .line 2011
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    if-eqz v1, :cond_0

    .line 2012
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/dwp;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/dwp;-><init>(Lcom/google/android/gms/internal/ads/dwk;Lcom/google/android/gms/internal/ads/zzht;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzaia:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 53
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxa;->g:I

    .line 54
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahy:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/dxa;->h:I

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ecv;
    .locals 0

    return-object p0
.end method

.method protected final n()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->n()V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->b()V

    return-void
.end method

.method protected final o()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    const/4 v1, 0x0

    .line 4471
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dwt;->s:Z

    .line 4472
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4473
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->i()V

    .line 4474
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv;->d()V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->o()V

    return-void
.end method

.method protected final p()V
    .locals 6

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 4514
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->f()V

    .line 4515
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->b:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 4516
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dwj;->g()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4518
    :cond_0
    iput v3, v0, Lcom/google/android/gms/internal/ads/dwt;->t:I

    .line 4519
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/dwt;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwk;->a(Lcom/google/android/gms/internal/ads/dxk;)V

    return-void

    :catchall_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwk;->a(Lcom/google/android/gms/internal/ads/dxk;)V

    .line 97
    throw v0

    :catchall_1
    move-exception v0

    .line 99
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwk;->a(Lcom/google/android/gms/internal/ads/dxk;)V

    .line 106
    throw v0

    :catchall_2
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxa;->b:Lcom/google/android/gms/internal/ads/dwk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxa;->a:Lcom/google/android/gms/internal/ads/dxk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwk;->a(Lcom/google/android/gms/internal/ads/dxk;)V

    .line 105
    throw v0
.end method

.method public final t()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->t()Z

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

.method public final u()Z
    .locals 4

    .line 107
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 5421
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/dwt;->r:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwt;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public final y()J
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwt;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 111
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dxa;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dxa;->i:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxa;->i:J

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxa;->j:Z

    .line 114
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dxa;->i:J

    return-wide v0
.end method

.method public final z()Lcom/google/android/gms/internal/ads/dvz;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxa;->c:Lcom/google/android/gms/internal/ads/dwt;

    .line 5445
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    return-object v0
.end method
