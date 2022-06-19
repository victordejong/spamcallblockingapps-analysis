.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private A:F

.field private B:F

.field private C:Lcom/google/android/exoplayer2/mediacodec/f;

.field private D:Lcom/google/android/exoplayer2/Format;

.field private E:Landroid/media/MediaFormat;

.field private F:Z

.field private G:F

.field private H:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private J:Lcom/google/android/exoplayer2/mediacodec/g;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Lcom/google/android/exoplayer2/mediacodec/e;

.field private W:J

.field private X:I

.field private Y:I

.field private Z:Ljava/nio/ByteBuffer;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:J

.field private an:J

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private at:J

.field private au:J

.field private av:I

.field public b:Z

.field public c:Z

.field public d:Z

.field protected e:Lcom/google/android/exoplayer2/decoder/d;

.field private final f:Lcom/google/android/exoplayer2/mediacodec/f$a;

.field private final g:Lcom/google/android/exoplayer2/mediacodec/h;

.field private final h:Z

.field private final i:F

.field private final j:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final m:Lcom/google/android/exoplayer2/mediacodec/d;

.field private final n:Lcom/google/android/exoplayer2/util/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ac<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/media/MediaCodec$BufferInfo;

.field private final q:[J

.field private final r:[J

.field private final s:[J

.field private t:Lcom/google/android/exoplayer2/Format;

.field private u:Lcom/google/android/exoplayer2/Format;

.field private v:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private w:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private x:Landroid/media/MediaCrypto;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    .line 285
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;ZF)V
    .locals 1

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/e;-><init>(I)V

    .line 386
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/mediacodec/f$a;

    .line 387
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 388
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Z

    .line 389
    iput p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:F

    .line 3120
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    .line 390
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 391
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 392
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 393
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    .line 394
    new-instance p3, Lcom/google/android/exoplayer2/util/ac;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/util/ac;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/util/ac;

    .line 395
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Ljava/util/ArrayList;

    .line 396
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 397
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:F

    .line 398
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 399
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    const/16 p5, 0xa

    new-array v0, p5, [J

    .line 400
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:[J

    new-array v0, p5, [J

    .line 401
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    new-array p5, p5, [J

    .line 402
    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:[J

    .line 403
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->at:J

    .line 404
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    .line 410
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/d;->c(I)V

    .line 411
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/d;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 412
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q()V

    return-void
.end method

.method private N()V
    .locals 2

    const/4 v0, 0x0

    .line 756
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ae:Z

    .line 757
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/d;->a()V

    .line 758
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 759
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ad:Z

    .line 760
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    return-void
.end method

.method private O()Z
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 873
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->al:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ak:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 880
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P()V

    return v1

    .line 877
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    const/4 v0, 0x1

    return v0
.end method

.method private P()V
    .locals 1

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    .line 890
    throw v0
.end method

.method private Q()V
    .locals 2

    .line 928
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    const/4 v0, 0x0

    .line 930
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->as:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 931
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V:Lcom/google/android/exoplayer2/mediacodec/e;

    .line 932
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    .line 933
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Lcom/google/android/exoplayer2/mediacodec/g;

    .line 934
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    .line 935
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 936
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    .line 937
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->al:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 938
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:F

    .line 939
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:I

    .line 940
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 941
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    .line 942
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    .line 943
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:Z

    .line 944
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Z

    .line 945
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Z

    .line 946
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Z

    .line 947
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U:Z

    .line 948
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->af:Z

    .line 949
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    .line 950
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:Z

    return-void
.end method

.method private R()Z
    .locals 1

    .line 1158
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private S()V
    .locals 2

    const/4 v0, -0x1

    .line 1162
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    .line 1163
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private T()V
    .locals 1

    const/4 v0, -0x1

    .line 1167
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y:I

    const/4 v0, 0x0

    .line 1168
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private U()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1190
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    if-gez v2, :cond_2

    .line 1191
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/f;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    if-gez v0, :cond_1

    return v1

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/mediacodec/f;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 1196
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 1199
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1202
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U:Z

    if-nez v0, :cond_3

    .line 1205
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ak:Z

    .line 1206
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IIJI)V

    .line 1207
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S()V

    .line 1209
    :cond_3
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    return v1

    .line 1213
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S:Z

    if-eqz v0, :cond_5

    .line 1214
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S:Z

    .line 1215
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1216
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    array-length v5, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IIJI)V

    .line 1217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S()V

    .line 1218
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    return v2

    .line 1224
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    .line 1225
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1226
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1227
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1229
    :cond_6
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    .line 1231
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()Lcom/google/android/exoplayer2/q;

    move-result-object v4

    .line 1235
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v5

    .line 1237
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1239
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->an:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v6, -0x5

    if-ne v5, v6, :cond_b

    .line 1246
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    if-ne v0, v3, :cond_a

    .line 1249
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 1250
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    .line 1252
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;

    return v2

    .line 1257
    :cond_b
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1258
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    if-ne v0, v3, :cond_c

    .line 1262
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 1263
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    .line 1265
    :cond_c
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    .line 1266
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    if-nez v0, :cond_d

    .line 1267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    return v1

    .line 1271
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U:Z

    if-nez v0, :cond_e

    .line 1274
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ak:Z

    .line 1275
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IIJI)V

    .line 1281
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    .line 1284
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1294
    :cond_f
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1295
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 1296
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    if-ne v0, v3, :cond_10

    .line 1299
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    :cond_10
    return v2

    .line 1304
    :cond_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->g()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1306
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Lcom/google/android/exoplayer2/decoder/b;

    if-eqz v0, :cond_13

    .line 12146
    iget-object v5, v4, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    if-nez v5, :cond_12

    new-array v5, v2, [I

    .line 12147
    iput-object v5, v4, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    .line 12148
    iget-object v5, v4, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v6, v4, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    iput-object v6, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 12150
    :cond_12
    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    aget v5, v4, v1

    add-int/2addr v5, v0

    aput v5, v4, v1

    .line 1308
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    if-eqz v0, :cond_15

    if-nez v3, :cond_15

    .line 1309
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/s;->a(Ljava/nio/ByteBuffer;)V

    .line 1310
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_14

    return v2

    .line 1313
    :cond_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 1316
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 1318
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V:Lcom/google/android/exoplayer2/mediacodec/e;

    if-eqz v0, :cond_1a

    .line 1319
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 13060
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/mediacodec/e;->c:Z

    if-eqz v6, :cond_16

    .line 13061
    iget-wide v4, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    goto :goto_2

    .line 13064
    :cond_16
    iget-object v6, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x4

    if-ge v7, v9, :cond_17

    shl-int/lit8 v8, v8, 0x8

    .line 13068
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 13071
    :cond_17
    invoke-static {v8}, Lcom/google/android/exoplayer2/audio/o;->b(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_18

    .line 13073
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/e;->c:Z

    const-string v0, "C2Mp3TimestampTracker"

    const-string v4, "MPEG audio header is invalid."

    .line 13074
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13075
    iget-wide v4, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    goto :goto_2

    .line 13080
    :cond_18
    iget-wide v7, v0, Lcom/google/android/exoplayer2/mediacodec/e;->a:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_19

    .line 13081
    iget-wide v4, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/e;->b:J

    int-to-long v4, v6

    const-wide/16 v6, 0x211

    sub-long/2addr v4, v6

    .line 13082
    iput-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/e;->a:J

    .line 13083
    iget-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/e;->b:J

    goto :goto_2

    .line 13091
    :cond_19
    iget-wide v7, v0, Lcom/google/android/exoplayer2/mediacodec/e;->a:J

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v7, v4

    .line 13086
    iget-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/e;->a:J

    int-to-long v9, v6

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/e;->a:J

    .line 13087
    iget-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/e;->b:J

    add-long/2addr v4, v7

    :cond_1a
    :goto_2
    move-wide v9, v4

    .line 1323
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->E_()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1324
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aq:Z

    if-eqz v0, :cond_1c

    .line 1327
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/util/ac;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v9, v10, v4}, Lcom/google/android/exoplayer2/util/ac;->a(JLjava/lang/Object;)V

    .line 1328
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aq:Z

    .line 1333
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V:Lcom/google/android/exoplayer2/mediacodec/e;

    if-eqz v0, :cond_1d

    .line 1334
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    goto :goto_3

    .line 1336
    :cond_1d
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    .line 1338
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->h()V

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1340
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 1343
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    if-eqz v3, :cond_1f

    .line 1346
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Lcom/google/android/exoplayer2/decoder/b;

    invoke-interface {v0, v3, v4, v9, v10}, Lcom/google/android/exoplayer2/mediacodec/f;->a(ILcom/google/android/exoplayer2/decoder/b;J)V

    goto :goto_4

    .line 1349
    :cond_1f
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 1350
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    .line 1349
    invoke-interface/range {v6 .. v11}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1356
    :goto_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S()V

    .line 1357
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    .line 1358
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    .line 1359
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    return v2

    :catch_1
    move-exception v0

    .line 1353
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_20
    :goto_5
    return v1
.end method

.method private V()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1669
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 1673
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:F

    .line 1674
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u()[Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(F[Lcom/google/android/exoplayer2/Format;)F

    move-result v0

    .line 1675
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:F

    cmpl-float v3, v2, v0

    if-nez v3, :cond_1

    return v1

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    .line 1681
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X()V

    const/4 v0, 0x0

    return v0

    :cond_2
    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 1683
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 1687
    :cond_4
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "operating-rate"

    .line 1688
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1689
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/os/Bundle;)V

    .line 1690
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:F

    return v1
.end method

.method private W()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1728
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1729
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    .line 1730
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1734
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 1731
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    const/4 v0, 0x0

    return v0

    .line 1738
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aa()V

    :goto_1
    return v1
.end method

.method private X()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1750
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1751
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    const/4 v0, 0x3

    .line 1752
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    return-void

    .line 1755
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z()V

    return-void
.end method

.method private Y()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1968
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1981
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    .line 1982
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    return-void

    .line 1970
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z()V

    return-void

    .line 1973
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P()V

    .line 1974
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aa()V

    return-void

    .line 1977
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P()V

    return-void
.end method

.method private Z()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2094
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 2095
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    return-void
.end method

.method private a(Landroid/media/MediaCrypto;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 977
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    const-string v9, "MediaCodecRenderer"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_3

    .line 8038
    :try_start_0
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    .line 8039
    invoke-virtual {v7, v0, v1, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 8040
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    .line 8045
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    .line 8046
    invoke-virtual {v7, v0, v1, v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 8047
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8048
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drm session requires secure decoder for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    .line 982
    iget-boolean v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Z

    if-eqz v2, :cond_1

    .line 983
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 984
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 985
    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_2
    :goto_0
    iput-object v10, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 989
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, v8, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 997
    :cond_3
    :goto_1
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1005
    :goto_2
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-nez v0, :cond_26

    .line 1006
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/exoplayer2/mediacodec/g;

    .line 1007
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/g;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 8084
    :cond_4
    :try_start_1
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    .line 8087
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v13, 0x17

    if-ge v1, v13, :cond_5

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 8089
    :cond_5
    iget v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u()[Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(F[Lcom/google/android/exoplayer2/Format;)F

    move-result v1

    .line 8090
    :goto_3
    iget v3, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_6

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_4

    :cond_6
    move v14, v1

    .line 8095
    :goto_4
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-string v1, "createCodec:"

    .line 8096
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 8097
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 8098
    iget-boolean v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_7

    :try_start_3
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt v2, v13, :cond_7

    .line 8099
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/a$a;

    .line 8101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a()I

    move-result v3

    iget-boolean v4, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Z

    iget-boolean v5, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/a$a;-><init>(IZZ)V

    .line 8104
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/mediacodec/a$a;->a(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v10

    goto/16 :goto_12

    .line 8106
    :cond_7
    :try_start_4
    iget-object v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/mediacodec/f$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/mediacodec/f$a;->b(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    move-object v6, v1

    .line 8108
    :try_start_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    const-string v1, "configureCodec"

    .line 8109
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 8110
    iget-object v4, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v6

    move-object/from16 v5, p1

    move-object/from16 v17, v6

    move v6, v14

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/mediacodec/f;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V

    .line 8111
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    const-string v1, "startCodec"

    .line 8112
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 8113
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/mediacodec/f;->a()V

    .line 8114
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    .line 8115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v1, v17

    .line 8123
    :try_start_7
    iput-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    .line 8124
    iput-object v12, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Lcom/google/android/exoplayer2/mediacodec/g;

    .line 8125
    iput v14, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:F

    .line 8126
    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    iput-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    .line 8299
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const-string v5, "OMX.Exynos.avc.dec.secure"

    const/16 v6, 0x19

    const/4 v14, 0x1

    if-gt v1, v6, :cond_9

    :try_start_8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v11, "SM-T585"

    .line 8300
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v11, "SM-A510"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v11, "SM-A520"

    .line 8301
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v11, "SM-J700"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x2

    goto :goto_6

    .line 8303
    :cond_9
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v11, 0x18

    if-ge v1, v11, :cond_c

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 8304
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    const-string v1, "flounder"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 8305
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "flounder_lte"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "grouper"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 8306
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "tilapia"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    .line 8127
    :goto_6
    iput v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:I

    .line 8128
    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    .line 8325
    sget v11, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v10, 0x15

    if-ge v11, v10, :cond_d

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 8326
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 8129
    :goto_7
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 9278
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v11, 0x13

    const/16 v2, 0x12

    if-lt v1, v2, :cond_10

    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ne v1, v2, :cond_e

    const-string v1, "OMX.SEC.avc.dec"

    .line 9280
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ne v1, v11, :cond_f

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v6, "SM-G800"

    .line 9281
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "OMX.Exynos.avc.dec"

    .line 9282
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v1, 0x1

    .line 8130
    :goto_9
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    .line 9343
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v5, 0x1d

    if-ne v1, v5, :cond_11

    const-string v1, "c2.android.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 8131
    :goto_a
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    .line 9382
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-gt v1, v13, :cond_12

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_12
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-gt v1, v11, :cond_15

    const-string v1, "hb2000"

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 9384
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "stvm8"

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 9385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 9386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    .line 8132
    :goto_b
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:Z

    .line 9419
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ne v1, v10, :cond_16

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    .line 8133
    :goto_c
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Z

    .line 10396
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v1, v10, :cond_18

    const-string v1, "OMX.SEC.mp3.dec"

    .line 10397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "samsung"

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    .line 10398
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v6, "baffin"

    .line 10399
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v6, "grand"

    .line 10400
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v6, "fortuna"

    .line 10401
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v6, "gprimelte"

    .line 10402
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v6, "j2y18lte"

    .line 10403
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v6, "ms01"

    .line 10404
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    const/4 v1, 0x1

    goto :goto_d

    :cond_18
    const/4 v1, 0x0

    .line 8134
    :goto_d
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Z

    .line 8135
    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    .line 10437
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    if-gt v6, v2, :cond_19

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v1, v14, :cond_19

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 10438
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_e

    :cond_19
    const/4 v1, 0x0

    .line 8136
    :goto_e
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Z

    .line 11359
    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    .line 11360
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v6, 0x19

    if-gt v2, v6, :cond_1a

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1a
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v6, 0x11

    if-gt v2, v6, :cond_1b

    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 11361
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    if-gt v2, v5, :cond_1c

    const-string v2, "OMX.broadcom.video_decoder.tunnel"

    .line 11363
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 11364
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    const-string v1, "Amazon"

    sget-object v2, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    .line 11365
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "AFTS"

    sget-object v2, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, v12, Lcom/google/android/exoplayer2/mediacodec/g;->g:Z

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    goto :goto_f

    :cond_1e
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_20

    .line 8138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v1, 0x0

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U:Z

    const-string v1, "c2.android.mp3.decoder"

    .line 8139
    iget-object v2, v12, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8140
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/e;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/mediacodec/e;-><init>()V

    iput-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V:Lcom/google/android/exoplayer2/mediacodec/e;

    .line 8143
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C_()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 8144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    add-long/2addr v1, v5

    iput-wide v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W:J

    .line 8147
    :cond_22
    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/d;->a:I

    add-int/2addr v2, v14

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/d;->a:I

    sub-long v5, v3, v15

    move-object/from16 v1, p0

    move-object v2, v0

    .line 8149
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;JJ)V

    goto :goto_14

    :catch_2
    move-exception v0

    move-object/from16 v1, v17

    move-object v6, v1

    goto :goto_12

    :catch_3
    move-exception v0

    move-object v1, v6

    goto :goto_12

    :catch_4
    move-exception v0

    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_23

    .line 8118
    invoke-interface {v6}, Lcom/google/android/exoplayer2/mediacodec/f;->e()V

    .line 8120
    :cond_23
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v0

    .line 1013
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1017
    iget-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1018
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v1, v2, v0, v8, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLcom/google/android/exoplayer2/mediacodec/g;)V

    .line 1021
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v0, :cond_24

    .line 1022
    iput-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_13

    .line 1025
    :cond_24
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1027
    :goto_13
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    :goto_14
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1028
    :cond_25
    iget-object v0, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw v0

    :cond_26
    move-object v1, v10

    .line 1033
    iput-object v1, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    return-void

    :cond_27
    move-object v1, v10

    .line 998
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    const v3, -0xc34f

    invoke-direct {v0, v2, v1, v8, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method private a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->a(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1173
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/drm/j;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 2076
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/j;->d:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2081
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/j;->b:Ljava/util/UUID;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/j;->c:[B

    invoke-direct {v0, v1, p0}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    :try_start_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 2090
    throw p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()Lcom/google/android/exoplayer2/q;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 963
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 965
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 967
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 968
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    .line 969
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private aa()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/j;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/j;->c:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2118
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 2119
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    .line 2120
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    return-void

    :catch_0
    move-exception v0

    .line 2116
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private b(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->a(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1178
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private b(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1765
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_f

    .line 1767
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ak:Z

    if-eqz v0, :cond_1

    .line 1769
    :try_start_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    .line 1772
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    :cond_0
    return v13

    .line 1779
    :cond_1
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_7

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    .line 14883
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->al:Z

    .line 14884
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/f;->c()Landroid/media/MediaFormat;

    move-result-object v0

    .line 14885
    iget v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:I

    if-eqz v1, :cond_2

    const-string/jumbo v1, "width"

    .line 14886
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const-string v1, "height"

    .line 14887
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 14890
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T:Z

    goto :goto_1

    .line 14893
    :cond_2
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R:Z

    if-eqz v1, :cond_3

    const-string v1, "channel-count"

    .line 14894
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14896
    :cond_3
    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Landroid/media/MediaFormat;

    .line 14897
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    :goto_1
    return v14

    .line 1788
    :cond_4
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    if-nez v0, :cond_5

    iget v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1790
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    :cond_6
    return v13

    .line 1796
    :cond_7
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T:Z

    if-eqz v1, :cond_8

    .line 1797
    iput-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T:Z

    .line 1798
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {v1, v0, v13}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    return v14

    .line 1800
    :cond_8
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_9

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    .line 1803
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    return v13

    .line 1807
    :cond_9
    iput v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y:I

    .line 1808
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/f;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 1813
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1814
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1816
    :cond_a
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q:Z

    if-eqz v0, :cond_b

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 1820
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1822
    :cond_b
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 15101
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_d

    .line 15103
    iget-object v4, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_c

    .line 15104
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    .line 1822
    :goto_3
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aa:Z

    .line 1823
    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->an:J

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ab:Z

    .line 1825
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(J)V

    .line 1829
    :cond_f
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->P:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ak:Z

    if-eqz v0, :cond_11

    .line 1831
    :try_start_1
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aa:Z

    iget-boolean v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ab:Z

    iget-object v4, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p3

    const/16 v18, 0x0

    move/from16 v13, v16

    const/16 v16, 0x1

    move-object/from16 v14, v17

    .line 1832
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLcom/google/android/exoplayer2/mediacodec/f;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    nop

    goto :goto_5

    :catch_2
    const/16 v18, 0x0

    .line 1845
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    .line 1846
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    if-eqz v0, :cond_10

    .line 1848
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    :cond_10
    return v18

    :cond_11
    const/16 v16, 0x1

    const/16 v18, 0x0

    .line 1853
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aa:Z

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ab:Z

    iget-object v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1854
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLcom/google/android/exoplayer2/mediacodec/f;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_14

    .line 1869
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(J)V

    .line 1870
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    const/4 v14, 0x1

    goto :goto_7

    :cond_12
    const/4 v14, 0x0

    .line 1871
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T()V

    if-nez v14, :cond_13

    return v16

    .line 1875
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    :cond_14
    return v18
.end method

.method private c(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2126
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->g()Lcom/google/android/exoplayer2/drm/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2127
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/j;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Expecting FrameworkMediaCrypto but found: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 2134
    :cond_1
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/j;

    return-object p1
.end method

.method protected static c(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 2006
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/exoplayer2/drm/j;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 2007
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private e(J)Z
    .locals 5

    .line 1153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method protected B()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected final C()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    .line 4066
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N()V

    .line 4068
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 4069
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 4070
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 4071
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4073
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/d;->d(I)V

    goto :goto_0

    .line 4075
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/d;->d(I)V

    .line 4077
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    return-void

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 542
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_7

    .line 543
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    if-nez v3, :cond_5

    .line 545
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/j;

    move-result-object v1

    if-nez v1, :cond_3

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 557
    :cond_3
    :try_start_0
    new-instance v3, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/j;->b:Ljava/util/UUID;

    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/j;->c:[B

    invoke-direct {v3, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/drm/j;->d:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    .line 563
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:Z

    goto :goto_2

    :catch_0
    move-exception v0

    .line 559
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 566
    :cond_5
    :goto_2
    sget-boolean v0, Lcom/google/android/exoplayer2/drm/j;->a:Z

    if-eqz v0, :cond_7

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()I

    move-result v0

    if-eq v0, v2, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    return-void

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 578
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 580
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    return-void
.end method

.method protected D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final E()Lcom/google/android/exoplayer2/mediacodec/f;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    return-object v0
.end method

.method protected final F()Landroid/media/MediaFormat;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final G()Lcom/google/android/exoplayer2/mediacodec/g;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Lcom/google/android/exoplayer2/mediacodec/g;

    return-object v0
.end method

.method protected final H()V
    .locals 3

    const/4 v0, 0x0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-eqz v1, :cond_0

    .line 766
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/f;->e()V

    .line 767
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/d;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/d;->b:I

    .line 768
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Lcom/google/android/exoplayer2/mediacodec/g;

    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    .line 773
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 774
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    .line 778
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q()V

    return-void

    :catchall_0
    move-exception v1

    .line 777
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    .line 778
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q()V

    .line 780
    throw v1

    :catchall_1
    move-exception v1

    .line 771
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    .line 773
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 774
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 777
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    .line 778
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q()V

    .line 781
    throw v1

    :catchall_2
    move-exception v1

    .line 777
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Landroid/media/MediaCrypto;

    .line 778
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q()V

    .line 780
    throw v1
.end method

.method protected final I()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 856
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    :cond_0
    return v0
.end method

.method public J()V
    .locals 5

    .line 896
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S()V

    .line 897
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 898
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W:J

    const/4 v2, 0x0

    .line 899
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ak:Z

    .line 900
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    .line 901
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S:Z

    .line 902
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T:Z

    .line 903
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aa:Z

    .line 904
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ab:Z

    .line 905
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 906
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    .line 907
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->an:J

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V:Lcom/google/android/exoplayer2/mediacodec/e;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    .line 7047
    iput-wide v3, v0, Lcom/google/android/exoplayer2/mediacodec/e;->a:J

    .line 7048
    iput-wide v3, v0, Lcom/google/android/exoplayer2/mediacodec/e;->b:J

    .line 7049
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/e;->c:Z

    .line 911
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    .line 912
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    .line 917
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->af:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    return-void
.end method

.method protected final K()F
    .locals 1

    .line 1633
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:F

    return v0
.end method

.method public final L()V
    .locals 1

    const/4 v0, 0x1

    .line 1992
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ar:Z

    return-void
.end method

.method protected final M()J
    .locals 2

    .line 2001
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    return-wide v0
.end method

.method protected a(F[Lcom/google/android/exoplayer2/Format;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 7

    .line 1609
    new-instance v6, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method public a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1401
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aq:Z

    .line 1402
    iget-object v1, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    .line 1403
    iget-object v1, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 1408
    iget-object p1, p1, Lcom/google/android/exoplayer2/q;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1409
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    .line 1411
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1412
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ae:Z

    return-object v1

    .line 1416
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-nez p1, :cond_1

    .line 1418
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:Ljava/util/ArrayDeque;

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    return-object v1

    .line 1431
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Lcom/google/android/exoplayer2/mediacodec/g;

    .line 1433
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    .line 1434
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/16 v6, 0x17

    const/4 v7, 0x0

    if-eq v2, v3, :cond_7

    if-eqz v3, :cond_6

    if-nez v2, :cond_2

    goto :goto_0

    .line 14035
    :cond_2
    sget v8, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v8, v6, :cond_3

    goto :goto_0

    .line 14040
    :cond_3
    sget-object v8, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    .line 14041
    invoke-interface {v3}, Lcom/google/android/exoplayer2/drm/DrmSession;->f()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 14047
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/j;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 14058
    :cond_5
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/g;->g:Z

    if-nez v3, :cond_7

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/drm/j;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    .line 1435
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X()V

    .line 1436
    new-instance p1, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object p1

    .line 1443
    :cond_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_b

    .line 1444
    sget v3, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt v3, v6, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1446
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v3

    .line 1448
    iget v6, v3, Lcom/google/android/exoplayer2/decoder/e;->d:I

    const/16 v8, 0x10

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v6, :cond_18

    if-eq v6, v0, :cond_12

    if-eq v6, v10, :cond_e

    if-ne v6, v9, :cond_d

    .line 1484
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    .line 1487
    :cond_c
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_19

    .line 1488
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_7

    .line 1494
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1467
    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_6

    .line 1470
    :cond_f
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->af:Z

    .line 1471
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ag:I

    .line 1472
    iget v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:I

    if-eq v6, v10, :cond_11

    if-ne v6, v0, :cond_10

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v6, v8, :cond_10

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v6, v8, :cond_10

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S:Z

    .line 1477
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_19

    .line 1478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_7

    .line 1453
    :cond_12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V()Z

    move-result v6

    if-nez v6, :cond_13

    :goto_6
    const/16 v7, 0x10

    goto :goto_a

    .line 1456
    :cond_13
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_14

    .line 1458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W()Z

    move-result v0

    if-nez v0, :cond_19

    :goto_7
    const/4 v7, 0x2

    goto :goto_a

    .line 14705
    :cond_14
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aj:Z

    if-eqz v2, :cond_17

    .line 14706
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ah:I

    .line 14707
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O:Z

    if-eqz v2, :cond_15

    goto :goto_8

    .line 14711
    :cond_15
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    goto :goto_9

    .line 14708
    :cond_16
    :goto_8
    iput v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    const/4 v0, 0x0

    :cond_17
    :goto_9
    if-nez v0, :cond_19

    goto :goto_7

    .line 1450
    :cond_18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X()V

    .line 1497
    :cond_19
    :goto_a
    iget v0, v3, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-ne v0, p1, :cond_1a

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    if-ne p1, v9, :cond_1b

    .line 1501
    :cond_1a
    new-instance p1, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object p1

    :cond_1b
    return-object v3

    .line 1406
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {p0, p1, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/g;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 1

    .line 955
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/g;)V

    return-object v0
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/h;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public a(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 722
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:F

    .line 723
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:F

    .line 724
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ai:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C_()I

    move-result p1

    if-eqz p1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V()Z

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 796
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ar:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    .line 797
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ar:Z

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y()V

    .line 800
    :cond_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->as:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v13, 0x0

    if-nez v0, :cond_1e

    const/4 v11, 0x1

    .line 807
    :try_start_0
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    return-void

    .line 811
    :cond_1
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_2

    invoke-direct {v15, v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 816
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    .line 817
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    if-eqz v0, :cond_16

    const-string v0, "bypassRender"

    .line 818
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 4153
    :goto_0
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 4154
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 4155
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    iget-object v7, v0, Lcom/google/android/exoplayer2/mediacodec/d;->c:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Y:I

    const/4 v9, 0x0

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    .line 5078
    iget v10, v0, Lcom/google/android/exoplayer2/mediacodec/d;->h:I

    .line 4162
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    .line 6065
    iget-wide v4, v0, Lcom/google/android/exoplayer2/mediacodec/d;->e:J

    .line 4163
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    .line 4164
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->E_()Z

    move-result v0

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    .line 4165
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/d;->c()Z

    move-result v16

    iget-object v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v17, v4

    move-wide/from16 v4, p3

    move-object/from16 v19, v12

    move-wide/from16 v11, v17

    move v13, v0

    move/from16 v14, v16

    move-object/from16 v15, v19

    .line 4155
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLcom/google/android/exoplayer2/mediacodec/f;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    .line 4168
    :try_start_2
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    .line 6073
    iget-wide v2, v0, Lcom/google/android/exoplayer2/mediacodec/d;->g:J

    .line 4168
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(J)V

    .line 4169
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->a()V

    goto :goto_3

    :cond_4
    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_5
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_c

    :cond_6
    move-object v1, v15

    .line 4177
    :goto_3
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    .line 4178
    :try_start_3
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    .line 4182
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ad:Z

    if-eqz v0, :cond_8

    .line 4183
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/mediacodec/d;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x0

    .line 4184
    :try_start_4
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ad:Z

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 4187
    :goto_4
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ae:Z

    if-eqz v0, :cond_b

    .line 4188
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v5, 0x0

    :cond_9
    :goto_5
    const/4 v14, 0x1

    goto/16 :goto_b

    .line 4194
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N()V

    .line 4195
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ae:Z

    .line 4196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    .line 4197
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    if-eqz v0, :cond_5

    .line 6216
    :cond_b
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    if-nez v0, :cond_c

    const/4 v14, 0x1

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    :goto_6
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 6217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()Lcom/google/android/exoplayer2/q;

    move-result-object v0

    .line 6218
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 6220
    :cond_d
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 6222
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0, v4, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_12

    const/4 v5, -0x4

    if-eq v4, v5, :cond_f

    const/4 v0, -0x3

    if-ne v4, v0, :cond_e

    :goto_7
    const/4 v5, 0x0

    goto :goto_9

    .line 6248
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6230
    :cond_f
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6231
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    goto :goto_7

    .line 6234
    :cond_10
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aq:Z

    if-eqz v4, :cond_11

    .line 6236
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    iput-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x0

    .line 6237
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 6238
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aq:Z

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    .line 6241
    :goto_8
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->h()V

    .line 6242
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    iget-object v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/mediacodec/d;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 6243
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ad:Z

    goto :goto_9

    :cond_12
    const/4 v5, 0x0

    .line 6225
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;

    .line 4206
    :goto_9
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4207
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->h()V

    .line 4212
    :cond_13
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/d;->i()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ae:Z

    if-eqz v0, :cond_14

    goto/16 :goto_5

    :cond_14
    :goto_a
    const/4 v14, 0x0

    :goto_b
    if-nez v14, :cond_15

    .line 820
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    return-void

    :cond_15
    move-object v15, v1

    move-object v13, v5

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :cond_16
    move-object v1, v15

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 821
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:Lcom/google/android/exoplayer2/mediacodec/f;

    if-eqz v0, :cond_1a

    .line 822
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v0, "drainAndFeed"

    .line 823
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 824
    :cond_17
    invoke-direct/range {p0 .. p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 825
    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e(J)Z

    move-result v0

    if-nez v0, :cond_17

    .line 826
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->U()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e(J)Z

    move-result v0

    if-nez v0, :cond_18

    .line 827
    :cond_19
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    return-void

    .line 829
    :cond_1a
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v4, v0, Lcom/google/android/exoplayer2/decoder/d;->d:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/exoplayer2/decoder/d;->d:I

    .line 834
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Z)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v1, v15

    :goto_c
    const/4 v2, 0x1

    :goto_d
    const/4 v3, 0x0

    .line 6254
    :goto_e
    sget v4, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1b

    .line 6263
    instance-of v4, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v4, :cond_1b

    :goto_f
    const/4 v14, 0x1

    goto :goto_10

    .line 6257
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 6258
    array-length v5, v4

    if-lez v5, :cond_1c

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.MediaCodec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v14, 0x0

    :goto_10
    if-eqz v14, :cond_1d

    .line 6660
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Lcom/google/android/exoplayer2/mediacodec/g;

    .line 839
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/g;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 841
    :cond_1d
    throw v0

    :cond_1e
    move-object v5, v13

    move-object v1, v15

    .line 802
    iput-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->as:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 803
    throw v0
.end method

.method public a(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 694
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ao:Z

    .line 695
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    .line 696
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ar:Z

    .line 697
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ac:Z

    if-eqz p2, :cond_0

    .line 698
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/mediacodec/d;->a()V

    .line 699
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 700
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ad:Z

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()Z

    .line 707
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ac;->b()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_1

    .line 708
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->aq:Z

    .line 710
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ac;->a()V

    .line 711
    iget p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    if-eqz p2, :cond_2

    .line 712
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:[J

    sub-int/2addr p2, p3

    aget-wide p2, v0, p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->at:J

    .line 715
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->as:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/mediacodec/f;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 666
    new-instance p1, Lcom/google/android/exoplayer2/decoder/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 672
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 673
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->at:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 674
    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->at:J

    .line 675
    iput-wide p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    return-void

    .line 677
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    sub-int/2addr v2, p1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    .line 683
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    .line 685
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 686
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    add-int/lit8 p3, v1, -0x1

    aput-wide p4, p2, p3

    .line 687
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:[J

    sub-int/2addr v1, p1

    iget-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->am:J

    aput-wide p3, p2, v1

    return-void
.end method

.method protected abstract a(JJLcom/google/android/exoplayer2/mediacodec/f;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/g;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected b(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final c(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ac;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_0

    .line 631
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    if-eqz p2, :cond_0

    .line 636
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ac;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 639
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 642
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_3

    .line 643
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Lcom/google/android/exoplayer2/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 644
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    :cond_3
    return-void
.end method

.method public d(J)V
    .locals 6

    .line 1564
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->at:J

    .line 1567
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    add-int/lit8 v0, v0, -0x1

    .line 1568
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    const/4 v3, 0x1

    .line 1569
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1575
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1581
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1587
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A()V

    goto :goto_0

    :cond_0
    return-void
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
    .locals 2

    const/4 v0, 0x0

    .line 733
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 734
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->at:J

    .line 735
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->au:J

    const/4 v0, 0x0

    .line 736
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->av:I

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->O()Z

    return-void

    .line 739
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()V

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x0

    .line 748
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N()V

    .line 749
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 752
    throw v1
.end method

.method public y()Z
    .locals 5

    .line 1624
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->W:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1619
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ap:Z

    return v0
.end method
