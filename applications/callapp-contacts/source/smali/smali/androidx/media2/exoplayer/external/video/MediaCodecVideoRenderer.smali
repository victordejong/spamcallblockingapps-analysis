.class public Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.super Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;,
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;,
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$VideoDecoderException;
    }
.end annotation


# static fields
.field private static final c:[I

.field private static d:Z

.field private static e:Z


# instance fields
.field private A:J

.field private B:I

.field private C:F

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:I

.field private I:I

.field private J:I

.field private K:F

.field private L:Z

.field private M:I

.field private N:J

.field private O:J

.field private P:I

.field private Q:Landroidx/media2/exoplayer/external/video/d;

.field b:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

.field private final f:Landroid/content/Context;

.field private final g:Landroidx/media2/exoplayer/external/video/e;

.field private final h:Landroidx/media2/exoplayer/external/video/g$a;

.field private final i:J

.field private final j:I

.field private final k:Z

.field private final l:[J

.field private final m:[J

.field private n:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

.field private o:Z

.field private p:Z

.field private q:Landroid/view/Surface;

.field private r:Landroid/view/Surface;

.field private s:I

.field private t:Z

.field private u:J

.field private v:J

.field private w:J

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 90
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->c:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 173
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 184
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 211
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "J",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/g;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 249
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroidx/media2/exoplayer/external/drm/k;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroidx/media2/exoplayer/external/drm/k;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "J",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/g;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 292
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZZF)V

    move-wide v0, p3

    .line 299
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->i:J

    move/from16 v0, p10

    .line 300
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->j:I

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f:Landroid/content/Context;

    .line 302
    new-instance v1, Landroidx/media2/exoplayer/external/video/e;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/video/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->g:Landroidx/media2/exoplayer/external/video/e;

    .line 303
    new-instance v0, Landroidx/media2/exoplayer/external/video/g$a;

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/video/g$a;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;)V

    iput-object v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    .line 2485
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->k:Z

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 305
    iput-object v1, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->l:[J

    new-array v0, v0, [J

    .line 306
    iput-object v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->m:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 307
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->O:J

    .line 308
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N:J

    .line 309
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    const/4 v0, -0x1

    .line 310
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D:I

    .line 311
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 312
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    .line 313
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C:F

    const/4 v0, 0x1

    .line 314
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->s:I

    .line 315
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K()V

    return-void
.end method

.method private H()V
    .locals 5

    .line 1117
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->i:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    return-void
.end method

.method private I()V
    .locals 3

    const/4 v0, 0x0

    .line 1122
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t:Z

    .line 1127
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    new-instance v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

    :cond_0
    return-void
.end method

.method private J()V
    .locals 2

    .line 1137
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1138
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t:Z

    .line 1139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/g$a;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    const/4 v0, -0x1

    .line 1150
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->H:I

    .line 1151
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1152
    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K:F

    .line 1153
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J:I

    return-void
.end method

.method private L()V
    .locals 5

    .line 1157
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    if-eq v2, v1, :cond_2

    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->H:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->F:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K:F

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1161
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->F:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    invoke-virtual {v1, v0, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/g$a;->a(IIIF)V

    .line 1163
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->H:I

    .line 1164
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I:I

    .line 1165
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->F:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J:I

    .line 1166
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K:F

    :cond_2
    return-void
.end method

.method private M()V
    .locals 5

    .line 1171
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->H:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I:I

    if-eq v2, v1, :cond_1

    .line 1172
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K:F

    invoke-virtual {v1, v0, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/g$a;->a(IIIF)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 6

    .line 1178
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    if-lez v0, :cond_0

    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1180
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->w:J

    sub-long v2, v0, v2

    .line 1181
    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget v5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/video/g$a;->a(IJ)V

    const/4 v2, 0x0

    .line 1182
    iput v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    .line 1183
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->w:J

    :cond_0
    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    if-ne p3, v0, :cond_0

    goto/16 :goto_5

    .line 1433
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v0

    .line 1440
    :pswitch_0
    sget-object p1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1441
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 1442
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 1443
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    const/16 p0, 0x10

    .line 1449
    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result p1

    invoke-static {p3, p0}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result p2

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p2, p1, 0x10

    goto :goto_3

    :cond_8
    :goto_2
    return v0

    :pswitch_1
    mul-int p2, p2, p3

    goto :goto_4

    :pswitch_2
    mul-int p2, p2, p3

    :goto_3
    const/4 v2, 0x2

    :goto_4
    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 v2, v2, 0x2

    .line 1467
    div-int/2addr p2, v2

    return p2

    :cond_9
    :goto_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)Landroid/graphics/Point;
    .locals 13

    .line 1353
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1354
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    goto :goto_1

    :cond_1
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1355
    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    goto :goto_2

    :cond_2
    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1357
    sget-object v5, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->c:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_c

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_c

    if-gt v9, v3, :cond_3

    goto/16 :goto_9

    .line 1362
    :cond_3
    sget v10, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_8

    if-eqz v0, :cond_4

    move v10, v9

    goto :goto_4

    :cond_4
    move v10, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 16443
    :goto_5
    iget-object v9, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v9, :cond_6

    const-string v8, "align.caps"

    .line 16444
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 16447
    :cond_6
    iget-object v9, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v8, "align.vCaps"

    .line 16449
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 16452
    :cond_7
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v7

    .line 16453
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v9

    .line 16454
    new-instance v11, Landroid/graphics/Point;

    invoke-static {v10, v7}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result v10

    mul-int v10, v10, v7

    .line 16455
    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result v7

    mul-int v7, v7, v9

    invoke-direct {v11, v10, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v7, v11

    .line 1365
    :goto_6
    iget v8, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 1366
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(IID)Z

    move-result v8

    if-eqz v8, :cond_b

    return-object v7

    :cond_8
    const/16 v10, 0x10

    .line 1372
    :try_start_0
    invoke-static {v8, v10}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1373
    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 1374
    invoke-static {}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->b()I

    move-result v11

    if-gt v10, v11, :cond_b

    .line 1375
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_9

    move p1, v9

    goto :goto_7

    :cond_9
    move p1, v8

    :goto_7
    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    move v8, v9

    .line 1377
    :goto_8
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :catch_0
    :cond_c
    :goto_9
    return-object v7
.end method

.method private static a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/Format;",
            "ZZ)",
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

    .line 397
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 398
    invoke-interface {p0, v0, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/b;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 400
    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    .line 401
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 405
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    const-string p1, "video/avc"

    .line 412
    invoke-interface {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/b;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 411
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "video/hevc"

    .line 408
    invoke-interface {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/b;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 407
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/media/MediaCodec;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    .line 1005
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1006
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1007
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    .line 1008
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget p2, p1, Landroidx/media2/exoplayer/external/b/d;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media2/exoplayer/external/b/d;->f:I

    return-void
.end method

.method private a(Landroid/media/MediaCodec;II)V
    .locals 0

    .line 878
    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D:I

    .line 879
    iput p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    .line 880
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C:F

    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    .line 881
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_1

    .line 885
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->B:I

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_0

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_2

    .line 886
    :cond_0
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D:I

    .line 887
    iget p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    iput p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D:I

    .line 888
    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 889
    iget p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    div-float/2addr p2, p3

    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->G:F

    goto :goto_0

    .line 893
    :cond_1
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->B:I

    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->F:I

    .line 896
    :cond_2
    :goto_0
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->s:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private a(Landroid/media/MediaCodec;IJ)V
    .locals 1

    .line 1099
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L()V

    const-string v0, "releaseOutputBuffer"

    .line 1100
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 1102
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    .line 1103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->A:J

    .line 1104
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget p2, p1, Landroidx/media2/exoplayer/external/b/d;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media2/exoplayer/external/b/d;->e:I

    const/4 p1, 0x0

    .line 1105
    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->y:I

    .line 1106
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "OMX.google"

    .line 1511
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 1515
    :cond_0
    const-class p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    monitor-enter p0

    .line 1516
    :try_start_0
    sget-boolean v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->d:Z

    if-nez v1, :cond_9

    .line 1517
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2

    const-string v1, "dangal"

    sget-object v4, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HWEML"

    sget-object v4, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1520
    :cond_1
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->e:Z

    goto/16 :goto_5

    .line 1521
    :cond_2
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ge v1, v2, :cond_8

    .line 1539
    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "ELUGA_Note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x56

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x66

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x76

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x52

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x64

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5c

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6e

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6d

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6c

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6b

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x78

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x71

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x62

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x60

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5e

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x46

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4f

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_3b
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_3c
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x79

    goto/16 :goto_1

    :sswitch_3d
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x61

    goto/16 :goto_1

    :sswitch_3e
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    goto/16 :goto_1

    :sswitch_3f
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x50

    goto/16 :goto_1

    :sswitch_40
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_41
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_42
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_43
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_44
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_45
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_46
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_47
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x7c

    goto/16 :goto_1

    :sswitch_48
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x65

    goto/16 :goto_1

    :sswitch_49
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5d

    goto/16 :goto_1

    :sswitch_4a
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x51

    goto/16 :goto_1

    :sswitch_4b
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_4c
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_4d
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_4e
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x47

    goto/16 :goto_1

    :sswitch_4f
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x72

    goto/16 :goto_1

    :sswitch_50
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x70

    goto/16 :goto_1

    :sswitch_51
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x63

    goto/16 :goto_1

    :sswitch_52
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_53
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x77

    goto/16 :goto_1

    :sswitch_54
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_55
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x7b

    goto/16 :goto_1

    :sswitch_56
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_57
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6a

    goto/16 :goto_1

    :sswitch_58
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5b

    goto/16 :goto_1

    :sswitch_59
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_5a
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_5b
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4e

    goto/16 :goto_1

    :sswitch_5c
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x75

    goto/16 :goto_1

    :sswitch_5d
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x74

    goto/16 :goto_1

    :sswitch_5e
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x68

    goto/16 :goto_1

    :sswitch_5f
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_60
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_61
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6f

    goto/16 :goto_1

    :sswitch_62
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_63
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x69

    goto/16 :goto_1

    :sswitch_64
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_65
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_66
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_67
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x67

    goto/16 :goto_1

    :sswitch_68
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_69
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_6a
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_6b
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x55

    goto/16 :goto_1

    :sswitch_6c
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x54

    goto/16 :goto_1

    :sswitch_6d
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x53

    goto/16 :goto_1

    :sswitch_6e
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x73

    goto/16 :goto_1

    :sswitch_6f
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5a

    goto/16 :goto_1

    :sswitch_70
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_71
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x7a

    goto/16 :goto_1

    :sswitch_72
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_73
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x59

    goto/16 :goto_1

    :sswitch_74
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x58

    goto :goto_1

    :sswitch_75
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x57

    goto :goto_1

    :sswitch_76
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4d

    goto :goto_1

    :sswitch_77
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4c

    goto :goto_1

    :sswitch_78
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_79
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3f

    goto :goto_1

    :sswitch_7a
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_7b
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2c

    goto :goto_1

    :sswitch_7c
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2b

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1665
    :pswitch_0
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->e:Z

    .line 1671
    :goto_2
    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_5

    const v0, 0x1e9d5f

    if-eq v2, v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_7

    goto :goto_5

    .line 1674
    :cond_7
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->e:Z

    .line 1681
    :cond_8
    :goto_5
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->d:Z

    .line 1683
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    sget-boolean p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->e:Z

    return p0

    :catchall_0
    move-exception v0

    .line 1683
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7c
        -0x7fd6c381 -> :sswitch_7b
        -0x7fd6c368 -> :sswitch_7a
        -0x7d026749 -> :sswitch_79
        -0x78929d6a -> :sswitch_78
        -0x75f50a1e -> :sswitch_77
        -0x75f4fe9d -> :sswitch_76
        -0x736f875c -> :sswitch_75
        -0x736f83c2 -> :sswitch_74
        -0x736f83c1 -> :sswitch_73
        -0x7327ce1c -> :sswitch_72
        -0x651ebb62 -> :sswitch_71
        -0x6423293b -> :sswitch_70
        -0x604f5117 -> :sswitch_6f
        -0x5ca40cc4 -> :sswitch_6e
        -0x58520ec1 -> :sswitch_6d
        -0x58520eba -> :sswitch_6c
        -0x58520eb9 -> :sswitch_6b
        -0x4eaed329 -> :sswitch_6a
        -0x4892fb4f -> :sswitch_69
        -0x465b3df3 -> :sswitch_68
        -0x43e6c939 -> :sswitch_67
        -0x3ec0fcc5 -> :sswitch_66
        -0x3b33cca0 -> :sswitch_65
        -0x3b33cc9a -> :sswitch_64
        -0x398ae3f6 -> :sswitch_63
        -0x391f0fb4 -> :sswitch_62
        -0x346837ae -> :sswitch_61
        -0x323788e3 -> :sswitch_60
        -0x30f57652 -> :sswitch_5f
        -0x2f88a116 -> :sswitch_5e
        -0x2f61ed98 -> :sswitch_5d
        -0x2efd0837 -> :sswitch_5c
        -0x2e9e9441 -> :sswitch_5b
        -0x2247b8b1 -> :sswitch_5a
        -0x1f0fa2b7 -> :sswitch_59
        -0x19af3b41 -> :sswitch_58
        -0x114fad3e -> :sswitch_57
        -0x10dae90b -> :sswitch_56
        -0x1084b7b7 -> :sswitch_55
        -0xa5988e9 -> :sswitch_54
        -0x35f9fbf -> :sswitch_53
        0x84e -> :sswitch_52
        0xa04 -> :sswitch_51
        0xa9b -> :sswitch_50
        0xa9f -> :sswitch_4f
        0xd9b -> :sswitch_4e
        0x11ebd -> :sswitch_4d
        0x127db -> :sswitch_4c
        0x12beb -> :sswitch_4b
        0x1334d -> :sswitch_4a
        0x135c9 -> :sswitch_49
        0x13aea -> :sswitch_48
        0x158d2 -> :sswitch_47
        0x1821e -> :sswitch_46
        0x18220 -> :sswitch_45
        0x18401 -> :sswitch_44
        0x18c69 -> :sswitch_43
        0x1716e6 -> :sswitch_42
        0x171ac8 -> :sswitch_41
        0x171ac9 -> :sswitch_40
        0x252f5f -> :sswitch_3f
        0x25981d -> :sswitch_3e
        0x259b88 -> :sswitch_3d
        0x290a13 -> :sswitch_3c
        0x3021fd -> :sswitch_3b
        0x321e47 -> :sswitch_3a
        0x332327 -> :sswitch_39
        0x33ab63 -> :sswitch_38
        0x27691fb -> :sswitch_37
        0x349f581 -> :sswitch_36
        0x3ab0ea7 -> :sswitch_35
        0x3e53ea5 -> :sswitch_34
        0x3f25a44 -> :sswitch_33
        0x3f25a46 -> :sswitch_32
        0x3f25a49 -> :sswitch_31
        0x3f25e05 -> :sswitch_30
        0x3f25e07 -> :sswitch_2f
        0x3f25e09 -> :sswitch_2e
        0x3f261c6 -> :sswitch_2d
        0x48dce49 -> :sswitch_2c
        0x48dd589 -> :sswitch_2b
        0x48dd8af -> :sswitch_2a
        0x4d36832 -> :sswitch_29
        0x4f0b0e7 -> :sswitch_28
        0x5e2479e -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I
    .locals 3

    .line 1397
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1401
    iget-object p0, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1403
    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1405
    :cond_0
    iget p0, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1409
    :cond_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 2

    .line 1058
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v1, v0, Landroidx/media2/exoplayer/external/b/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media2/exoplayer/external/b/d;->g:I

    .line 1059
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    .line 1060
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->y:I

    .line 1061
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->y:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v1, v1, Landroidx/media2/exoplayer/external/b/d;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroidx/media2/exoplayer/external/b/d;->h:I

    .line 1063
    iget p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->j:I

    if-lez p1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    if-lt v0, p1, :cond_0

    .line 1064
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N()V

    :cond_0
    return-void
.end method

.method private b(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 1077
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L()V

    const-string v0, "releaseOutputBuffer"

    .line 1078
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1079
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1080
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->A:J

    .line 1082
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget p2, p1, Landroidx/media2/exoplayer/external/b/d;->e:I

    add-int/2addr p2, v0

    iput p2, p1, Landroidx/media2/exoplayer/external/b/d;->e:I

    const/4 p1, 0x0

    .line 1083
    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->y:I

    .line 1084
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J()V

    return-void
.end method

.method private b(Landroidx/media2/exoplayer/external/mediacodec/a;)Z
    .locals 2

    .line 1110
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 1112
    invoke-static {v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f:Landroid/content/Context;

    .line 1113
    invoke-static {p1}, Landroidx/media2/exoplayer/external/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static f(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final B()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    return v0
.end method

.method public final E()V
    .locals 2

    const/4 v0, 0x0

    .line 658
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    return-void

    :catchall_0
    move-exception v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    throw v1
.end method

.method public final G()Z
    .locals 2

    const/4 v0, 0x0

    .line 668
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->G()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    return v1

    :catchall_0
    move-exception v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    throw v1
.end method

.method public final a(F[Landroidx/media2/exoplayer/external/Format;)F
    .locals 6

    .line 680
    array-length v0, p2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 681
    iget v4, v4, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_0

    .line 683
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v3, v1

    if-nez p2, :cond_2

    return v1

    :cond_2
    mul-float v3, v3, p1

    return v3
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->width:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->n:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

    iget v1, v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;->a:I

    if-gt v0, v1, :cond_1

    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->height:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->n:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

    iget v1, v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;->b:I

    if-gt v0, v1, :cond_1

    .line 646
    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->n:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

    iget v0, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;->c:I

    if-gt p1, v0, :cond_1

    .line 647
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/Format;)I
    .locals 7
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

    .line 324
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 325
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 328
    :cond_0
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 332
    :goto_0
    invoke-static {p1, p3, v3, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 337
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 340
    invoke-static {p1, p3, v1, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v4

    .line 346
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    if-eqz v0, :cond_5

    .line 349
    const-class v5, Landroidx/media2/exoplayer/external/drm/o;

    iget-object v6, p3, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 351
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p3, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v5, :cond_4

    .line 353
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-nez p2, :cond_6

    const/4 p1, 0x2

    return p1

    .line 358
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 359
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    .line 361
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/a;->b(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x10

    goto :goto_3

    :cond_7
    const/16 p2, 0x8

    :goto_3
    if-eqz v0, :cond_8

    .line 367
    invoke-static {p1, p3, v3, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 372
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 374
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 375
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/a;->b(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v1, 0x20

    :cond_8
    if-eqz v0, :cond_9

    const/4 p1, 0x4

    goto :goto_4

    :cond_9
    const/4 p1, 0x3

    :goto_4
    or-int/2addr p2, v1

    or-int/2addr p1, p2

    return p1
.end method

.method public final a(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/a;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;
    .locals 2

    .line 1340
    new-instance v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$VideoDecoderException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$VideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/a;Landroid/view/Surface;)V

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .locals 1
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

    .line 388
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    invoke-static {p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 537
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 6554
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 6557
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D()Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6558
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroidx/media2/exoplayer/external/mediacodec/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6559
    iget-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f:Landroid/content/Context;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object p2

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    .line 6565
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    if-eq p1, p2, :cond_6

    .line 6566
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    .line 6567
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->i_()I

    move-result p1

    .line 6568
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6570
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->o:Z

    if-nez v1, :cond_2

    .line 7206
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 6573
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E()V

    .line 6574
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->A()V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 6577
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-eq p2, v0, :cond_4

    .line 6579
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->M()V

    .line 6581
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 6583
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->H()V

    return-void

    .line 6587
    :cond_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K()V

    .line 6588
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I()V

    :cond_5
    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 6590
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-eq p2, p1, :cond_7

    .line 6593
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->M()V

    .line 8144
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t:Z

    if-eqz p1, :cond_7

    .line 8145
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/video/g$a;->a(Landroid/view/Surface;)V

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 539
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->s:I

    .line 540
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 542
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->s:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 545
    check-cast p2, Landroidx/media2/exoplayer/external/video/d;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->Q:Landroidx/media2/exoplayer/external/video/d;

    return-void

    .line 547
    :cond_b
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 452
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 453
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 454
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->u:J

    const/4 v0, 0x0

    .line 455
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->y:I

    .line 456
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N:J

    .line 457
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    if-eqz v1, :cond_0

    .line 458
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->l:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v2, v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->O:J

    .line 459
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    :cond_0
    if-eqz p3, :cond_1

    .line 462
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->H()V

    return-void

    .line 464
    :cond_1
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    return-void
.end method

.method public final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 726
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 732
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    .line 735
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_2

    :cond_2
    const-string v1, "height"

    .line 736
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 737
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/b/e;)V
    .locals 4

    .line 715
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    .line 716
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/b/e;->d:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N:J

    .line 717
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    if-eqz v0, :cond_0

    .line 720
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/b/e;->d:J

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->e(J)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 616
    iget-object v5, v1, Landroidx/media2/exoplayer/external/mediacodec/a;->c:Ljava/lang/String;

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    .line 8289
    iget v7, v3, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 8290
    iget v8, v3, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 8291
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result v9

    .line 8292
    array-length v10, v6

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v10, v12, :cond_1

    if-eq v9, v11, :cond_0

    .line 8296
    iget-object v6, v3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v10, v3, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v14, v3, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 8297
    invoke-static {v1, v6, v10, v14}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v11, :cond_0

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 8305
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 8308
    :cond_0
    new-instance v6, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

    invoke-direct {v6, v7, v8, v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;-><init>(III)V

    goto/16 :goto_3

    .line 8311
    :cond_1
    array-length v10, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v10, :cond_5

    aget-object v12, v6, v14

    .line 8312
    invoke-virtual {v1, v3, v12, v13}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 8314
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->width:I

    if-eq v13, v11, :cond_3

    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v13, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x1

    :goto_2
    or-int/2addr v15, v13

    .line 8316
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 8317
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8318
    invoke-static {v1, v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    if-eqz v15, :cond_6

    const/16 v6, 0x42

    .line 8322
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "MediaCodecVideoRenderer"

    invoke-static {v11, v10}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8323
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)Landroid/graphics/Point;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 8325
    iget v12, v10, Landroid/graphics/Point;->x:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 8326
    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8327
    iget-object v10, v3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 8330
    invoke-static {v1, v10, v7, v8}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;II)I

    move-result v10

    .line 8328
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v10, 0x39

    .line 8331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Codec max resolution adjusted to: "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8334
    :cond_6
    new-instance v6, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

    invoke-direct {v6, v7, v8, v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;-><init>(III)V

    .line 617
    :goto_3
    iput-object v6, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->n:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;

    .line 618
    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->k:Z

    iget v8, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->M:I

    .line 9237
    new-instance v9, Landroid/media/MediaFormat;

    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    const-string v10, "mime"

    .line 9239
    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9240
    iget v5, v3, Landroidx/media2/exoplayer/external/Format;->width:I

    const-string v10, "width"

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9241
    iget v5, v3, Landroidx/media2/exoplayer/external/Format;->height:I

    const-string v10, "height"

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9242
    iget-object v5, v3, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-static {v9, v5}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 9244
    iget v5, v3, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const-string v10, "frame-rate"

    invoke-static {v9, v10, v5}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 9245
    iget v5, v3, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    const-string v10, "rotation-degrees"

    invoke-static {v9, v10, v5}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 9246
    iget-object v5, v3, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v9, v5}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    .line 9247
    iget-object v5, v3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v10, "video/dolby-vision"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 9250
    invoke-static/range {p3 .. p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 9252
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 9253
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "profile"

    .line 9252
    invoke-static {v9, v5, v3}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 9257
    :cond_7
    iget v3, v6, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;->a:I

    const-string v5, "max-width"

    invoke-virtual {v9, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9258
    iget v3, v6, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;->b:I

    const-string v5, "max-height"

    invoke-virtual {v9, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9259
    iget v3, v6, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a;->c:I

    const-string v5, "max-input-size"

    invoke-static {v9, v5, v3}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 9262
    sget v3, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_8

    const-string v3, "priority"

    const/4 v6, 0x0

    .line 9263
    invoke-virtual {v9, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_8

    const-string v3, "operating-rate"

    .line 9265
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    if-eqz v7, :cond_9

    const-string v3, "no-post-process"

    const/4 v4, 0x1

    .line 9269
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v6, 0x0

    .line 9270
    invoke-virtual {v9, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    :goto_4
    if-eqz v8, :cond_a

    const-string v3, "tunneled-playback"

    .line 10211
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v3, "audio-session-id"

    .line 10212
    invoke-virtual {v9, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 626
    :cond_a
    iget-object v3, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    if-nez v3, :cond_c

    .line 627
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroidx/media2/exoplayer/external/mediacodec/a;)Z

    move-result v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 628
    iget-object v3, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-nez v3, :cond_b

    .line 629
    iget-object v3, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f:Landroid/content/Context;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    invoke-static {v3, v1}, Landroidx/media2/exoplayer/external/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    .line 631
    :cond_b
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    .line 633
    :cond_c
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    move-object/from16 v3, p4

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v1, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 634
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v1, v5, :cond_d

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    if-eqz v1, :cond_d

    .line 635
    new-instance v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

    :cond_d
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 700
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/x;)V

    .line 701
    iget-object p1, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 702
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    .line 12153
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v1, :cond_0

    .line 12154
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/exoplayer/external/video/j;

    invoke-direct {v2, v0, p1}, Landroidx/media2/exoplayer/external/video/j;-><init>(Landroidx/media2/exoplayer/external/video/g$a;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    :cond_0
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C:F

    .line 704
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->B:I

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 692
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    .line 11143
    iget-object v0, v1, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v0, :cond_0

    .line 11144
    iget-object v7, v1, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v8, Landroidx/media2/exoplayer/external/video/i;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/video/i;-><init>(Landroidx/media2/exoplayer/external/video/g$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    :cond_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->o:Z

    .line 695
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->D()Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 11322
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-lt p2, p3, :cond_2

    iget-object p2, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    const-string p3, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11323
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object p5, p1, p3

    .line 11324
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 695
    :cond_2
    :goto_1
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->p:Z

    return-void
.end method

.method public final a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 422
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Z)V

    .line 423
    iget p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->M:I

    .line 424
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->u()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->M:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 425
    :goto_0
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    if-eq v0, p1, :cond_1

    .line 427
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->E()V

    .line 429
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    .line 3135
    iget-object v3, p1, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v3, :cond_2

    .line 3136
    iget-object v3, p1, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/video/h;

    invoke-direct {v4, p1, v0}, Landroidx/media2/exoplayer/external/video/h;-><init>(Landroidx/media2/exoplayer/external/video/g$a;Landroidx/media2/exoplayer/external/b/d;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->g:Landroidx/media2/exoplayer/external/video/e;

    .line 4101
    iput-boolean v2, p1, Landroidx/media2/exoplayer/external/video/e;->i:Z

    .line 4102
    iget-object v0, p1, Landroidx/media2/exoplayer/external/video/e;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 4103
    iget-object v0, p1, Landroidx/media2/exoplayer/external/video/e;->b:Landroidx/media2/exoplayer/external/video/e$b;

    .line 4308
    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/e$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4104
    iget-object v0, p1, Landroidx/media2/exoplayer/external/video/e;->c:Landroidx/media2/exoplayer/external/video/e$a;

    if-eqz v0, :cond_3

    .line 4105
    iget-object v0, p1, Landroidx/media2/exoplayer/external/video/e;->c:Landroidx/media2/exoplayer/external/video/e$a;

    .line 5245
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/e$a;->a:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 4107
    :cond_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/video/e;->a()V

    :cond_4
    return-void
.end method

.method public final a([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 435
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->O:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 436
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->O:J

    goto :goto_1

    .line 438
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->l:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 439
    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 442
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    .line 444
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->l:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 445
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->m:[J

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N:J

    aput-wide v2, v0, v1

    .line 447
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a([Landroidx/media2/exoplayer/external/Format;J)V

    return-void
.end method

.method public final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZ)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p9

    .line 784
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->u:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    .line 785
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->u:J

    :cond_0
    const/4 v7, 0x1

    if-eqz p11, :cond_1

    if-nez p12, :cond_1

    .line 791
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;I)V

    return v7

    :cond_1
    sub-long v11, v5, v1

    .line 796
    iget-object v8, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    const/4 v14, 0x0

    if-ne v8, v13, :cond_3

    .line 798
    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;I)V

    return v7

    :cond_2
    return v14

    .line 805
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->i_()I

    move-result v8

    const/4 v13, 0x2

    if-ne v8, v13, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 807
    :goto_0
    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t:Z

    if-eqz v13, :cond_1c

    if-eqz v8, :cond_6

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->A:J

    sub-long v9, v15, v9

    .line 12994
    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f(J)Z

    move-result v13

    if-eqz v13, :cond_5

    const-wide/32 v19, 0x186a0

    cmp-long v13, v9, v19

    if-lez v13, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_6

    goto/16 :goto_d

    :cond_6
    if-eqz v8, :cond_1b

    .line 820
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->u:J

    cmp-long v10, v1, v8

    if-nez v10, :cond_7

    goto/16 :goto_c

    :cond_7
    sub-long v15, v15, p3

    sub-long/2addr v11, v15

    .line 830
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    mul-long v11, v11, v17

    add-long/2addr v11, v8

    .line 834
    iget-object v10, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->g:Landroidx/media2/exoplayer/external/video/e;

    move-wide/from16 p3, v8

    mul-long v7, v5, v17

    .line 13139
    iget-boolean v9, v10, Landroidx/media2/exoplayer/external/video/e;->i:Z

    if-eqz v9, :cond_b

    .line 13141
    iget-wide v14, v10, Landroidx/media2/exoplayer/external/video/e;->f:J

    cmp-long v9, v5, v14

    if-eqz v9, :cond_8

    .line 13142
    iget-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->l:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->l:J

    .line 13143
    iget-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->h:J

    iput-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->g:J

    .line 13145
    :cond_8
    iget-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->l:J

    const-wide/16 v15, 0x6

    cmp-long v9, v13, v15

    if-ltz v9, :cond_a

    .line 13150
    iget-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->k:J

    sub-long v13, v7, v13

    iget-wide v1, v10, Landroidx/media2/exoplayer/external/video/e;->l:J

    div-long/2addr v13, v1

    .line 13153
    iget-wide v1, v10, Landroidx/media2/exoplayer/external/video/e;->g:J

    add-long/2addr v1, v13

    .line 13155
    invoke-virtual {v10, v1, v2, v11, v12}, Landroidx/media2/exoplayer/external/video/e;->a(JJ)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    .line 13156
    iput-boolean v9, v10, Landroidx/media2/exoplayer/external/video/e;->i:Z

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    .line 13159
    iget-wide v13, v10, Landroidx/media2/exoplayer/external/video/e;->j:J

    add-long/2addr v13, v1

    move-wide v15, v1

    iget-wide v1, v10, Landroidx/media2/exoplayer/external/video/e;->k:J

    sub-long/2addr v13, v1

    move-wide v1, v15

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    .line 13165
    invoke-virtual {v10, v7, v8, v11, v12}, Landroidx/media2/exoplayer/external/video/e;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 13166
    iput-boolean v9, v10, Landroidx/media2/exoplayer/external/video/e;->i:Z

    :cond_b
    :goto_2
    move-wide v1, v7

    move-wide v13, v11

    .line 13172
    :goto_3
    iget-boolean v9, v10, Landroidx/media2/exoplayer/external/video/e;->i:Z

    if-nez v9, :cond_c

    .line 13173
    iput-wide v7, v10, Landroidx/media2/exoplayer/external/video/e;->k:J

    .line 13174
    iput-wide v11, v10, Landroidx/media2/exoplayer/external/video/e;->j:J

    const-wide/16 v7, 0x0

    .line 13175
    iput-wide v7, v10, Landroidx/media2/exoplayer/external/video/e;->l:J

    const/4 v7, 0x1

    .line 13176
    iput-boolean v7, v10, Landroidx/media2/exoplayer/external/video/e;->i:Z

    .line 13179
    :cond_c
    iput-wide v5, v10, Landroidx/media2/exoplayer/external/video/e;->f:J

    .line 13180
    iput-wide v1, v10, Landroidx/media2/exoplayer/external/video/e;->h:J

    .line 13182
    iget-object v1, v10, Landroidx/media2/exoplayer/external/video/e;->b:Landroidx/media2/exoplayer/external/video/e$b;

    if-eqz v1, :cond_11

    iget-wide v1, v10, Landroidx/media2/exoplayer/external/video/e;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-nez v7, :cond_d

    goto :goto_6

    .line 13185
    :cond_d
    iget-object v1, v10, Landroidx/media2/exoplayer/external/video/e;->b:Landroidx/media2/exoplayer/external/video/e$b;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/video/e$b;->a:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_e

    goto :goto_6

    .line 13191
    :cond_e
    iget-wide v5, v10, Landroidx/media2/exoplayer/external/video/e;->d:J

    sub-long v7, v13, v1

    .line 13219
    div-long/2addr v7, v5

    mul-long v7, v7, v5

    add-long/2addr v1, v7

    cmp-long v7, v13, v1

    if-gtz v7, :cond_f

    sub-long v5, v1, v5

    goto :goto_4

    :cond_f
    add-long/2addr v5, v1

    move-wide/from16 v21, v1

    move-wide v1, v5

    move-wide/from16 v5, v21

    :goto_4
    sub-long v7, v1, v13

    sub-long/2addr v13, v5

    cmp-long v9, v7, v13

    if-gez v9, :cond_10

    goto :goto_5

    :cond_10
    move-wide v1, v5

    .line 13193
    :goto_5
    iget-wide v5, v10, Landroidx/media2/exoplayer/external/video/e;->e:J

    sub-long v13, v1, v5

    :cond_11
    :goto_6
    move-wide/from16 v1, p3

    sub-long v1, v13, v1

    .line 836
    div-long v1, v1, v17

    const-wide/32 v5, -0x7a120

    cmp-long v7, v1, v5

    if-gez v7, :cond_12

    const/4 v5, 0x1

    goto :goto_7

    :cond_12
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_13

    if-nez p12, :cond_13

    const/4 v5, 0x1

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_15

    .line 15039
    invoke-virtual/range {p0 .. p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(J)I

    move-result v5

    if-nez v5, :cond_14

    const/4 v5, 0x0

    goto :goto_9

    .line 15043
    :cond_14
    iget-object v6, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    iget v7, v6, Landroidx/media2/exoplayer/external/b/d;->i:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/media2/exoplayer/external/b/d;->i:I

    .line 15046
    iget v6, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    add-int/2addr v6, v5

    invoke-direct {v0, v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(I)V

    .line 15047
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->F()Z

    const/4 v5, 0x1

    :goto_9
    if-eqz v5, :cond_15

    const/4 v5, 0x0

    return v5

    .line 15966
    :cond_15
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->f(J)Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez p12, :cond_16

    const/4 v5, 0x1

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_17

    const-string v1, "dropVideoBuffer"

    .line 16019
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 16020
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 16021
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    const/4 v5, 0x1

    .line 16022
    invoke-direct {v0, v5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(I)V

    return v5

    :cond_17
    const/4 v5, 0x1

    .line 846
    sget v6, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_18

    const-wide/32 v6, 0xc350

    cmp-long v8, v1, v6

    if-gez v8, :cond_1a

    .line 850
    invoke-direct {v0, v3, v4, v13, v14}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;IJ)V

    return v5

    :cond_18
    const-wide/16 v5, 0x7530

    cmp-long v7, v1, v5

    if-gez v7, :cond_1a

    const-wide/16 v5, 0x2af8

    cmp-long v7, v1, v5

    if-lez v7, :cond_19

    const-wide/16 v5, 0x2710

    sub-long/2addr v1, v5

    .line 861
    :try_start_0
    div-long v1, v1, v17

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 863
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    return v1

    .line 868
    :cond_19
    :goto_b
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroid/media/MediaCodec;I)V

    const/4 v1, 0x1

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1

    :cond_1b
    :goto_c
    const/4 v1, 0x0

    return v1

    .line 810
    :cond_1c
    :goto_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 812
    sget v5, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1d

    .line 813
    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;IJ)V

    goto :goto_e

    .line 815
    :cond_1d
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroid/media/MediaCodec;I)V

    :goto_e
    const/4 v1, 0x1

    return v1
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/a;)Z
    .locals 1

    .line 600
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b(Landroidx/media2/exoplayer/external/mediacodec/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroidx/media2/exoplayer/external/b/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 743
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->p:Z

    if-nez v0, :cond_0

    return-void

    .line 746
    :cond_0
    iget-object p1, p1, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 747
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 749
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 750
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 751
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 752
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 753
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 754
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 762
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 763
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 764
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 766
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C()Landroid/media/MediaCodec;

    move-result-object p1

    .line 12199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 12200
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 12201
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final c(J)V
    .locals 6

    .line 935
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->z:I

    .line 936
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->m:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    .line 938
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->l:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->O:J

    add-int/lit8 v0, v0, -0x1

    .line 939
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    .line 940
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 946
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->m:[J

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final e(J)V
    .locals 3

    .line 918
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->d(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C()Landroid/media/MediaCodec;

    move-result-object v1

    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;II)V

    .line 922
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L()V

    .line 923
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->J()V

    .line 924
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->c(J)V

    return-void
.end method

.method public final p()V
    .locals 4

    .line 490
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p()V

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->x:I

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->w:J

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->A:J

    return-void
.end method

.method public final q()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 498
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    .line 499
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N()V

    .line 500
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q()V

    return-void
.end method

.method public final r()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 505
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->N:J

    .line 506
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->O:J

    const/4 v0, 0x0

    .line 507
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->P:I

    .line 508
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->K()V

    .line 509
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->I()V

    .line 510
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->g:Landroidx/media2/exoplayer/external/video/e;

    .line 6115
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/e;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 6116
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/e;->c:Landroidx/media2/exoplayer/external/video/e$a;

    if-eqz v1, :cond_0

    .line 6117
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/e;->c:Landroidx/media2/exoplayer/external/video/e$a;

    .line 6249
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/e$a;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 6119
    :cond_0
    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/e;->b:Landroidx/media2/exoplayer/external/video/e$b;

    .line 6316
    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/e$b;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

    .line 513
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/g$a;->a(Landroidx/media2/exoplayer/external/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->h:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->a:Landroidx/media2/exoplayer/external/b/d;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/video/g$a;->a(Landroidx/media2/exoplayer/external/b/d;)V

    throw v0
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    .line 522
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 525
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 526
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    .line 528
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 529
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 524
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 525
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 526
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    .line 528
    :cond_2
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 529
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    :cond_3
    throw v1
.end method

.method public final x()Z
    .locals 9

    .line 470
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->x()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->r:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->q:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->C()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->L:Z

    if-eqz v0, :cond_2

    .line 473
    :cond_1
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    return v1

    .line 475
    :cond_2
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 478
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 483
    :cond_4
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->v:J

    return v0
.end method
