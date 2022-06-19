.class public abstract Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.super Landroidx/media2/exoplayer/external/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final b:[B


# instance fields
.field private A:Landroidx/media2/exoplayer/external/mediacodec/a;

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:[Ljava/nio/ByteBuffer;

.field private M:[Ljava/nio/ByteBuffer;

.field private N:J

.field private O:I

.field private P:I

.field private Q:Ljava/nio/ByteBuffer;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:J

.field protected a:Landroidx/media2/exoplayer/external/b/d;

.field private aa:J

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private final c:Landroidx/media2/exoplayer/external/mediacodec/b;

.field private final d:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Z

.field private final g:F

.field private final h:Landroidx/media2/exoplayer/external/b/e;

.field private final i:Landroidx/media2/exoplayer/external/b/e;

.field private final j:Landroidx/media2/exoplayer/external/x;

.field private final k:Landroidx/media2/exoplayer/external/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/y<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/media/MediaCodec$BufferInfo;

.field private n:Landroidx/media2/exoplayer/external/Format;

.field private o:Landroidx/media2/exoplayer/external/Format;

.field private p:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/media/MediaCrypto;

.field private s:Z

.field private t:J

.field private u:F

.field private v:Landroid/media/MediaCodec;

.field private w:Landroidx/media2/exoplayer/external/Format;

.field private x:F

.field private y:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 318
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->g(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b:[B

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;ZZF)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/b;-><init>(I)V

    .line 408
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/b;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->c:Landroidx/media2/exoplayer/external/mediacodec/b;

    .line 409
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->d:Landroidx/media2/exoplayer/external/drm/k;

    .line 410
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->e:Z

    .line 411
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->f:Z

    .line 412
    iput p6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->g:F

    .line 413
    new-instance p1, Landroidx/media2/exoplayer/external/b/e;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/b/e;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    .line 2091
    new-instance p1, Landroidx/media2/exoplayer/external/b/e;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/b/e;-><init>(I)V

    .line 414
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->i:Landroidx/media2/exoplayer/external/b/e;

    .line 415
    new-instance p1, Landroidx/media2/exoplayer/external/x;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/x;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->j:Landroidx/media2/exoplayer/external/x;

    .line 416
    new-instance p1, Landroidx/media2/exoplayer/external/util/y;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/y;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->k:Landroidx/media2/exoplayer/external/util/y;

    .line 417
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    .line 418
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    .line 419
    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 420
    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    .line 421
    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 422
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->x:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 423
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->u:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 424
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->t:J

    return-void
.end method

.method private H()V
    .locals 2

    .line 962
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 963
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->L:[Ljava/nio/ByteBuffer;

    .line 964
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private I()Z
    .locals 1

    .line 985
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private J()V
    .locals 2

    const/4 v0, -0x1

    .line 989
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    .line 990
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private K()V
    .locals 1

    const/4 v0, -0x1

    .line 994
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P:I

    const/4 v0, 0x0

    .line 995
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private L()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ab:Z

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 1017
    :cond_0
    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    if-gez v2, :cond_3

    const-wide/16 v4, 0x0

    .line 1018
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    if-gez v0, :cond_1

    return v1

    .line 1022
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    .line 7969
    sget v4, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 7970
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 7972
    :cond_2
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->L:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    .line 1022
    :goto_0
    iput-object v0, v2, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    .line 1023
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 1026
    :cond_3
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 1029
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K:Z

    if-nez v0, :cond_4

    .line 1032
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    .line 1033
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1034
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V

    .line 1036
    :cond_4
    iput v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    return v1

    .line 1040
    :cond_5
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I:Z

    if-eqz v0, :cond_6

    .line 1041
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I:Z

    .line 1042
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1043
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1044
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V

    .line 1045
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    return v2

    .line 1051
    :cond_6
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ad:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_2

    .line 1057
    :cond_7
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    if-ne v0, v2, :cond_9

    const/4 v0, 0x0

    .line 1058
    :goto_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 1059
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1060
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1062
    :cond_8
    iput v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 1064
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1065
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->j:Landroidx/media2/exoplayer/external/x;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p0, v4, v5, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    .line 1068
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->g()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1070
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->aa:J

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Z:J

    :cond_a
    const/4 v5, -0x3

    if-ne v0, v5, :cond_b

    return v1

    :cond_b
    const/4 v5, -0x5

    if-ne v0, v5, :cond_d

    .line 1077
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    if-ne v0, v3, :cond_c

    .line 1080
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 1081
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 1083
    :cond_c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->j:Landroidx/media2/exoplayer/external/x;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/x;)V

    return v2

    .line 1088
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1089
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    if-ne v0, v3, :cond_e

    .line 1093
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 1094
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 1096
    :cond_e
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ab:Z

    .line 1097
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    if-nez v0, :cond_f

    .line 1098
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    return v1

    .line 1102
    :cond_f
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K:Z

    if-nez v0, :cond_10

    .line 1105
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    .line 1106
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1107
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    return v1

    :catch_0
    move-exception v0

    .line 1110
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1114
    :cond_11
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ae:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->d()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 1116
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    if-ne v0, v3, :cond_12

    .line 1119
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    :cond_12
    return v2

    .line 1123
    :cond_13
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ae:Z

    .line 1124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->g()Z

    move-result v0

    .line 8172
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v3, :cond_16

    if-nez v0, :cond_14

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->e:Z

    if-eqz v5, :cond_14

    goto :goto_3

    .line 8175
    :cond_14
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/drm/DrmSession;->b()I

    move-result v3

    if-eq v3, v2, :cond_15

    const/4 v5, 0x4

    if-eq v3, v5, :cond_16

    const/4 v3, 0x1

    goto :goto_4

    .line 8177
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->c()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_3
    const/4 v3, 0x0

    .line 1125
    :goto_4
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ad:Z

    if-eqz v3, :cond_17

    return v1

    .line 1129
    :cond_17
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->D:Z

    if-eqz v3, :cond_19

    if-nez v0, :cond_19

    .line 1130
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/n;->a(Ljava/nio/ByteBuffer;)V

    .line 1131
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_18

    return v2

    .line 1134
    :cond_18
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->D:Z

    .line 1137
    :cond_19
    :try_start_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-wide v9, v3, Landroidx/media2/exoplayer/external/b/e;->d:J

    .line 1138
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/b/e;->l_()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1139
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    :cond_1a
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->af:Z

    if-eqz v3, :cond_1b

    .line 1142
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->k:Landroidx/media2/exoplayer/external/util/y;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v9, v10, v5}, Landroidx/media2/exoplayer/external/util/y;->a(JLjava/lang/Object;)V

    .line 1143
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->af:Z

    .line 1145
    :cond_1b
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->aa:J

    .line 1146
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->aa:J

    .line 1148
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/b/e;->h()V

    .line 1149
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/b/e;->e()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1150
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/b/e;)V

    .line 1152
    :cond_1c
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/b/e;)V

    if-eqz v0, :cond_1f

    .line 1155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    .line 8755
    iget-object v0, v0, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    .line 9111
    iget-object v8, v0, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v4, :cond_1d

    goto :goto_5

    .line 8762
    :cond_1d
    iget-object v0, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1e

    new-array v0, v2, [I

    .line 8763
    iput-object v0, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 8765
    :cond_1e
    iget-object v0, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v4

    aput v3, v0, v1

    .line 1157
    :goto_5
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_6

    .line 1159
    :cond_1f
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O:I

    const/4 v7, 0x0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->h:Landroidx/media2/exoplayer/external/b/e;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1161
    :goto_6
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V

    .line 1162
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    .line 1163
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 1164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v1, v0, Landroidx/media2/exoplayer/external/b/d;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media2/exoplayer/external/b/d;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 1166
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_20
    :goto_7
    return v1
.end method

.method private M()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1408
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 1412
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->u:F

    .line 1413
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->t()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(F[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    .line 1414
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->x:F

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 1419
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O()V

    return-void

    :cond_1
    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 1420
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->g:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 1424
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 1425
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1426
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 1427
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->x:F

    :cond_3
    return-void
.end method

.method private N()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1446
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1448
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O()V

    return-void

    .line 1451
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1452
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    const/4 v0, 0x2

    .line 1453
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    return-void

    .line 1456
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R()V

    return-void
.end method

.method private O()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1467
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1468
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    const/4 v0, 0x3

    .line 1469
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    return-void

    .line 1472
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q()V

    return-void
.end method

.method private P()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1681
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1693
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ac:Z

    .line 1694
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z()V

    return-void

    .line 1683
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q()V

    return-void

    .line 1686
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R()V

    return-void

    .line 1689
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->F()Z

    return-void
.end method

.method private Q()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1700
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E()V

    .line 1701
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A()V

    return-void
.end method

.method private R()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1706
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->d()Landroidx/media2/exoplayer/external/drm/m;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/o;

    if-nez v0, :cond_0

    .line 1714
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q()V

    return-void

    .line 1717
    :cond_0
    sget-object v1, Landroidx/media2/exoplayer/external/c;->e:Ljava/util/UUID;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/drm/o;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1720
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q()V

    return-void

    .line 1724
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1731
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/drm/o;->b:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 1736
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    .line 1737
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    return-void

    :catch_0
    move-exception v0

    .line 1733
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private a(Landroid/media/MediaCrypto;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 794
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    const-string v9, "MediaCodecRenderer"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_3

    .line 4855
    :try_start_0
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->c:Landroidx/media2/exoplayer/external/mediacodec/b;

    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    .line 4856
    invoke-virtual {v7, v0, v1, v8}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 4857
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    .line 4862
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->c:Landroidx/media2/exoplayer/external/mediacodec/b;

    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    .line 4863
    invoke-virtual {v7, v0, v1, v11}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 4864
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4865
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x63

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Drm session requires secure decoder for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    .line 799
    iget-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->f:Z

    if-eqz v2, :cond_1

    .line 800
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 801
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 802
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_2
    :goto_0
    iput-object v10, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 806
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, v8, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 814
    :cond_3
    :goto_1
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 822
    :goto_2
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    if-nez v0, :cond_23

    .line 823
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 824
    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 4881
    :cond_4
    :try_start_1
    iget-object v0, v12, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 4884
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v13, 0x17

    if-ge v1, v13, :cond_5

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 4886
    :cond_5
    iget v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->u:F

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->t()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(F[Landroidx/media2/exoplayer/external/Format;)F

    move-result v1

    .line 4887
    :goto_3
    iget v3, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->g:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_6

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_4

    :cond_6
    move v14, v1

    .line 4891
    :goto_4
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-string v1, "createCodec:"

    .line 4892
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v3, :cond_7

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v10

    goto/16 :goto_13

    :cond_7
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    .line 4893
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 4894
    :try_start_5
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    const-string v1, "configureCodec"

    .line 4895
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    .line 4896
    iget-object v4, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v6

    move-object/from16 v5, p1

    move-object/from16 v17, v6

    move v6, v14

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V

    .line 4897
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    const-string v1, "startCodec"

    .line 4898
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    .line 4899
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaCodec;->start()V

    .line 4900
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    .line 4901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4955
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/16 v2, 0x15

    if-ge v1, v2, :cond_8

    .line 4956
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->L:[Ljava/nio/ByteBuffer;

    .line 4957
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M:[Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_13

    :cond_8
    :goto_6
    move-object/from16 v1, v17

    .line 4911
    :try_start_8
    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    .line 4912
    iput-object v12, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A:Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 4913
    iput v14, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->x:F

    .line 4914
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 5825
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const-string v6, "OMX.Exynos.avc.dec.secure"

    const/16 v14, 0x19

    const/4 v10, 0x1

    if-gt v1, v14, :cond_a

    :try_start_9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :try_start_a
    const-string v11, "SM-T585"

    .line 5826
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v11, "SM-A510"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v11, "SM-A520"

    .line 5827
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v11, "SM-J700"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x2

    goto :goto_7

    .line 5829
    :cond_a
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v11, 0x18

    if-ge v1, v11, :cond_d

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 5830
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    const-string v1, "flounder"

    sget-object v11, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    .line 5831
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "flounder_lte"

    sget-object v11, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "grouper"

    sget-object v11, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    .line 5832
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "tilapia"

    sget-object v11, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 4915
    :goto_7
    iput v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->B:I

    .line 5851
    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v11, "SM-T230"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 4916
    :goto_8
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->C:Z

    .line 4917
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 5865
    sget v11, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ge v11, v2, :cond_f

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 5866
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    .line 4917
    :goto_9
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->D:Z

    .line 6804
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v11, 0x13

    const/16 v5, 0x12

    if-lt v1, v5, :cond_12

    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ne v1, v5, :cond_10

    const-string v1, "OMX.SEC.avc.dec"

    .line 6806
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ne v1, v11, :cond_11

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v14, "SM-G800"

    .line 6807
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "OMX.Exynos.avc.dec"

    .line 6808
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v1, 0x1

    .line 4918
    :goto_b
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E:Z

    .line 6902
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-gt v1, v13, :cond_13

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_13
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-gt v1, v11, :cond_16

    const-string v1, "hb2000"

    sget-object v6, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    .line 6904
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "stvm8"

    sget-object v6, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 6905
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 6906
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const/4 v1, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    .line 4919
    :goto_c
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->F:Z

    .line 6921
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ne v1, v2, :cond_17

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    .line 4920
    :goto_d
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->G:Z

    .line 4921
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 6938
    sget v2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-gt v2, v5, :cond_18

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v1, v10, :cond_18

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 6939
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_e

    :cond_18
    const/4 v1, 0x0

    .line 4922
    :goto_e
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->H:Z

    .line 7882
    iget-object v1, v12, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 7883
    sget v2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v5, 0x19

    if-gt v2, v5, :cond_19

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    sget v2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v5, 0x11

    if-gt v2, v5, :cond_1a

    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 7884
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    const-string v1, "Amazon"

    sget-object v2, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    .line 7885
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "AFTS"

    sget-object v2, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, v12, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    goto :goto_f

    :cond_1c
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_1e

    .line 4924
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->B()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v1, 0x0

    goto :goto_11

    :cond_1e
    :goto_10
    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K:Z

    .line 4926
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V

    .line 4927
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K()V

    .line 4929
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->i_()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 4930
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    add-long/2addr v1, v5

    goto :goto_12

    :cond_1f
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4931
    :goto_12
    iput-wide v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v11, 0x0

    .line 4932
    :try_start_b
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->T:Z

    .line 4933
    iput v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 4934
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    .line 4935
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    .line 4936
    iput v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    .line 4937
    iput v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    .line 4938
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I:Z

    .line 4939
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J:Z

    .line 4940
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R:Z

    .line 4941
    iput-boolean v11, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->S:Z

    .line 4942
    iput-boolean v10, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ae:Z

    .line 4944
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v2, v1, Landroidx/media2/exoplayer/external/b/d;->a:I

    add-int/2addr v2, v10

    iput v2, v1, Landroidx/media2/exoplayer/external/b/d;->a:I

    sub-long v5, v3, v15

    move-object/from16 v1, p0

    move-object v2, v0

    .line 4946
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;JJ)V

    goto :goto_16

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    goto :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v1, v17

    move-object v6, v1

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v1, v6

    goto :goto_13

    :catch_6
    move-exception v0

    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_20

    .line 4905
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->H()V

    .line 4906
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    .line 4908
    :cond_20
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    move-exception v0

    .line 830
    :goto_14
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    iget-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 835
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    invoke-direct {v1, v2, v0, v8, v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZLandroidx/media2/exoplayer/external/mediacodec/a;)V

    .line 838
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v0, :cond_21

    .line 839
    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_15

    .line 842
    :cond_21
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v0

    iput-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 844
    :goto_15
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    :goto_16
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 845
    :cond_22
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw v0

    :cond_23
    move-object v1, v10

    .line 850
    iput-object v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    return-void

    :cond_24
    move-object v1, v10

    .line 815
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    const v3, -0xc34f

    invoke-direct {v0, v2, v1, v8, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method private a(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;)V"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/drm/j;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1000
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    return-void
.end method

.method private b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;)V"
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/drm/j;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1005
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    return-void
.end method

.method private b(JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 1482
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_11

    .line 1484
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->G:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    if-eqz v0, :cond_1

    .line 1486
    :try_start_0
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget-object v3, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    .line 1487
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1489
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    .line 1490
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ac:Z

    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E()V

    :cond_0
    return v15

    .line 1497
    :cond_1
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget-object v3, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    .line 1498
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    const/16 v1, 0x15

    if-gez v0, :cond_9

    const/4 v2, -0x2

    if-ne v0, v2, :cond_4

    .line 9598
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 9599
    iget v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->B:I

    if-eqz v1, :cond_2

    const-string v1, "width"

    .line 9600
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const-string v1, "height"

    .line 9601
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 9603
    iput-boolean v14, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J:Z

    goto :goto_1

    .line 9606
    :cond_2
    iget-boolean v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->H:Z

    if-eqz v1, :cond_3

    const-string v1, "channel-count"

    .line 9607
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9609
    :cond_3
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v13, v1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_1
    return v14

    :cond_4
    const/4 v2, -0x3

    if-ne v0, v2, :cond_6

    .line 9616
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ge v0, v1, :cond_5

    .line 9617
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M:[Ljava/nio/ByteBuffer;

    :cond_5
    return v14

    .line 1510
    :cond_6
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ab:Z

    if-nez v0, :cond_7

    iget v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1512
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    :cond_8
    return v15

    .line 1518
    :cond_9
    iget-boolean v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v2, :cond_a

    .line 1519
    iput-boolean v15, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J:Z

    .line 1520
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v14

    .line 1522
    :cond_a
    iget-object v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_b

    iget-object v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 1525
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    return v15

    .line 1529
    :cond_b
    iput v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P:I

    .line 9977
    sget v2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v2, v1, :cond_c

    .line 9978
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    .line 9980
    :cond_c
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, v0

    .line 1530
    :goto_2
    iput-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    .line 1534
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1535
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q:Ljava/nio/ByteBuffer;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1537
    :cond_d
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 10743
    iget-object v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_f

    .line 10745
    iget-object v4, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_e

    .line 10746
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    .line 1537
    :goto_4
    iput-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R:Z

    .line 1538
    iget-wide v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Z:J

    iget-object v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->S:Z

    .line 1540
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->d(J)Landroidx/media2/exoplayer/external/Format;

    .line 1544
    :cond_11
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->G:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    if-eqz v0, :cond_13

    .line 1546
    :try_start_1
    iget-object v5, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget-object v6, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q:Ljava/nio/ByteBuffer;

    iget v7, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R:Z

    iget-boolean v12, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->S:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1547
    invoke-virtual/range {v0 .. v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    nop

    .line 1559
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    .line 1560
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ac:Z

    if-eqz v0, :cond_12

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E()V

    :cond_12
    return v15

    .line 1567
    :cond_13
    iget-object v5, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    iget-object v6, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Q:Ljava/nio/ByteBuffer;

    iget v7, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R:Z

    iget-boolean v12, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->S:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1568
    invoke-virtual/range {v0 .. v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZ)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_16

    .line 1582
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->c(J)V

    .line 1583
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    .line 1584
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K()V

    if-nez v0, :cond_15

    return v14

    .line 1588
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    :cond_16
    return v15
.end method

.method private b(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->i:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 780
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->j:Landroidx/media2/exoplayer/external/x;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->i:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 782
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->j:Landroidx/media2/exoplayer/external/x;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/x;)V

    return v0

    :cond_0
    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    .line 784
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->i:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/b/e;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 785
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ab:Z

    .line 786
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->P()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected final A()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 507
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 509
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 510
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v1, :cond_7

    .line 511
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 512
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->d()Landroidx/media2/exoplayer/external/drm/m;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/o;

    if-nez v1, :cond_1

    .line 514
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->c()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 524
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/drm/o;->a:Ljava/util/UUID;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/drm/o;->b:[B

    invoke-direct {v2, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/drm/o;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    .line 530
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 2787
    :cond_3
    :goto_1
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 2788
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 2789
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_7

    .line 534
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->b()I

    move-result v0

    if-eq v0, v4, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    return-void

    .line 536
    :cond_6
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->c()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 545
    :cond_7
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s:Z

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 547
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    return-void
.end method

.method protected B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final C()Landroid/media/MediaCodec;
    .locals 1

    .line 578
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final D()Landroidx/media2/exoplayer/external/mediacodec/a;
    .locals 1

    .line 582
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A:Landroidx/media2/exoplayer/external/mediacodec/a;

    return-object v0
.end method

.method public E()V
    .locals 5

    const/4 v0, 0x0

    .line 629
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y:Ljava/util/ArrayDeque;

    .line 630
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A:Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 631
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 632
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V

    .line 633
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K()V

    .line 634
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->H()V

    const/4 v1, 0x0

    .line 635
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ad:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 636
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N:J

    .line 637
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 638
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->aa:J

    .line 639
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Z:J

    .line 641
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v3, v2, Landroidx/media2/exoplayer/external/b/d;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/media2/exoplayer/external/b/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 644
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :try_start_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 650
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    .line 652
    :try_start_3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 656
    :cond_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    .line 657
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s:Z

    .line 658
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    return-void

    :catchall_1
    move-exception v2

    .line 656
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    .line 657
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s:Z

    .line 658
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2

    :catchall_2
    move-exception v2

    .line 650
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    .line 652
    :try_start_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_2

    .line 653
    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 656
    :cond_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    .line 657
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s:Z

    .line 658
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2

    :catchall_3
    move-exception v2

    .line 656
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r:Landroid/media/MediaCrypto;

    .line 657
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s:Z

    .line 658
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2
.end method

.method protected final F()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A()V

    :cond_0
    return v0
.end method

.method public G()Z
    .locals 5

    .line 736
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 739
    :cond_0
    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->F:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 747
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J()V

    .line 748
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->K()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 749
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N:J

    .line 750
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Y:Z

    .line 751
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    .line 752
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ae:Z

    .line 753
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I:Z

    .line 754
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->J:Z

    .line 755
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->R:Z

    .line 756
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->S:Z

    .line 758
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ad:Z

    .line 759
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 760
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->aa:J

    .line 761
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->Z:J

    .line 762
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    .line 763
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    .line 768
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->T:Z

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    return v1

    .line 742
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E()V

    return v4
.end method

.method protected a(F[Landroidx/media2/exoplayer/external/Format;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 449
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->c:Landroidx/media2/exoplayer/external/mediacodec/b;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->d:Landroidx/media2/exoplayer/external/drm/k;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 451
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/a;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;
    .locals 1

    .line 774
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/a;)V

    return-object v0
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 600
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->u:F

    .line 601
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 603
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->i_()I

    move-result p1

    if-eqz p1, :cond_0

    .line 604
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M()V

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 676
    :try_start_0
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ac:Z

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->z()V

    return-void

    .line 680
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 685
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A()V

    .line 686
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    if-eqz v2, :cond_7

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 688
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    .line 689
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 690
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->L()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2950
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->t:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, p3

    if-eqz v4, :cond_5

    .line 2951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    iget-wide p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->t:J

    cmp-long v4, p1, p3

    if-gez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    .line 691
    :cond_6
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    return-void

    .line 693
    :cond_7
    iget-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget p4, p3, Landroidx/media2/exoplayer/external/b/d;->d:I

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Landroidx/media2/exoplayer/external/b/d;->d:I

    .line 699
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->b(Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3770
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 3779
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_8

    goto :goto_2

    .line 3773
    :cond_8
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 3774
    array-length p3, p2

    if-lez p3, :cond_9

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.media.MediaCodec"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_a

    .line 4582
    iget-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A:Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 705
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/a;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result p2

    .line 704
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 707
    :cond_a
    throw p1
.end method

.method public a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 592
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ab:Z

    .line 593
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ac:Z

    .line 594
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->F()Z

    .line 595
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->k:Landroidx/media2/exoplayer/external/util/y;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/y;->a()V

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected a(Landroidx/media2/exoplayer/external/b/e;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
.end method

.method public a(Landroidx/media2/exoplayer/external/x;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    .line 1206
    iget-object v1, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 1207
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    const/4 v2, 0x1

    .line 1208
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->af:Z

    .line 1210
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    :goto_0
    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 1213
    iget-object v0, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_4

    .line 1214
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/x;->a:Z

    if-eqz v0, :cond_1

    .line 1215
    iget-object p1, p1, Landroidx/media2/exoplayer/external/x;->b:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    goto :goto_1

    .line 1217
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->d:Landroidx/media2/exoplayer/external/drm/k;

    if-eqz p1, :cond_3

    .line 1222
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-interface {p1, v0, v3}, Landroidx/media2/exoplayer/external/drm/k;->a(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object p1

    .line 1223
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_2

    .line 1224
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->g()V

    .line 1226
    :cond_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    goto :goto_1

    .line 1218
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v()I

    move-result v0

    .line 1218
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 1229
    :cond_4
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1233
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->v:Landroid/media/MediaCodec;

    if-nez p1, :cond_6

    .line 1234
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A()V

    return-void

    .line 1241
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez p1, :cond_7

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v0, :cond_a

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_a

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A:Landroidx/media2/exoplayer/external/mediacodec/a;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    if-eqz p1, :cond_a

    :cond_9
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_b

    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_b

    .line 1248
    :cond_a
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O()V

    return-void

    .line 1252
    :cond_b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->A:Landroidx/media2/exoplayer/external/mediacodec/a;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    if-eqz p1, :cond_15

    if-eq p1, v2, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 1284
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 1285
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M()V

    .line 1286
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_11

    .line 1287
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N()V

    return-void

    .line 1291
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1266
    :cond_d
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->C:Z

    if-eqz p1, :cond_e

    .line 1267
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O()V

    return-void

    .line 1269
    :cond_e
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->T:Z

    .line 1270
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->U:I

    .line 1271
    iget p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->B:I

    if-eq p1, v0, :cond_10

    if-ne p1, v2, :cond_f

    iget p1, v1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne p1, v0, :cond_f

    iget p1, v1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne p1, v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_2
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I:Z

    .line 1276
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 1277
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M()V

    .line 1278
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_11

    .line 1279
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N()V

    :cond_11
    return-void

    .line 1257
    :cond_12
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w:Landroidx/media2/exoplayer/external/Format;

    .line 1258
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->M()V

    .line 1259
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_13

    .line 1260
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N()V

    return-void

    .line 9433
    :cond_13
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->X:Z

    if-eqz p1, :cond_14

    .line 9434
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->V:I

    .line 9435
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->W:I

    :cond_14
    return-void

    .line 1254
    :cond_15
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->O()V

    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 587
    new-instance p1, Landroidx/media2/exoplayer/external/b/d;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/b/d;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected a(Landroidx/media2/exoplayer/external/mediacodec/a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroidx/media2/exoplayer/external/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected c(J)V
    .locals 0

    return-void
.end method

.method protected final d(J)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 570
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->k:Landroidx/media2/exoplayer/external/util/y;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/y;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    if-eqz p1, :cond_0

    .line 572
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->o:Landroidx/media2/exoplayer/external/Format;

    :cond_0
    return-object p1
.end method

.method public final o()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    .line 611
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->G()Z

    return-void

    .line 613
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s()V

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v1
.end method

.method public x()Z
    .locals 5

    .line 1368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->n:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ad:Z

    if-nez v0, :cond_1

    .line 1370
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1371
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->I()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->N:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1363
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ac:Z

    return v0
.end method

.method protected z()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method
