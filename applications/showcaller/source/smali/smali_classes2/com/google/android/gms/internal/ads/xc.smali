.class public final Lcom/google/android/gms/internal/ads/xc;
.super Lcom/google/android/gms/internal/ads/if;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final Q:Lcom/google/android/gms/internal/ads/lc;

.field private final R:Lcom/google/android/gms/internal/ads/tc;

.field private S:Z

.field private T:I

.field private U:I

.field private V:J

.field private W:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/kd;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/mc;)V
    .locals 1

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/ec;

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p3, p1, v0, p3}, Lcom/google/android/gms/internal/ads/if;-><init>(ILcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/kd;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tc;

    new-instance p3, Lcom/google/android/gms/internal/ads/vc;

    .line 2
    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/vc;-><init>(Lcom/google/android/gms/internal/ads/xc;Lcom/google/android/gms/internal/ads/wc;)V

    invoke-direct {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/tc;-><init>(Lcom/google/android/gms/internal/ads/cc;[Lcom/google/android/gms/internal/ads/ec;Lcom/google/android/gms/internal/ads/qc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    new-instance p1, Lcom/google/android/gms/internal/ads/lc;

    .line 3
    invoke-direct {p1, p4, p5}, Lcom/google/android/gms/internal/ads/lc;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/mc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    return-void
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/xc;)Lcom/google/android/gms/internal/ads/lc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    return-object p0
.end method

.method static synthetic X(Lcom/google/android/gms/internal/ads/xc;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/xc;->W:Z

    return p1
.end method


# virtual methods
.method protected final B(Lcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/zzanm;)I
    .locals 5

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzanm;->i:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hi;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/si;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v3, 0x10

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/qf;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/hf;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-lt v0, v2, :cond_4

    .line 5
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzanm;->v:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hf;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzanm;->u:I

    if-eq p2, v2, :cond_4

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hf;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x3

    :cond_5
    or-int/lit8 p1, v3, 0x4

    or-int/2addr p1, v1

    return p1
.end method

.method protected final H(Lcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/zzanm;Z)Lcom/google/android/gms/internal/ads/hf;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/if;->H(Lcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/zzanm;Z)Lcom/google/android/gms/internal/ads/hf;

    move-result-object p1

    return-object p1
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/if;->I()Z

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

.method protected final J(Lcom/google/android/gms/internal/ads/hf;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzanm;Landroid/media/MediaCrypto;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/hf;->a:Ljava/lang/String;

    .line 2
    sget p4, Lcom/google/android/gms/internal/ads/si;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge p4, v2, :cond_0

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/si;->c:Ljava/lang/String;

    const-string p4, "samsung"

    .line 3
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/si;->b:Ljava/lang/String;

    const-string p4, "zeroflte"

    .line 4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "heroqlte"

    .line 5
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xc;->S:Z

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzanm;->l()Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected final K(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/lc;->c(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final L(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/if;->L(Lcom/google/android/gms/internal/ads/zzanm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/lc;->d(Lcom/google/android/gms/internal/ads/zzanm;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzanm;->i:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzanm;->w:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/xc;->T:I

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->u:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/xc;->U:I

    return-void
.end method

.method protected final M(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8

    const-string p1, "channel-count"

    .line 1
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const-string v0, "sample-rate"

    .line 2
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v2, "audio/raw"

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/xc;->S:Z

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eqz p2, :cond_2

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/xc;->U:I

    if-ge p1, v1, :cond_1

    .line 3
    new-array p1, p1, [I

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/xc;->U:I

    if-ge p2, v0, :cond_0

    .line 4
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/4 v3, 0x6

    goto :goto_2

    :cond_2
    move v3, p1

    move-object v7, v0

    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/xc;->T:I

    const/4 v6, 0x0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/tc;->c(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaon; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->x()I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object p1

    throw p1
.end method

.method protected final N(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p11, :cond_0

    .line 1
    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 2
    iget p3, p1, Lcom/google/android/gms/internal/ads/gd;->e:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/gd;->e:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tc;->e()V

    return p2

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    .line 4
    invoke-virtual {p3, p6, p9, p10}, Lcom/google/android/gms/internal/ads/tc;->f(Ljava/nio/ByteBuffer;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 6
    iget p3, p1, Lcom/google/android/gms/internal/ads/gd;->d:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/gd;->d:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaoo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzaos; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_1
    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->x()I

    move-result p2

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object p1

    throw p1
.end method

.method protected final O()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->g()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaos; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->x()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/tc;->l(F)V

    return-void
.end method

.method public final c0()Lcom/google/android/gms/internal/ads/tb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->k()Lcom/google/android/gms/internal/ads/tb;

    move-result-object v0

    return-object v0
.end method

.method public final d0(Lcom/google/android/gms/internal/ads/tb;)Lcom/google/android/gms/internal/ads/tb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tc;->j(Lcom/google/android/gms/internal/ads/tb;)Lcom/google/android/gms/internal/ads/tb;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/gi;
    .locals 0

    return-object p0
.end method

.method public final o()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/if;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tc;->b(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/xc;->W:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/xc;->V:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xc;->V:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xc;->W:Z

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xc;->V:J

    return-wide v0
.end method

.method protected final q(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/if;->q(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lc;->b(Lcom/google/android/gms/internal/ads/gd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->w()Lcom/google/android/gms/internal/ads/wb;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/wb;->b:I

    return-void
.end method

.method protected final s(JZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/if;->s(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/tc;->n()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xc;->V:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/xc;->W:Z

    return-void
.end method

.method protected final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->d()V

    return-void
.end method

.method protected final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->m()V

    return-void
.end method

.method protected final v()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/if;->v()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gd;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lc;->f(Lcom/google/android/gms/internal/ads/gd;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gd;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/lc;->f(Lcom/google/android/gms/internal/ads/gd;)V

    .line 8
    throw v0

    :catchall_1
    move-exception v0

    .line 9
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/if;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gd;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/lc;->f(Lcom/google/android/gms/internal/ads/gd;)V

    .line 13
    throw v0

    :catchall_2
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gd;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xc;->Q:Lcom/google/android/gms/internal/ads/lc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/if;->P:Lcom/google/android/gms/internal/ads/gd;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/lc;->f(Lcom/google/android/gms/internal/ads/gd;)V

    .line 17
    throw v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/if;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->R:Lcom/google/android/gms/internal/ads/tc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
