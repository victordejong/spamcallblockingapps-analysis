.class public Lpi;
.super Lxn;
.source ""

# interfaces
.implements Lut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpi$b;
    }
.end annotation


# instance fields
.field public A0:I

.field public B0:J

.field public C0:Z

.field public D0:Z

.field public E0:J

.field public F0:I

.field public final o0:Landroid/content/Context;

.field public final p0:Lfi$a;

.field public final q0:Lgi;

.field public final r0:[J

.field public s0:I

.field public t0:Z

.field public u0:Z

.field public v0:Z

.field public w0:Landroid/media/MediaFormat;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;Lmj;ZLandroid/os/Handler;Lfi;Lgi;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lyn;",
            "Lmj<",
            "Lqj;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lfi;",
            "Lgi;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lxn;-><init>(ILyn;Lmj;ZZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpi;->o0:Landroid/content/Context;

    iput-object p7, p0, Lpi;->q0:Lgi;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lpi;->E0:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lpi;->r0:[J

    new-instance p1, Lfi$a;

    invoke-direct {p1, p5, p6}, Lfi$a;-><init>(Landroid/os/Handler;Lfi;)V

    iput-object p1, p0, Lpi;->p0:Lfi$a;

    new-instance p1, Lpi$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lpi$b;-><init>(Lpi;Lpi$a;)V

    invoke-interface {p7, p1}, Lgi;->f(Lgi$c;)V

    return-void
.end method

.method public static synthetic C0(Lpi;)Lfi$a;
    .locals 0

    iget-object p0, p0, Lpi;->p0:Lfi$a;

    return-object p0
.end method

.method public static synthetic D0(Lpi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lpi;->D0:Z

    return p1
.end method

.method public static G0(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnu;->c:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnu;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static H0(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.mp3.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnu;->c:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnu;->b:Ljava/lang/String;

    const-string v0, "baffin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "grand"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fortuna"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gprimelte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "j2y18lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ms01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static I0()Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lnu;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public D(Lwn;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .locals 1

    invoke-virtual {p0}, Lbg;->i()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lpi;->K0(Lwn;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iput v0, p0, Lpi;->s0:I

    iget-object v0, p1, Lwn;->a:Ljava/lang/String;

    invoke-static {v0}, Lpi;->G0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lpi;->u0:Z

    iget-object v0, p1, Lwn;->a:Ljava/lang/String;

    invoke-static {v0}, Lpi;->H0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lpi;->v0:Z

    iget-boolean v0, p1, Lwn;->f:Z

    iput-boolean v0, p0, Lpi;->t0:Z

    if-eqz v0, :cond_0

    const-string p1, "audio/raw"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lwn;->b:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lpi;->s0:I

    invoke-virtual {p0, p3, p1, v0, p5}, Lpi;->L0(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-boolean p2, p0, Lpi;->t0:Z

    if-eqz p2, :cond_1

    iput-object p1, p0, Lpi;->w0:Landroid/media/MediaFormat;

    iget-object p2, p3, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string p3, "mime"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lpi;->w0:Landroid/media/MediaFormat;

    :goto_1
    return-void
.end method

.method public E0(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-static {p2}, Lvt;->c(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p1, p2}, Lgi;->e(II)Z

    move-result p1

    return p1
.end method

.method public F0(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 2

    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->y:I

    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->y:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/Format;->B(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final J0(Lwn;Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    iget-object p1, p1, Lwn;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lnu;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lpi;->o0:Landroid/content/Context;

    invoke-static {p1}, Lnu;->V(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Landroidx/media2/exoplayer/external/Format;->l:I

    return p1
.end method

.method public K0(Lwn;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)I
    .locals 6

    invoke-virtual {p0, p1, p2}, Lpi;->J0(Lwn;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p3, v3

    invoke-virtual {p1, p2, v4, v2}, Lwn;->l(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, v4}, Lpi;->J0(Lwn;Landroidx/media2/exoplayer/external/Format;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public L0(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->y:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-static {v0, p2}, Leo;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p3}, Leo;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p2, Lnu;->a:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const/4 p3, 0x0

    const-string v1, "priority"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    invoke-static {}, Lpi;->I0()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string p2, "audio/ac4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const-string p2, "ac4-is-sync"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public M0(I)V
    .locals 0

    return-void
.end method

.method public N0()V
    .locals 0

    return-void
.end method

.method public O0(IJJ)V
    .locals 0

    return-void
.end method

.method public final P0()V
    .locals 5

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-virtual {p0}, Lpi;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lgi;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lpi;->D0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lpi;->B0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lpi;->B0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpi;->D0:Z

    :cond_1
    return-void
.end method

.method public R(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .locals 4

    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->y:I

    if-eq v3, v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method public S(Lyn;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyn;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lwn;",
            ">;"
        }
    .end annotation

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->x:I

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lpi;->E0(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lyn;->getPassthroughDecoderInfo()Lwn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Lyn;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Ldo;->k(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "audio/eac3"

    invoke-interface {p1, p2, p3, v1}, Lyn;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Leh;)Leh;
    .locals 1

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0, p1}, Lgi;->b(Leh;)Leh;

    move-result-object p1

    return-object p1
.end method

.method public b0(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lpi;->p0:Lfi$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lfi$a;->c(Ljava/lang/String;JJ)V

    return-void
.end method

.method public c0(Lwg;)V
    .locals 2

    invoke-super {p0, p1}, Lxn;->c0(Lwg;)V

    iget-object p1, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, p0, Lpi;->p0:Lfi$a;

    invoke-virtual {v0, p1}, Lfi$a;->f(Landroidx/media2/exoplayer/external/Format;)V

    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->z:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lpi;->x0:I

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    iput v0, p0, Lpi;->y0:I

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->A:I

    iput v0, p0, Lpi;->z0:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->B:I

    iput p1, p0, Lpi;->A0:I

    return-void
.end method

.method public d0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object p1, p0, Lpi;->w0:Landroid/media/MediaFormat;

    if-eqz p1, :cond_0

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvt;->c(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lpi;->w0:Landroid/media/MediaFormat;

    goto :goto_0

    :cond_0
    iget p1, p0, Lpi;->x0:I

    :goto_0
    move v1, p1

    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-boolean p1, p0, Lpi;->u0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v2, p1, :cond_1

    iget p2, p0, Lpi;->y0:I

    if-ge p2, p1, :cond_1

    new-array p1, p2, [I

    const/4 p2, 0x0

    :goto_1
    iget v0, p0, Lpi;->y0:I

    if-ge p2, v0, :cond_2

    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v5, p1

    :try_start_0
    iget-object v0, p0, Lpi;->q0:Lgi;

    const/4 v4, 0x0

    iget v6, p0, Lpi;->z0:I

    iget v7, p0, Lpi;->A0:I

    invoke-interface/range {v0 .. v7}, Lgi;->configure(IIII[III)V
    :try_end_0
    .catch Lgi$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbg;->h()I

    move-result p2

    invoke-static {p1, p2}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object p1

    throw p1
.end method

.method public e0(J)V
    .locals 4

    :goto_0
    iget v0, p0, Lpi;->F0:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpi;->r0:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->handleDiscontinuity()V

    iget v0, p0, Lpi;->F0:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lpi;->F0:I

    iget-object v3, p0, Lpi;->r0:[J

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f0(Lzi;)V
    .locals 5

    iget-boolean v0, p0, Lpi;->C0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lwi;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lzi;->d:J

    iget-wide v2, p0, Lpi;->B0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lzi;->d:J

    iput-wide v0, p0, Lpi;->B0:J

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpi;->C0:Z

    :cond_1
    iget-wide v0, p1, Lzi;->d:J

    iget-wide v2, p0, Lpi;->E0:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lpi;->E0:J

    return-void
.end method

.method public getMediaClock()Lut;
    .locals 0

    return-object p0
.end method

.method public getPlaybackParameters()Leh;
    .locals 1

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->getPlaybackParameters()Leh;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lbg;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lpi;->P0()V

    :cond_0
    iget-wide v0, p0, Lpi;->B0:J

    return-wide v0
.end method

.method public h0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
    .locals 0

    iget-boolean p1, p0, Lpi;->v0:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p9, p1

    if-nez p3, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lpi;->E0:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p12, p1, p3

    if-eqz p12, :cond_0

    move-wide p9, p1

    :cond_0
    iget-boolean p1, p0, Lpi;->t0:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_1
    if-eqz p11, :cond_2

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lxn;->m0:Lyi;

    iget p2, p1, Lyi;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Lyi;->f:I

    iget-object p1, p0, Lpi;->q0:Lgi;

    invoke-interface {p1}, Lgi;->handleDiscontinuity()V

    return p3

    :cond_2
    :try_start_0
    iget-object p1, p0, Lpi;->q0:Lgi;

    invoke-interface {p1, p6, p9, p10}, Lgi;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lxn;->m0:Lyi;

    iget p2, p1, Lyi;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lyi;->e:I
    :try_end_0
    .catch Lgi$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgi$d; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_3
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lbg;->h()I

    move-result p2

    invoke-static {p1, p2}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object p1

    throw p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lbg;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lji;

    iget-object p1, p0, Lpi;->q0:Lgi;

    invoke-interface {p1, p2}, Lgi;->c(Lji;)V

    goto :goto_0

    :cond_1
    check-cast p2, Luh;

    iget-object p1, p0, Lpi;->q0:Lgi;

    invoke-interface {p1, p2}, Lgi;->d(Luh;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lpi;->q0:Lgi;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lgi;->setVolume(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Lxn;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lxn;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iput-wide v0, p0, Lpi;->E0:J

    const/4 v0, 0x0

    iput v0, p0, Lpi;->F0:I

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lxn;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lpi;->p0:Lfi$a;

    iget-object v1, p0, Lxn;->m0:Lyi;

    invoke-virtual {v0, v1}, Lfi$a;->d(Lyi;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lpi;->p0:Lfi$a;

    iget-object v2, p0, Lxn;->m0:Lyi;

    invoke-virtual {v1, v2}, Lfi$a;->d(Lyi;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lxn;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lpi;->p0:Lfi$a;

    iget-object v2, p0, Lxn;->m0:Lyi;

    invoke-virtual {v1, v2}, Lfi$a;->d(Lyi;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lpi;->p0:Lfi$a;

    iget-object v2, p0, Lxn;->m0:Lyi;

    invoke-virtual {v1, v2}, Lfi$a;->d(Lyi;)V

    throw v0
.end method

.method public l(Z)V
    .locals 1

    invoke-super {p0, p1}, Lxn;->l(Z)V

    iget-object p1, p0, Lpi;->p0:Lfi$a;

    iget-object v0, p0, Lxn;->m0:Lyi;

    invoke-virtual {p1, v0}, Lfi$a;->e(Lyi;)V

    invoke-virtual {p0}, Lbg;->g()Llh;

    move-result-object p1

    iget p1, p1, Llh;->a:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0, p1}, Lgi;->enableTunnelingV21(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpi;->q0:Lgi;

    invoke-interface {p1}, Lgi;->disableTunneling()V

    :goto_0
    return-void
.end method

.method public m(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lxn;->m(JZ)V

    iget-object p3, p0, Lpi;->q0:Lgi;

    invoke-interface {p3}, Lgi;->flush()V

    iput-wide p1, p0, Lpi;->B0:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpi;->C0:Z

    iput-boolean p1, p0, Lpi;->D0:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lpi;->E0:J

    const/4 p1, 0x0

    iput p1, p0, Lpi;->F0:I

    return-void
.end method

.method public n()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Lxn;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->reset()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lpi;->q0:Lgi;

    invoke-interface {v1}, Lgi;->reset()V

    throw v0
.end method

.method public o()V
    .locals 1

    invoke-super {p0}, Lxn;->o()V

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->play()V

    return-void
.end method

.method public o0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->playToEndOfStream()V
    :try_end_0
    .catch Lgi$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0
.end method

.method public p()V
    .locals 1

    invoke-virtual {p0}, Lpi;->P0()V

    iget-object v0, p0, Lpi;->q0:Lgi;

    invoke-interface {v0}, Lgi;->pause()V

    invoke-super {p0}, Lxn;->p()V

    return-void
.end method

.method public q([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lbg;->q([Landroidx/media2/exoplayer/external/Format;J)V

    iget-wide p1, p0, Lpi;->E0:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iget p1, p0, Lpi;->F0:I

    iget-object p2, p0, Lpi;->r0:[J

    array-length p3, p2

    if-ne p1, p3, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    const/16 p3, 0x43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Too many stream changes, so dropping change at "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecAudioRenderer"

    invoke-static {p2, p1}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lpi;->F0:I

    :goto_0
    iget-object p1, p0, Lpi;->r0:[J

    iget p2, p0, Lpi;->F0:I

    add-int/lit8 p2, p2, -0x1

    iget-wide v0, p0, Lpi;->E0:J

    aput-wide v0, p1, p2

    :cond_1
    return-void
.end method

.method public u(Landroid/media/MediaCodec;Lwn;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    invoke-virtual {p0, p2, p4}, Lpi;->J0(Lwn;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iget v0, p0, Lpi;->s0:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2

    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->A:I

    if-nez p1, :cond_2

    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->B:I

    if-nez p1, :cond_2

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->A:I

    if-nez p1, :cond_2

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->B:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p3, p4, p1}, Lwn;->l(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    invoke-virtual {p0, p3, p4}, Lpi;->F0(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public y0(Lyn;Lmj;Landroidx/media2/exoplayer/external/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyn;",
            "Lmj<",
            "Lqj;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v0}, Lvt;->k(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget v1, Lnu;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {p2, v3}, Lbg;->t(Lmj;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p2

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz p2, :cond_2

    iget v5, p3, Landroidx/media2/exoplayer/external/Format;->x:I

    invoke-virtual {p0, v5, v0}, Lpi;->E0(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lyn;->getPassthroughDecoderInfo()Lwn;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_2
    const-string v5, "audio/raw"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpi;->q0:Lgi;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v7, p3, Landroidx/media2/exoplayer/external/Format;->z:I

    invoke-interface {v0, v6, v7}, Lgi;->e(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lpi;->q0:Lgi;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->x:I

    const/4 v7, 0x2

    invoke-interface {v0, v6, v7}, Lgi;->e(II)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v5

    :cond_5
    invoke-virtual {p0, p1, p3, v2}, Lpi;->S(Lyn;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    :cond_6
    if-nez p2, :cond_7

    return v7

    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwn;

    invoke-virtual {p1, p3}, Lwn;->j(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1, p3}, Lwn;->k(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v4, 0x10

    :cond_8
    if-eqz p2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x3

    :goto_1
    or-int p1, v4, v1

    or-int/2addr p1, v3

    return p1
.end method
