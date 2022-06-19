.class public abstract Lxn;
.super Lbg;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxn$a;
    }
.end annotation


# static fields
.field public static final n0:[B


# instance fields
.field public A:Landroid/media/MediaCrypto;

.field public B:Z

.field public C:J

.field public D:F

.field public E:Landroid/media/MediaCodec;

.field public F:Landroidx/media2/exoplayer/external/Format;

.field public G:F

.field public H:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lwn;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lxn$a;

.field public J:Lwn;

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:[Ljava/nio/ByteBuffer;

.field public V:[Ljava/nio/ByteBuffer;

.field public W:J

.field public X:I

.field public Y:I

.field public Z:Ljava/nio/ByteBuffer;

.field public a0:Z

.field public b0:Z

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public final l:Lyn;

.field public l0:Z

.field public final m:Lmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmj<",
            "Lqj;",
            ">;"
        }
    .end annotation
.end field

.field public m0:Lyi;

.field public final n:Z

.field public final o:Z

.field public final p:F

.field public final q:Lzi;

.field public final r:Lzi;

.field public final s:Lwg;

.field public final t:Liu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liu<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Landroid/media/MediaCodec$BufferInfo;

.field public w:Landroidx/media2/exoplayer/external/Format;

.field public x:Landroidx/media2/exoplayer/external/Format;

.field public y:Llj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llj<",
            "Lqj;",
            ">;"
        }
    .end annotation
.end field

.field public z:Llj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llj<",
            "Lqj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lnu;->v(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lxn;->n0:[B

    return-void
.end method

.method public constructor <init>(ILyn;Lmj;ZZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lyn;",
            "Lmj<",
            "Lqj;",
            ">;ZZF)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbg;-><init>(I)V

    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lyn;

    iput-object p2, p0, Lxn;->l:Lyn;

    iput-object p3, p0, Lxn;->m:Lmj;

    iput-boolean p4, p0, Lxn;->n:Z

    iput-boolean p5, p0, Lxn;->o:Z

    iput p6, p0, Lxn;->p:F

    new-instance p1, Lzi;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lzi;-><init>(I)V

    iput-object p1, p0, Lxn;->q:Lzi;

    invoke-static {}, Lzi;->m()Lzi;

    move-result-object p1

    iput-object p1, p0, Lxn;->r:Lzi;

    new-instance p1, Lwg;

    invoke-direct {p1}, Lwg;-><init>()V

    iput-object p1, p0, Lxn;->s:Lwg;

    new-instance p1, Liu;

    invoke-direct {p1}, Liu;-><init>()V

    iput-object p1, p0, Lxn;->t:Liu;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lxn;->u:Ljava/util/ArrayList;

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iput p2, p0, Lxn;->c0:I

    iput p2, p0, Lxn;->d0:I

    iput p2, p0, Lxn;->e0:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lxn;->G:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lxn;->D:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lxn;->C:J

    return-void
.end method

.method public static A(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_0

    const-string v1, "OMX.SEC.avc.dec"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lnu;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static B(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 3

    sget v0, Lnu;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    if-ne p1, v1, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static C(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lnu;->d:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static U(Lzi;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    iget-object p0, p0, Lzi;->b:Lxi;

    invoke-virtual {p0}, Lxi;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public static w(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    sget-object v0, Lnu;->b:Ljava/lang/String;

    const-string v1, "hb2000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "stvm8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z(Lwn;)Z
    .locals 3

    iget-object v0, p0, Lwn;->a:Ljava/lang/String;

    sget v1, Lnu;->a:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_0

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lnu;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnu;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lwn;->e:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lxn;->z:Llj;

    invoke-interface {v0}, Llj;->getMediaCrypto()Loj;

    move-result-object v0

    check-cast v0, Lqj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxn;->l0()V

    return-void

    :cond_0
    sget-object v1, Lcg;->e:Ljava/util/UUID;

    iget-object v2, v0, Lqj;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lxn;->l0()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lxn;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lxn;->A:Landroid/media/MediaCrypto;

    iget-object v0, v0, Lqj;->b:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lxn;->z:Llj;

    invoke-virtual {p0, v0}, Lxn;->s0(Llj;)V

    const/4 v0, 0x0

    iput v0, p0, Lxn;->d0:I

    iput v0, p0, Lxn;->e0:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0
.end method

.method public final B0(J)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    iget-object v0, p0, Lxn;->t:Liu;

    invoke-virtual {v0, p1, p2}, Liu;->h(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lxn;->x:Landroidx/media2/exoplayer/external/Format;

    :cond_0
    return-object p1
.end method

.method public abstract D(Lwn;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
.end method

.method public final E()Z
    .locals 2

    sget-object v0, Lnu;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnu;->d:Ljava/lang/String;

    const-string v1, "AFTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AFTB"

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

.method public final F()V
    .locals 1

    iget-boolean v0, p0, Lxn;->f0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lxn;->d0:I

    iput v0, p0, Lxn;->e0:I

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 1

    iget-boolean v0, p0, Lxn;->f0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lxn;->d0:I

    const/4 v0, 0x3

    iput v0, p0, Lxn;->e0:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxn;->l0()V

    :goto_0
    return-void
.end method

.method public final H()V
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lxn;->G()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lxn;->f0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lxn;->d0:I

    const/4 v0, 0x2

    iput v0, p0, Lxn;->e0:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxn;->A0()V

    :goto_0
    return-void
.end method

.method public final I(JJ)Z
    .locals 16

    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lxn;->X()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, v13, Lxn;->P:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v13, Lxn;->g0:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v13, Lxn;->E:Landroid/media/MediaCodec;

    iget-object v1, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual/range {p0 .. p0}, Lxn;->T()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    invoke-virtual/range {p0 .. p0}, Lxn;->g0()V

    iget-boolean v0, v13, Lxn;->i0:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lxn;->m0()V

    :cond_0
    return v15

    :cond_1
    iget-object v0, v13, Lxn;->E:Landroid/media/MediaCodec;

    iget-object v1, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual/range {p0 .. p0}, Lxn;->T()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    if-gez v0, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lxn;->j0()V

    return v14

    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lxn;->i0()V

    return v14

    :cond_3
    iget-boolean v0, v13, Lxn;->T:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v13, Lxn;->h0:Z

    if-nez v0, :cond_4

    iget v0, v13, Lxn;->d0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lxn;->g0()V

    :cond_5
    return v15

    :cond_6
    iget-boolean v1, v13, Lxn;->S:Z

    if-eqz v1, :cond_7

    iput-boolean v15, v13, Lxn;->S:Z

    iget-object v1, v13, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v14

    :cond_7
    iget-object v1, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_8

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lxn;->g0()V

    return v15

    :cond_8
    iput v0, v13, Lxn;->Y:I

    invoke-virtual {v13, v0}, Lxn;->W(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Lxn;->Z:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    iget-object v1, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v13, Lxn;->Z:Ljava/nio/ByteBuffer;

    iget-object v1, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_9
    iget-object v0, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Lxn;->w0(J)Z

    move-result v0

    iput-boolean v0, v13, Lxn;->a0:Z

    iget-object v0, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Lxn;->B0(J)Landroidx/media2/exoplayer/external/Format;

    :cond_a
    iget-boolean v0, v13, Lxn;->P:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v13, Lxn;->g0:Z

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v5, v13, Lxn;->E:Landroid/media/MediaCodec;

    iget-object v6, v13, Lxn;->Z:Ljava/nio/ByteBuffer;

    iget v7, v13, Lxn;->Y:I

    iget-object v0, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Lxn;->a0:Z

    iget-object v12, v13, Lxn;->x:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v12}, Lxn;->h0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    invoke-virtual/range {p0 .. p0}, Lxn;->g0()V

    iget-boolean v0, v13, Lxn;->i0:Z

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lxn;->m0()V

    :cond_b
    return v15

    :cond_c
    iget-object v5, v13, Lxn;->E:Landroid/media/MediaCodec;

    iget-object v6, v13, Lxn;->Z:Ljava/nio/ByteBuffer;

    iget v7, v13, Lxn;->Y:I

    iget-object v0, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Lxn;->a0:Z

    iget-object v12, v13, Lxn;->x:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v12}, Lxn;->h0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_f

    iget-object v0, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Lxn;->e0(J)V

    iget-object v0, v13, Lxn;->v:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lxn;->r0()V

    if-nez v0, :cond_e

    return v14

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lxn;->g0()V

    :cond_f
    return v15
.end method

.method public final J()Z
    .locals 13

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget v2, p0, Lxn;->d0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    iget-boolean v2, p0, Lxn;->h0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lxn;->X:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lxn;->X:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lxn;->q:Lzi;

    invoke-virtual {p0, v0}, Lxn;->V(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lzi;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lzi;->b()V

    :cond_2
    iget v0, p0, Lxn;->d0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lxn;->T:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lxn;->g0:Z

    iget-object v4, p0, Lxn;->E:Landroid/media/MediaCodec;

    iget v5, p0, Lxn;->X:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {p0}, Lxn;->q0()V

    :goto_0
    iput v3, p0, Lxn;->d0:I

    return v1

    :cond_4
    iget-boolean v0, p0, Lxn;->R:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lxn;->R:Z

    iget-object v0, p0, Lxn;->q:Lzi;

    iget-object v0, v0, Lzi;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lxn;->n0:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lxn;->E:Landroid/media/MediaCodec;

    iget v4, p0, Lxn;->X:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {p0}, Lxn;->q0()V

    iput-boolean v2, p0, Lxn;->f0:Z

    return v2

    :cond_5
    iget-boolean v0, p0, Lxn;->j0:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    iget v0, p0, Lxn;->c0:I

    if-ne v0, v2, :cond_8

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lxn;->q:Lzi;

    iget-object v5, v5, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v3, p0, Lxn;->c0:I

    :cond_8
    iget-object v0, p0, Lxn;->q:Lzi;

    iget-object v0, v0, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v4, p0, Lxn;->s:Lwg;

    iget-object v5, p0, Lxn;->q:Lzi;

    invoke-virtual {p0, v4, v5, v1}, Lbg;->r(Lwg;Lzi;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    :goto_2
    const/4 v5, -0x3

    if-ne v0, v5, :cond_9

    return v1

    :cond_9
    const/4 v5, -0x5

    if-ne v0, v5, :cond_b

    iget v0, p0, Lxn;->c0:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lzi;->b()V

    iput v2, p0, Lxn;->c0:I

    :cond_a
    iget-object v0, p0, Lxn;->s:Lwg;

    invoke-virtual {p0, v0}, Lxn;->c0(Lwg;)V

    return v2

    :cond_b
    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lwi;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lxn;->c0:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lzi;->b()V

    iput v2, p0, Lxn;->c0:I

    :cond_c
    iput-boolean v2, p0, Lxn;->h0:Z

    iget-boolean v0, p0, Lxn;->f0:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lxn;->g0()V

    return v1

    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lxn;->T:Z

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    iput-boolean v2, p0, Lxn;->g0:Z

    iget-object v3, p0, Lxn;->E:Landroid/media/MediaCodec;

    iget v4, p0, Lxn;->X:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {p0}, Lxn;->q0()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0

    :cond_f
    iget-boolean v0, p0, Lxn;->k0:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lwi;->f()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lzi;->b()V

    iget v0, p0, Lxn;->c0:I

    if-ne v0, v3, :cond_10

    iput v2, p0, Lxn;->c0:I

    :cond_10
    return v2

    :cond_11
    iput-boolean v1, p0, Lxn;->k0:Z

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-virtual {v0}, Lzi;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lxn;->x0(Z)Z

    move-result v3

    iput-boolean v3, p0, Lxn;->j0:Z

    if-eqz v3, :cond_12

    return v1

    :cond_12
    iget-boolean v3, p0, Lxn;->M:Z

    if-eqz v3, :cond_14

    if-nez v0, :cond_14

    iget-object v3, p0, Lxn;->q:Lzi;

    iget-object v3, v3, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lwt;->b(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lxn;->q:Lzi;

    iget-object v3, v3, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    iput-boolean v1, p0, Lxn;->M:Z

    :cond_14
    :try_start_1
    iget-object v3, p0, Lxn;->q:Lzi;

    iget-wide v9, v3, Lzi;->d:J

    invoke-virtual {v3}, Lwi;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lxn;->u:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-boolean v3, p0, Lxn;->l0:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lxn;->t:Liu;

    iget-object v5, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v9, v10, v5}, Liu;->a(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lxn;->l0:Z

    :cond_16
    iget-object v3, p0, Lxn;->q:Lzi;

    invoke-virtual {v3}, Lzi;->j()V

    iget-object v3, p0, Lxn;->q:Lzi;

    invoke-virtual {p0, v3}, Lxn;->f0(Lzi;)V

    if-eqz v0, :cond_17

    iget-object v0, p0, Lxn;->q:Lzi;

    invoke-static {v0, v4}, Lxn;->U(Lzi;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v8

    iget-object v5, p0, Lxn;->E:Landroid/media/MediaCodec;

    iget v6, p0, Lxn;->X:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    :cond_17
    iget-object v5, p0, Lxn;->E:Landroid/media/MediaCodec;

    iget v6, p0, Lxn;->X:I

    const/4 v7, 0x0

    iget-object v0, p0, Lxn;->q:Lzi;

    iget-object v0, v0, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_4
    invoke-virtual {p0}, Lxn;->q0()V

    iput-boolean v2, p0, Lxn;->f0:Z

    iput v1, p0, Lxn;->c0:I

    iget-object v0, p0, Lxn;->m0:Lyi;

    iget v1, v0, Lyi;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lyi;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0

    :cond_18
    :goto_5
    return v1
.end method

.method public final K()Z
    .locals 1

    invoke-virtual {p0}, Lxn;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxn;->Z()V

    :cond_0
    return v0
.end method

.method public L()Z
    .locals 5

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lxn;->e0:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lxn;->N:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lxn;->O:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lxn;->g0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    invoke-virtual {p0}, Lxn;->q0()V

    invoke-virtual {p0}, Lxn;->r0()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lxn;->W:J

    iput-boolean v1, p0, Lxn;->g0:Z

    iput-boolean v1, p0, Lxn;->f0:Z

    iput-boolean v4, p0, Lxn;->k0:Z

    iput-boolean v1, p0, Lxn;->R:Z

    iput-boolean v1, p0, Lxn;->S:Z

    iput-boolean v1, p0, Lxn;->a0:Z

    iput-boolean v1, p0, Lxn;->j0:Z

    iget-object v0, p0, Lxn;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lxn;->d0:I

    iput v1, p0, Lxn;->e0:I

    iget-boolean v0, p0, Lxn;->b0:Z

    iput v0, p0, Lxn;->c0:I

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lxn;->m0()V

    return v4
.end method

.method public final M(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lwn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lxn;->l:Lyn;

    iget-object v1, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v0, v1, p1}, Lxn;->S(Lyn;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lxn;->l:Lyn;

    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lxn;->S(Lyn;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x63

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Drm session requires secure decoder for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final N()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final O(Landroid/media/MediaCodec;)V
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lxn;->U:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lxn;->V:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public final P()Lwn;
    .locals 1

    iget-object v0, p0, Lxn;->J:Lwn;

    return-object v0
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract R(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
.end method

.method public abstract S(Lyn;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
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
.end method

.method public T()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final V(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lxn;->U:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final W(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lxn;->V:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final X()Z
    .locals 1

    iget v0, p0, Lxn;->Y:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Y(Lwn;Landroid/media/MediaCrypto;)V
    .locals 12

    iget-object v1, p1, Lwn;->a:Ljava/lang/String;

    sget v0, Lnu;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lxn;->D:F

    iget-object v3, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Lbg;->i()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lxn;->R(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    :goto_0
    iget v3, p0, Lxn;->p:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-string v3, "createCodec:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    invoke-static {v3}, Lku;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-static {}, Lku;->c()V

    const-string v3, "configureCodec"

    invoke-static {v3}, Lku;->a(Ljava/lang/String;)V

    iget-object v7, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v8, p2

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lxn;->D(Lwn;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V

    invoke-static {}, Lku;->c()V

    const-string p2, "startCodec"

    invoke-static {p2}, Lku;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lku;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v0}, Lxn;->O(Landroid/media/MediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    iput-object p1, p0, Lxn;->J:Lwn;

    iput v2, p0, Lxn;->G:F

    iget-object p2, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    iput-object p2, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v1}, Lxn;->v(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lxn;->K:I

    invoke-static {v1}, Lxn;->C(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lxn;->L:Z

    iget-object p2, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1, p2}, Lxn;->w(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    iput-boolean p2, p0, Lxn;->M:Z

    invoke-static {v1}, Lxn;->A(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lxn;->N:Z

    invoke-static {v1}, Lxn;->x(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lxn;->O:Z

    invoke-static {v1}, Lxn;->y(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lxn;->P:Z

    iget-object p2, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1, p2}, Lxn;->B(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    iput-boolean p2, p0, Lxn;->Q:Z

    invoke-static {p1}, Lxn;->z(Lwn;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lxn;->Q()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p1, 0x1

    :goto_4
    iput-boolean p1, p0, Lxn;->T:Z

    invoke-virtual {p0}, Lxn;->q0()V

    invoke-virtual {p0}, Lxn;->r0()V

    invoke-virtual {p0}, Lbg;->getState()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    goto :goto_5

    :cond_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iput-wide v5, p0, Lxn;->W:J

    iput-boolean v0, p0, Lxn;->b0:Z

    iput v0, p0, Lxn;->c0:I

    iput-boolean v0, p0, Lxn;->g0:Z

    iput-boolean v0, p0, Lxn;->f0:Z

    iput v0, p0, Lxn;->d0:I

    iput v0, p0, Lxn;->e0:I

    iput-boolean v0, p0, Lxn;->R:Z

    iput-boolean v0, p0, Lxn;->S:Z

    iput-boolean v0, p0, Lxn;->a0:Z

    iput-boolean p2, p0, Lxn;->k0:Z

    iget-object p1, p0, Lxn;->m0:Lyi;

    iget v0, p1, Lyi;->a:I

    add-int/2addr v0, p2

    iput v0, p1, Lyi;->a:I

    sub-long p1, v3, v10

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lxn;->b0(Ljava/lang/String;JJ)V

    return-void

    :catch_0
    move-exception p1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lxn;->p0()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_6
    throw p1
.end method

.method public final Z()V
    .locals 6

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lxn;->z:Llj;

    invoke-virtual {p0, v0}, Lxn;->s0(Llj;)V

    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget-object v1, p0, Lxn;->y:Llj;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lxn;->A:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_4

    invoke-interface {v1}, Llj;->getMediaCrypto()Loj;

    move-result-object v1

    check-cast v1, Lqj;

    if-nez v1, :cond_2

    iget-object v0, p0, Lxn;->y:Llj;

    invoke-interface {v0}, Llj;->getError()Llj$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lqj;->a:Ljava/util/UUID;

    iget-object v5, v1, Lqj;->b:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lxn;->A:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, v1, Lqj;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lxn;->B:Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lxn;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lxn;->y:Llj;

    invoke-interface {v0}, Llj;->getState()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    :cond_5
    iget-object v0, p0, Lxn;->y:Llj;

    invoke-interface {v0}, Llj;->getError()Llj$a;

    move-result-object v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lxn;->A:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lxn;->B:Z

    invoke-virtual {p0, v0, v1}, Lxn;->a0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lxn$a; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lbg;->h()I

    move-result v1

    invoke-static {v0, v1}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object v0

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lxn;->l:Lyn;

    iget-object v1, p0, Lxn;->m:Lmj;

    invoke-virtual {p0, v0, v1, p1}, Lxn;->y0(Lyn;Lmj;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1
    :try_end_0
    .catch Ldo$c; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbg;->h()I

    move-result v0

    invoke-static {p1, v0}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object p1

    throw p1
.end method

.method public final a0(Landroid/media/MediaCrypto;Z)V
    .locals 6

    iget-object v0, p0, Lxn;->H:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p2}, Lxn;->M(Z)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lxn;->H:Ljava/util/ArrayDeque;

    iget-boolean v3, p0, Lxn;->o:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lxn;->H:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v1, p0, Lxn;->I:Lxn$a;
    :try_end_0
    .catch Ldo$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lxn$a;

    iget-object v1, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lxn$a;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lxn;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    iget-object v0, p0, Lxn;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    invoke-virtual {p0, v0}, Lxn;->v0(Lwn;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lxn;->Y(Lwn;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize decoder: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, v3, v2}, Lst;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lxn;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v3, Lxn$a;

    iget-object v4, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Lwn;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2, p2, v0}, Lxn$a;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    iget-object v0, p0, Lxn;->I:Lxn$a;

    if-nez v0, :cond_4

    iput-object v3, p0, Lxn;->I:Lxn$a;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lxn;->I:Lxn$a;

    invoke-static {v0, v3}, Lxn$a;->a(Lxn$a;Lxn$a;)Lxn$a;

    move-result-object v0

    iput-object v0, p0, Lxn;->I:Lxn$a;

    :goto_3
    iget-object v0, p0, Lxn;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lxn;->I:Lxn$a;

    throw p1

    :cond_6
    iput-object v1, p0, Lxn;->H:Ljava/util/ArrayDeque;

    return-void

    :cond_7
    new-instance p1, Lxn$a;

    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lxn$a;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method public abstract b0(Ljava/lang/String;JJ)V
.end method

.method public c0(Lwg;)V
    .locals 5

    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    iput-object p1, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lxn;->l0:Z

    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    :goto_0
    invoke-static {v2, v0}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxn;->m:Lmj;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-interface {v0, v2, v3}, Lmj;->b(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Llj;

    move-result-object v0

    iget-object v2, p0, Lxn;->z:Llj;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lxn;->y:Llj;

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lxn;->m:Lmj;

    invoke-interface {v2, v0}, Lmj;->c(Llj;)V

    :cond_2
    invoke-virtual {p0, v0}, Lxn;->t0(Llj;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbg;->h()I

    move-result v0

    invoke-static {p1, v0}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object p1

    throw p1

    :cond_4
    invoke-virtual {p0, v3}, Lxn;->t0(Llj;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lxn;->Z()V

    return-void

    :cond_6
    iget-object v2, p0, Lxn;->z:Llj;

    if-nez v2, :cond_7

    iget-object v3, p0, Lxn;->y:Llj;

    if-nez v3, :cond_a

    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lxn;->y:Llj;

    if-eqz v3, :cond_a

    :cond_8
    if-eqz v2, :cond_9

    iget-object v3, p0, Lxn;->J:Lwn;

    iget-boolean v3, v3, Lwn;->e:Z

    if-eqz v3, :cond_a

    :cond_9
    sget v3, Lnu;->a:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_b

    iget-object v3, p0, Lxn;->y:Llj;

    if-eq v2, v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Lxn;->G()V

    return-void

    :cond_b
    iget-object v2, p0, Lxn;->J:Lwn;

    iget-object v3, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v0, v2, v3, p1}, Lxn;->u(Landroid/media/MediaCodec;Lwn;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    if-eqz v0, :cond_13

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    iput-object p1, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Lxn;->z0()V

    iget-object p1, p0, Lxn;->z:Llj;

    iget-object v0, p0, Lxn;->y:Llj;

    if-eq p1, v0, :cond_14

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    iget-boolean v0, p0, Lxn;->L:Z

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    iput-boolean v1, p0, Lxn;->b0:Z

    iput v1, p0, Lxn;->c0:I

    iget v0, p0, Lxn;->K:I

    if-eq v0, v2, :cond_10

    if-ne v0, v1, :cond_f

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->p:I

    iget-object v2, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    iget v3, v2, Landroidx/media2/exoplayer/external/Format;->p:I

    if-ne v0, v3, :cond_f

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->q:I

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->q:I

    if-ne v0, v2, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_2
    iput-boolean v1, p0, Lxn;->R:Z

    iput-object p1, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Lxn;->z0()V

    iget-object p1, p0, Lxn;->z:Llj;

    iget-object v0, p0, Lxn;->y:Llj;

    if-eq p1, v0, :cond_14

    goto :goto_3

    :cond_11
    iput-object p1, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Lxn;->z0()V

    iget-object p1, p0, Lxn;->z:Llj;

    iget-object v0, p0, Lxn;->y:Llj;

    if-eq p1, v0, :cond_12

    :goto_3
    invoke-virtual {p0}, Lxn;->H()V

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Lxn;->F()V

    goto :goto_5

    :cond_13
    :goto_4
    invoke-virtual {p0}, Lxn;->G()V

    :cond_14
    :goto_5
    return-void
.end method

.method public final d(F)V
    .locals 1

    iput p1, p0, Lxn;->D:F

    iget-object p1, p0, Lxn;->E:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Lxn;->e0:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lbg;->getState()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lxn;->z0()V

    :cond_0
    return-void
.end method

.method public abstract d0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
.end method

.method public abstract e0(J)V
.end method

.method public abstract f0(Lzi;)V
.end method

.method public final g0()V
    .locals 3

    iget v0, p0, Lxn;->e0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lxn;->i0:Z

    invoke-virtual {p0}, Lxn;->o0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxn;->l0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxn;->A0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lxn;->K()Z

    :goto_0
    return-void
.end method

.method public abstract h0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
.end method

.method public final i0()V
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lxn;->V:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lxn;->i0:Z

    return v0
.end method

.method public isReady()Z
    .locals 5

    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lxn;->j0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxn;->X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lxn;->W:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lxn;->W:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j0()V
    .locals 4

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, p0, Lxn;->K:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lxn;->S:Z

    return-void

    :cond_0
    iget-boolean v1, p0, Lxn;->Q:Z

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lxn;->d0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, p0, Lxn;->z:Llj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lxn;->y:Llj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxn;->L()Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lxn;->n()V

    :goto_1
    return-void
.end method

.method public final k0(Z)Z
    .locals 2

    iget-object v0, p0, Lxn;->r:Lzi;

    invoke-virtual {v0}, Lzi;->b()V

    iget-object v0, p0, Lxn;->s:Lwg;

    iget-object v1, p0, Lxn;->r:Lzi;

    invoke-virtual {p0, v0, v1, p1}, Lbg;->r(Lwg;Lzi;Z)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lxn;->s:Lwg;

    invoke-virtual {p0, p1}, Lxn;->c0(Lwg;)V

    return v0

    :cond_0
    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lxn;->r:Lzi;

    invoke-virtual {p1}, Lwi;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lxn;->h0:Z

    invoke-virtual {p0}, Lxn;->g0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public l(Z)V
    .locals 0

    new-instance p1, Lyi;

    invoke-direct {p1}, Lyi;-><init>()V

    iput-object p1, p0, Lxn;->m0:Lyi;

    return-void
.end method

.method public final l0()V
    .locals 0

    invoke-virtual {p0}, Lxn;->m0()V

    invoke-virtual {p0}, Lxn;->Z()V

    return-void
.end method

.method public m(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lxn;->h0:Z

    iput-boolean p1, p0, Lxn;->i0:Z

    invoke-virtual {p0}, Lxn;->K()Z

    iget-object p1, p0, Lxn;->t:Liu;

    invoke-virtual {p1}, Liu;->c()V

    return-void
.end method

.method public m0()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lxn;->H:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lxn;->J:Lwn;

    iput-object v0, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Lxn;->q0()V

    invoke-virtual {p0}, Lxn;->r0()V

    invoke-virtual {p0}, Lxn;->p0()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lxn;->j0:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lxn;->W:J

    iget-object v2, p0, Lxn;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v2, p0, Lxn;->E:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lxn;->m0:Lyi;

    iget v4, v3, Lyi;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lyi;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :goto_0
    iput-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    :try_start_3
    iget-object v2, p0, Lxn;->A:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    iput-object v0, p0, Lxn;->A:Landroid/media/MediaCrypto;

    iput-boolean v1, p0, Lxn;->B:Z

    invoke-virtual {p0, v0}, Lxn;->s0(Llj;)V

    return-void

    :catchall_1
    move-exception v2

    iput-object v0, p0, Lxn;->A:Landroid/media/MediaCrypto;

    iput-boolean v1, p0, Lxn;->B:Z

    invoke-virtual {p0, v0}, Lxn;->s0(Llj;)V

    throw v2

    :catchall_2
    move-exception v2

    iput-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    :try_start_4
    iget-object v3, p0, Lxn;->A:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_2
    iput-object v0, p0, Lxn;->A:Landroid/media/MediaCrypto;

    iput-boolean v1, p0, Lxn;->B:Z

    invoke-virtual {p0, v0}, Lxn;->s0(Llj;)V

    throw v2

    :catchall_3
    move-exception v2

    iput-object v0, p0, Lxn;->A:Landroid/media/MediaCrypto;

    iput-boolean v1, p0, Lxn;->B:Z

    invoke-virtual {p0, v0}, Lxn;->s0(Llj;)V

    throw v2
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lxn;->m0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lxn;->t0(Llj;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lxn;->t0(Llj;)V

    throw v1
.end method

.method public final n0(Llj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llj<",
            "Lqj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lxn;->z:Llj;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lxn;->y:Llj;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lxn;->m:Lmj;

    invoke-interface {v0, p1}, Lmj;->c(Llj;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public final p0()V
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lxn;->U:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lxn;->V:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public final q0()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lxn;->X:I

    iget-object v0, p0, Lxn;->q:Lzi;

    const/4 v1, 0x0

    iput-object v1, v0, Lzi;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final r0()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lxn;->Y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxn;->Z:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public render(JJ)V
    .locals 3

    iget-boolean v0, p0, Lxn;->i0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxn;->o0()V

    return-void

    :cond_0
    iget-object v0, p0, Lxn;->w:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxn;->k0(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lxn;->Z()V

    iget-object v0, p0, Lxn;->E:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "drainAndFeed"

    invoke-static {v2}, Lku;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lxn;->I(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lxn;->J()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, v1}, Lxn;->u0(J)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lku;->c()V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lxn;->m0:Lyi;

    iget p4, p3, Lyi;->d:I

    invoke-virtual {p0, p1, p2}, Lbg;->s(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lyi;->d:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lxn;->k0(Z)Z

    :goto_2
    iget-object p1, p0, Lxn;->m0:Lyi;

    invoke-virtual {p1}, Lyi;->a()V

    return-void
.end method

.method public final s0(Llj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llj<",
            "Lqj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lxn;->y:Llj;

    iput-object p1, p0, Lxn;->y:Llj;

    invoke-virtual {p0, v0}, Lxn;->n0(Llj;)V

    return-void
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final t0(Llj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llj<",
            "Lqj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lxn;->z:Llj;

    iput-object p1, p0, Lxn;->z:Llj;

    invoke-virtual {p0, v0}, Lxn;->n0(Llj;)V

    return-void
.end method

.method public abstract u(Landroid/media/MediaCodec;Lwn;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
.end method

.method public final u0(J)Z
    .locals 5

    iget-wide v0, p0, Lxn;->C:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lxn;->C:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final v(Ljava/lang/String;)I
    .locals 3

    sget v0, Lnu;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnu;->d:Ljava/lang/String;

    const-string v2, "SM-T585"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A520"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-J700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lnu;->b:Ljava/lang/String;

    const-string v0, "flounder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "grouper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public v0(Lwn;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final w0(J)Z
    .locals 6

    iget-object v0, p0, Lxn;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lxn;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    iget-object p1, p0, Lxn;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final x0(Z)Z
    .locals 3

    iget-object v0, p0, Lxn;->y:Llj;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lxn;->n:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Llj;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lxn;->y:Llj;

    invoke-interface {p1}, Llj;->getError()Llj$a;

    move-result-object p1

    invoke-virtual {p0}, Lbg;->h()I

    move-result v0

    invoke-static {p1, v0}, Lfg;->b(Ljava/lang/Exception;I)Lfg;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract y0(Lyn;Lmj;Landroidx/media2/exoplayer/external/Format;)I
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
.end method

.method public final z0()V
    .locals 4

    sget v0, Lnu;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lxn;->D:F

    iget-object v1, p0, Lxn;->F:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Lbg;->i()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lxn;->R(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    iget v1, p0, Lxn;->G:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lxn;->G()V

    goto :goto_0

    :cond_2
    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget v1, p0, Lxn;->p:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lxn;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    iput v0, p0, Lxn;->G:F

    :cond_4
    :goto_0
    return-void
.end method
