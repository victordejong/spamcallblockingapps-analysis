.class public final Lcom/google/android/gms/internal/ads/x92;
.super Lcom/google/android/gms/internal/ads/ey2;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u9;


# instance fields
.field private final E0:Landroid/content/Context;

.field private final F0:Lcom/google/android/gms/internal/ads/hh1;

.field private final G0:Lcom/google/android/gms/internal/ads/jo1;

.field private H0:I

.field private I0:Z

.field private J0:Lcom/google/android/gms/internal/ads/u4;

.field private K0:J

.field private L0:Z

.field private M0:Z

.field private N0:Z

.field private O0:Lcom/google/android/gms/internal/ads/s6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/av2;Lcom/google/android/gms/internal/ads/g03;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/ii1;Lcom/google/android/gms/internal/ads/jo1;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ey2;-><init>(ILcom/google/android/gms/internal/ads/av2;Lcom/google/android/gms/internal/ads/g03;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->E0:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    new-instance p1, Lcom/google/android/gms/internal/ads/hh1;

    .line 3
    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/hh1;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/ii1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    new-instance p1, Lcom/google/android/gms/internal/ads/v72;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/v72;-><init>(Lcom/google/android/gms/internal/ads/x92;Lcom/google/android/gms/internal/ads/w82;)V

    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/jo1;->n(Lcom/google/android/gms/internal/ads/il1;)V

    return-void
.end method

.method static synthetic H0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/hh1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    return-object p0
.end method

.method private final I0(Lcom/google/android/gms/internal/ads/vw2;Lcom/google/android/gms/internal/ads/u4;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vw2;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->E0:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/u4;->o:I

    return p1
.end method

.method private final J0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ey2;->G()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jo1;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/x92;->M0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/x92;->K0:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/x92;->K0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->M0:Z

    :cond_1
    return-void
.end method

.method static synthetic K0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/s6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x92;->O0:Lcom/google/android/gms/internal/ads/s6;

    return-object p0
.end method


# virtual methods
.method protected final A0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hh1;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected final B0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hh1;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final C0(Lcom/google/android/gms/internal/ads/v4;)Lcom/google/android/gms/internal/ads/nn;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/ey2;->C0(Lcom/google/android/gms/internal/ads/v4;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/u4;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/hh1;->c(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    return-object v0
.end method

.method protected final D0(Lcom/google/android/gms/internal/ads/u4;Landroid/media/MediaFormat;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->J0:Lcom/google/android/gms/internal/ads/u4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ey2;->j0()Lcom/google/android/gms/internal/ads/ef3;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    goto :goto_0

    .line 4
    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->o(I)I

    move-result v0

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 10
    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/ads/s4;

    .line 11
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 12
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 13
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/s4;->D(I)Lcom/google/android/gms/internal/ads/s4;

    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->D:I

    .line 14
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/s4;->E(I)Lcom/google/android/gms/internal/ads/s4;

    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->E:I

    .line 15
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/s4;->F(I)Lcom/google/android/gms/internal/ads/s4;

    const-string v0, "channel-count"

    .line 16
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    const-string v0, "sample-rate"

    .line 17
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->I0:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/google/android/gms/internal/ads/u4;->A:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    .line 19
    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    if-ge v0, v3, :cond_6

    .line 20
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 21
    :goto_1
    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    if-ge v0, v3, :cond_6

    .line 22
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 23
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/jo1;->f(Lcom/google/android/gms/internal/ads/u4;I[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdr;->zza:Lcom/google/android/gms/internal/ads/u4;

    const/16 v0, 0x1389

    .line 25
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/v2;->i(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/u4;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    .line 26
    throw p1
.end method

.method public final G()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ey2;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ey2;->J()Z

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

.method protected final L0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->M0:Z

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    check-cast p2, Lcom/google/android/gms/internal/ads/s6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x92;->O0:Lcom/google/android/gms/internal/ads/s6;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/jo1;->k(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/jo1;->m(Z)V

    return-void

    .line 4
    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/ads/gk3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/jo1;->p(Lcom/google/android/gms/internal/ads/gk3;)V

    return-void

    .line 6
    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/h83;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/jo1;->c(Lcom/google/android/gms/internal/ads/h83;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/jo1;->i(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/internal/ads/d6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jo1;->b(Lcom/google/android/gms/internal/ads/d6;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method protected final m(ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ey2;->m(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hh1;->a(Lcom/google/android/gms/internal/ads/nm;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->h()Lcom/google/android/gms/internal/ads/v6;

    return-void
.end method

.method protected final n(JZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ey2;->n(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/jo1;->zzt()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x92;->K0:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/x92;->L0:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/x92;->M0:Z

    return-void
.end method

.method protected final o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->d()V

    return-void
.end method

.method protected final p()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/x92;->J0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->o()V

    return-void
.end method

.method protected final q()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->N0:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->zzt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ey2;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hh1;->g(Lcom/google/android/gms/internal/ads/nm;)V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hh1;->g(Lcom/google/android/gms/internal/ads/nm;)V

    .line 6
    throw v0

    :catchall_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ey2;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hh1;->g(Lcom/google/android/gms/internal/ads/nm;)V

    .line 10
    throw v0

    :catchall_2
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hh1;->g(Lcom/google/android/gms/internal/ads/nm;)V

    .line 12
    throw v0
.end method

.method protected final r()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ey2;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/x92;->N0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->N0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->zzu()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/x92;->N0:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->N0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->zzu()V

    .line 5
    :goto_0
    throw v1
.end method

.method protected final t(Lcom/google/android/gms/internal/ads/z3;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/x92;->L0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/a24;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/z3;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/x92;->K0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/z3;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/x92;->K0:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/x92;->L0:Z

    :cond_1
    return-void
.end method

.method protected final t0(Lcom/google/android/gms/internal/ads/g03;Lcom/google/android/gms/internal/ads/u4;)I
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y9;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p2, Lcom/google/android/gms/internal/ads/u4;->G:I

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ey2;->i0(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 5
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/jo1;->l(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/mc3;->a()Lcom/google/android/gms/internal/ads/vw2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, v0, 0xc

    return p1

    .line 7
    :cond_3
    :goto_1
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/jo1;->l(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 8
    iget v5, p2, Lcom/google/android/gms/internal/ads/u4;->A:I

    iget v6, p2, Lcom/google/android/gms/internal/ads/u4;->B:I

    const/4 v7, 0x2

    .line 9
    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/ads/wa;->n(III)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v5

    .line 10
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/jo1;->l(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result v2

    if-nez v2, :cond_6

    return v4

    .line 11
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/x92;->u0(Lcom/google/android/gms/internal/ads/g03;Lcom/google/android/gms/internal/ads/u4;Z)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    :cond_7
    if-nez v3, :cond_8

    return v7

    .line 13
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/vw2;

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vw2;->c(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vw2;->d(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x10

    :cond_9
    if-eq v4, v1, :cond_a

    const/4 p1, 0x3

    goto :goto_3

    :cond_a
    const/4 p1, 0x4

    :goto_3
    or-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method public final u()Lcom/google/android/gms/internal/ads/d6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->j()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v0

    return-object v0
.end method

.method protected final u0(Lcom/google/android/gms/internal/ads/g03;Lcom/google/android/gms/internal/ads/u4;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/g03;",
            "Lcom/google/android/gms/internal/ads/u4;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/vw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 3
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/jo1;->l(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/mc3;->a()Lcom/google/android/gms/internal/ads/vw2;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    .line 6
    invoke-static {p1, p3, p3}, Lcom/google/android/gms/internal/ads/mc3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/mc3;->d(Ljava/util/List;Lcom/google/android/gms/internal/ads/u4;)Ljava/util/List;

    move-result-object p2

    const-string v0, "audio/eac3-joc"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 10
    invoke-static {p2, p3, p3}, Lcom/google/android/gms/internal/ads/mc3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, p1

    .line 12
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->T()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/x92;->J0()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/x92;->K0:J

    return-wide v0
.end method

.method protected final v0(Lcom/google/android/gms/internal/ads/u4;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jo1;->l(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result p1

    return p1
.end method

.method protected final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->zzg()V

    return-void
.end method

.method protected final w0(Lcom/google/android/gms/internal/ads/vw2;Lcom/google/android/gms/internal/ads/u4;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zt2;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->g()[Lcom/google/android/gms/internal/ads/u4;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/x92;->I0(Lcom/google/android/gms/internal/ads/vw2;Lcom/google/android/gms/internal/ads/u4;)I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 3
    aget-object v5, p3, v4

    .line 4
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/internal/ads/vw2;->e(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/u4;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/nn;->d:I

    if-eqz v6, :cond_1

    .line 5
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/x92;->I0(Lcom/google/android/gms/internal/ads/vw2;Lcom/google/android/gms/internal/ads/u4;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/x92;->H0:I

    .line 7
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/vw2;->a:Ljava/lang/String;

    .line 8
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v4, "OMX.SEC.aac.dec"

    .line 9
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/wa;->c:Ljava/lang/String;

    const-string v4, "samsung"

    .line 10
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/wa;->b:Ljava/lang/String;

    const-string v4, "zeroflte"

    .line 11
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "herolte"

    .line 12
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "heroqlte"

    .line 13
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/x92;->I0:Z

    .line 14
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/vw2;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/x92;->H0:I

    .line 15
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    .line 16
    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget p3, p2, Lcom/google/android/gms/internal/ads/u4;->A:I

    const-string v6, "channel-count"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 18
    iget p3, p2, Lcom/google/android/gms/internal/ads/u4;->B:I

    const-string v6, "sample-rate"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    invoke-static {v5, p3}, Lcom/google/android/gms/internal/ads/v9;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p3, "max-input-size"

    .line 20
    invoke-static {v5, p3, v4}, Lcom/google/android/gms/internal/ads/v9;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 p3, 0x17

    if-lt v0, p3, :cond_6

    const-string v4, "priority"

    .line 21
    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_6

    if-ne v0, p3, :cond_5

    sget-object p3, Lcom/google/android/gms/internal/ads/wa;->d:Ljava/lang/String;

    const-string v2, "ZTE B2017G"

    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "AXON 7 mini"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    const-string p3, "operating-rate"

    .line 23
    invoke-virtual {v5, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_6
    const/16 p3, 0x1c

    if-gt v0, p3, :cond_7

    .line 24
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "ac4-is-sync"

    .line 25
    invoke-virtual {v5, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_7
    if-lt v0, v1, :cond_8

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 26
    iget p4, p2, Lcom/google/android/gms/internal/ads/u4;->A:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/u4;->B:I

    const/4 v1, 0x4

    .line 27
    invoke-static {v1, p4, v0}, Lcom/google/android/gms/internal/ads/wa;->n(III)Lcom/google/android/gms/internal/ads/u4;

    move-result-object p4

    .line 28
    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/jo1;->e(Lcom/google/android/gms/internal/ads/u4;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_8

    const-string p3, "pcm-encoding"

    .line 29
    invoke-virtual {v5, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 30
    :cond_8
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/vw2;->b:Ljava/lang/String;

    const-string p4, "audio/raw"

    .line 31
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    .line 32
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    move-object p3, p2

    goto :goto_3

    :cond_9
    move-object p3, v0

    :goto_3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/x92;->J0:Lcom/google/android/gms/internal/ads/u4;

    invoke-static {p1, v5, p2, v0}, Lcom/google/android/gms/internal/ads/zt2;->a(Lcom/google/android/gms/internal/ads/vw2;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/u4;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zt2;

    move-result-object p1

    return-object p1
.end method

.method protected final x()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jo1;->zzi()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdv; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Lcom/google/android/gms/internal/ads/u4;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/v2;->i(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/u4;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    throw v0
.end method

.method protected final x0(Lcom/google/android/gms/internal/ads/vw2;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/u4;)Lcom/google/android/gms/internal/ads/nn;
    .locals 9

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/vw2;->e(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/u4;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/nn;->e:I

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/x92;->I0(Lcom/google/android/gms/internal/ads/vw2;Lcom/google/android/gms/internal/ads/u4;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/x92;->H0:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    new-instance v8, Lcom/google/android/gms/internal/ads/nn;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/vw2;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    move v7, v1

    const/4 v6, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget v0, v0, Lcom/google/android/gms/internal/ads/nn;->d:I

    move v6, v0

    const/4 v7, 0x0

    :goto_0
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/nn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/u4;II)V

    return-object v8
.end method

.method protected final y(JJLcom/google/android/gms/internal/ads/ef3;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/u4;)Z
    .locals 0

    .line 1
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->J0:Lcom/google/android/gms/internal/ads/u4;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p5, p7, p3}, Lcom/google/android/gms/internal/ads/ef3;->h(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 4
    invoke-virtual {p5, p7, p3}, Lcom/google/android/gms/internal/ads/ef3;->h(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    .line 5
    iget p3, p1, Lcom/google/android/gms/internal/ads/nm;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/nm;->f:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jo1;->zzg()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x92;->G0:Lcom/google/android/gms/internal/ads/jo1;

    .line 7
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/jo1;->q(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzdv; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 8
    invoke-virtual {p5, p7, p3}, Lcom/google/android/gms/internal/ads/ef3;->h(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ey2;->x0:Lcom/google/android/gms/internal/ads/nm;

    .line 9
    iget p3, p1, Lcom/google/android/gms/internal/ads/nm;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/nm;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    const/16 p3, 0x138a

    .line 10
    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/v2;->i(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/u4;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzds;->zzb:Lcom/google/android/gms/internal/ads/u4;

    const/16 p4, 0x1389

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/v2;->i(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/u4;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    throw p1
.end method

.method protected final y0(FLcom/google/android/gms/internal/ads/u4;[Lcom/google/android/gms/internal/ads/u4;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/gms/internal/ads/u4;->B:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v2

    mul-float p2, p2, p1

    return p2
.end method

.method protected final z0(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x92;->F0:Lcom/google/android/gms/internal/ads/hh1;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hh1;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/u9;
    .locals 0

    return-object p0
.end method
