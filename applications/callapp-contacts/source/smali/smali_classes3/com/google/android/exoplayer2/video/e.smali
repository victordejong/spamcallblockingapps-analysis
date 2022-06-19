.class public Lcom/google/android/exoplayer2/video/e;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/e$b;,
        Lcom/google/android/exoplayer2/video/e$a;
    }
.end annotation


# static fields
.field private static final f:[I

.field private static g:Z

.field private static h:Z


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:I

.field private E:J

.field private F:J

.field private G:J

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:F

.field private M:I

.field private N:I

.field private O:I

.field private P:F

.field private Q:Z

.field private R:I

.field private S:Lcom/google/android/exoplayer2/video/i;

.field a:Lcom/google/android/exoplayer2/video/e$b;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/google/android/exoplayer2/video/j;

.field private final k:Lcom/google/android/exoplayer2/video/l$a;

.field private final l:J

.field private final m:I

.field private final n:Z

.field private o:Lcom/google/android/exoplayer2/video/e$a;

.field private p:Z

.field private q:Z

.field private r:Landroid/view/Surface;

.field private s:Landroid/view/Surface;

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 99
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/video/e;->f:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V
    .locals 6

    const/4 v1, 0x2

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;ZF)V

    .line 277
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/e;->l:J

    .line 278
    iput p9, p0, Lcom/google/android/exoplayer2/video/e;->m:I

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/e;->i:Landroid/content/Context;

    .line 280
    new-instance p2, Lcom/google/android/exoplayer2/video/j;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/video/j;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 281
    new-instance p1, Lcom/google/android/exoplayer2/video/l$a;

    invoke-direct {p1, p7, p8}, Lcom/google/android/exoplayer2/video/l$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/l;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    .line 2540
    sget-object p1, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string p2, "NVIDIA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 282
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->n:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 283
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    const/4 p1, -0x1

    .line 284
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    .line 285
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 286
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    const/4 p1, 0x1

    .line 287
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->u:I

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->R:I

    .line 289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->Q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V
    .locals 10

    .line 200
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/f$a;->a:Lcom/google/android/exoplayer2/mediacodec/f$a;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/video/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V
    .locals 10

    .line 233
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/f$a;->a:Lcom/google/android/exoplayer2/mediacodec/f$a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/video/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V

    return-void
.end method

.method private N()V
    .locals 5

    .line 1153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/e;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/e;->l:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    return-void
.end method

.method private O()V
    .locals 2

    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->v:Z

    .line 1163
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    new-instance v1, Lcom/google/android/exoplayer2/video/e$b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/e$b;-><init>(Lcom/google/android/exoplayer2/video/e;Lcom/google/android/exoplayer2/mediacodec/f;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/e;->a:Lcom/google/android/exoplayer2/video/e$b;

    :cond_0
    return-void
.end method

.method private P()V
    .locals 3

    const/4 v0, 0x1

    .line 1173
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->x:Z

    .line 1174
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/e;->v:Z

    if-nez v1, :cond_0

    .line 1175
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->v:Z

    .line 1176
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/l$a;->a(Landroid/view/Surface;)V

    .line 1177
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->t:Z

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    const/4 v0, -0x1

    .line 1188
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->M:I

    .line 1189
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->N:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1190
    iput v1, p0, Lcom/google/android/exoplayer2/video/e;->P:F

    .line 1191
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->O:I

    return-void
.end method

.method private R()V
    .locals 5

    .line 1195
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    if-eq v2, v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/video/e;->M:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/e;->N:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/e;->O:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->K:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/e;->P:F

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1199
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/e;->K:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/video/l$a;->a(IIIF)V

    .line 1201
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->M:I

    .line 1202
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->N:I

    .line 1203
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->K:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->O:I

    .line 1204
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->P:F

    :cond_2
    return-void
.end method

.method private S()V
    .locals 5

    .line 1209
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->M:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->N:I

    if-eq v2, v1, :cond_1

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->N:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/e;->O:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/e;->P:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/video/l$a;->a(IIIF)V

    :cond_1
    return-void
.end method

.method private T()V
    .locals 6

    .line 1216
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    if-lez v0, :cond_0

    .line 1217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1218
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/e;->A:J

    sub-long v2, v0, v2

    .line 1219
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget v5, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/l$a;->a(IJ)V

    const/4 v2, 0x0

    .line 1220
    iput v2, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    .line 1221
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/e;->A:J

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/g;Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    if-ne p3, v0, :cond_0

    goto/16 :goto_4

    .line 1485
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
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "video/dolby-vision"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    mul-int p2, p2, p3

    goto :goto_3

    :pswitch_1
    mul-int p2, p2, p3

    :goto_2
    const/4 v2, 0x2

    goto :goto_3

    .line 1495
    :pswitch_2
    sget-object p1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1496
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 1497
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 1498
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/g;->g:Z

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    const/16 p0, 0x10

    .line 1504
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result p1

    invoke-static {p3, p0}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result p2

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p2, p1, 0x10

    goto :goto_2

    :goto_3
    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 v2, v2, 0x2

    .line 1522
    div-int/2addr p2, v2

    return p2

    :cond_9
    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_6
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
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 13

    .line 1405
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1406
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1407
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1409
    sget-object v5, Lcom/google/android/exoplayer2/video/e;->f:[I

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

    goto :goto_9

    .line 1414
    :cond_3
    sget v10, Lcom/google/android/exoplayer2/util/af;->a:I

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

    .line 27519
    :goto_5
    iget-object v9, p0, Lcom/google/android/exoplayer2/mediacodec/g;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v9, :cond_6

    goto :goto_6

    .line 27522
    :cond_6
    iget-object v9, p0, Lcom/google/android/exoplayer2/mediacodec/g;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_6

    .line 27526
    :cond_7
    invoke-static {v9, v10, v8}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v7

    .line 1417
    :goto_6
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1418
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/g;->a(IID)Z

    move-result v8

    if-eqz v8, :cond_b

    return-object v7

    :cond_8
    const/16 v10, 0x10

    .line 1424
    :try_start_0
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1425
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 1426
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b()I

    move-result v11

    if-gt v10, v11, :cond_b

    .line 1427
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

    .line 1429
    :goto_8
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    :cond_c
    :goto_9
    return-object v7
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/h;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
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

    .line 371
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 376
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/h;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 378
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video/dolby-vision"

    .line 379
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 384
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p1, v0, :cond_3

    const-string p1, "video/avc"

    .line 392
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/h;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 391
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "video/hevc"

    .line 388
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/h;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 387
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(JJLcom/google/android/exoplayer2/Format;)V
    .locals 6

    .line 938
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->S:Lcom/google/android/exoplayer2/video/i;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->F()Landroid/media/MediaFormat;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 939
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/i;->a(JJLcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/mediacodec/f;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    .line 1024
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1025
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    .line 1026
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    .line 1027
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/mediacodec/f;IJ)V
    .locals 1

    .line 1135
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->R()V

    const-string v0, "releaseOutputBuffer"

    .line 1136
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 1137
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IJ)V

    .line 1138
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    .line 1139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/e;->F:J

    .line 1140
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    const/4 p1, 0x0

    .line 1141
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->C:I

    .line 1142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->P()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/video/e;)V
    .locals 0

    .line 27955
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->L()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/video/e;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 1449
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1453
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1455
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1461
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/g;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    .line 1084
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    .line 1085
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->C:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->C:I

    .line 1086
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->C:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 1087
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 1088
    iget p1, p0, Lcom/google/android/exoplayer2/video/e;->m:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    if-lt v0, p1, :cond_0

    .line 1089
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->T()V

    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/mediacodec/f;I)V
    .locals 3

    .line 1113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->R()V

    const-string v0, "releaseOutputBuffer"

    .line 1114
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1115
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    .line 1116
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    .line 1117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/e;->F:J

    .line 1118
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    const/4 p1, 0x0

    .line 1119
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->C:I

    .line 1120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->P()V

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/mediacodec/g;)Z
    .locals 2

    .line 1146
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    .line 1148
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/g;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->i:Landroid/content/Context;

    .line 1149
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 13

    const-string v0, "OMX.google"

    .line 1566
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 1570
    :cond_0
    const-class p0, Lcom/google/android/exoplayer2/video/e;

    monitor-enter p0

    .line 1571
    :try_start_0
    sget-boolean v1, Lcom/google/android/exoplayer2/video/e;->g:Z

    if-nez v1, :cond_b

    .line 27597
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/16 v6, 0x1c

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v1, v6, :cond_3

    .line 27603
    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v10, "machuca"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v10, "once"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v10, "magnolia"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "oneday"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v10, "dangalUHD"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v10, "dangalFHD"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v10, "dangal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :cond_2
    :goto_2
    :pswitch_0
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 27616
    :cond_3
    :goto_3
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v10, 0x1b

    if-gt v1, v10, :cond_4

    const-string v1, "HWEML"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 27621
    :cond_4
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v11, 0x1a

    if-gt v1, v11, :cond_a

    .line 27641
    sget-object v1, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_7
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x42

    goto/16 :goto_5

    :sswitch_8
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x41

    goto/16 :goto_5

    :sswitch_9
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x21

    goto/16 :goto_5

    :sswitch_a
    const-string v2, "ELUGA_Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x20

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xe

    goto/16 :goto_5

    :sswitch_c
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x40

    goto/16 :goto_5

    :sswitch_d
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3f

    goto/16 :goto_5

    :sswitch_e
    const-string v2, "DM-01K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1d

    goto/16 :goto_5

    :sswitch_f
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x13

    goto/16 :goto_5

    :sswitch_10
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x45

    goto/16 :goto_5

    :sswitch_11
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x64

    goto/16 :goto_5

    :sswitch_12
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x75

    goto/16 :goto_5

    :sswitch_13
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x44

    goto/16 :goto_5

    :sswitch_14
    const-string v2, "CPH1715"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x18

    goto/16 :goto_5

    :sswitch_15
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x17

    goto/16 :goto_5

    :sswitch_16
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x85

    goto/16 :goto_5

    :sswitch_17
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3d

    goto/16 :goto_5

    :sswitch_18
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x23

    goto/16 :goto_5

    :sswitch_19
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3e

    goto/16 :goto_5

    :sswitch_1a
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x47

    goto/16 :goto_5

    :sswitch_1b
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4e

    goto/16 :goto_5

    :sswitch_1c
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x60

    goto/16 :goto_5

    :sswitch_1d
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x48

    goto/16 :goto_5

    :sswitch_1e
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_5

    :sswitch_1f
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x51

    goto/16 :goto_5

    :sswitch_20
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3b

    goto/16 :goto_5

    :sswitch_21
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3a

    goto/16 :goto_5

    :sswitch_22
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x39

    goto/16 :goto_5

    :sswitch_23
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x72

    goto/16 :goto_5

    :sswitch_24
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6a

    goto/16 :goto_5

    :sswitch_25
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7d

    goto/16 :goto_5

    :sswitch_26
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7c

    goto/16 :goto_5

    :sswitch_27
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7b

    goto/16 :goto_5

    :sswitch_28
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7a

    goto/16 :goto_5

    :sswitch_29
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xc

    goto/16 :goto_5

    :sswitch_2a
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xb

    goto/16 :goto_5

    :sswitch_2b
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3c

    goto/16 :goto_5

    :sswitch_2c
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x52

    goto/16 :goto_5

    :sswitch_2d
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x19

    goto/16 :goto_5

    :sswitch_2e
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8

    goto/16 :goto_5

    :sswitch_2f
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4d

    goto/16 :goto_5

    :sswitch_30
    const-string v2, "l5460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4c

    goto/16 :goto_5

    :sswitch_31
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x43

    goto/16 :goto_5

    :sswitch_32
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x87

    goto/16 :goto_5

    :sswitch_33
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x80

    goto/16 :goto_5

    :sswitch_34
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x70

    goto/16 :goto_5

    :sswitch_35
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6e

    goto/16 :goto_5

    :sswitch_36
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6c

    goto/16 :goto_5

    :sswitch_37
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x30

    goto/16 :goto_5

    :sswitch_38
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2f

    goto/16 :goto_5

    :sswitch_39
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2e

    goto/16 :goto_5

    :sswitch_3a
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2d

    goto/16 :goto_5

    :sswitch_3b
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2c

    goto/16 :goto_5

    :sswitch_3c
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2b

    goto/16 :goto_5

    :sswitch_3d
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2a

    goto/16 :goto_5

    :sswitch_3e
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1e

    goto/16 :goto_5

    :sswitch_3f
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x7

    goto/16 :goto_5

    :sswitch_40
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xf

    goto/16 :goto_5

    :sswitch_41
    const-string v3, "602LV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    :sswitch_42
    const-string v2, "601LV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    goto/16 :goto_5

    :sswitch_43
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x53

    goto/16 :goto_5

    :sswitch_44
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5c

    goto/16 :goto_5

    :sswitch_45
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x55

    goto/16 :goto_5

    :sswitch_46
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4b

    goto/16 :goto_5

    :sswitch_47
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x32

    goto/16 :goto_5

    :sswitch_48
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x88

    goto/16 :goto_5

    :sswitch_49
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6f

    goto/16 :goto_5

    :sswitch_4a
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6d

    goto/16 :goto_5

    :sswitch_4b
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5d

    goto/16 :goto_5

    :sswitch_4c
    const-string v2, "F04J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x29

    goto/16 :goto_5

    :sswitch_4d
    const-string v2, "F04H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x28

    goto/16 :goto_5

    :sswitch_4e
    const-string v2, "F03H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x27

    goto/16 :goto_5

    :sswitch_4f
    const-string v2, "F02H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x26

    goto/16 :goto_5

    :sswitch_50
    const-string v2, "F01J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x25

    goto/16 :goto_5

    :sswitch_51
    const-string v2, "F01H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x24

    goto/16 :goto_5

    :sswitch_52
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    goto/16 :goto_5

    :sswitch_53
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_5

    :sswitch_54
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_5

    :sswitch_55
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x31

    goto/16 :goto_5

    :sswitch_56
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1c

    goto/16 :goto_5

    :sswitch_57
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1b

    goto/16 :goto_5

    :sswitch_58
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1a

    goto/16 :goto_5

    :sswitch_59
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8b

    goto/16 :goto_5

    :sswitch_5a
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x73

    goto/16 :goto_5

    :sswitch_5b
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6b

    goto/16 :goto_5

    :sswitch_5c
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5e

    goto/16 :goto_5

    :sswitch_5d
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x56

    goto/16 :goto_5

    :sswitch_5e
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x50

    goto/16 :goto_5

    :sswitch_5f
    const-string v2, "M04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4f

    goto/16 :goto_5

    :sswitch_60
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x49

    goto/16 :goto_5

    :sswitch_61
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x54

    goto/16 :goto_5

    :sswitch_62
    const-string v2, "b5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x10

    goto/16 :goto_5

    :sswitch_63
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x81

    goto/16 :goto_5

    :sswitch_64
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7f

    goto/16 :goto_5

    :sswitch_65
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x71

    goto/16 :goto_5

    :sswitch_66
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x14

    goto/16 :goto_5

    :sswitch_67
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x86

    goto/16 :goto_5

    :sswitch_68
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1f

    goto/16 :goto_5

    :sswitch_69
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8a

    goto/16 :goto_5

    :sswitch_6a
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x11

    goto/16 :goto_5

    :sswitch_6b
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x79

    goto/16 :goto_5

    :sswitch_6c
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x69

    goto/16 :goto_5

    :sswitch_6d
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x35

    goto/16 :goto_5

    :sswitch_6e
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x33

    goto/16 :goto_5

    :sswitch_6f
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5b

    goto/16 :goto_5

    :sswitch_70
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x84

    goto/16 :goto_5

    :sswitch_71
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x83

    goto/16 :goto_5

    :sswitch_72
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x77

    goto/16 :goto_5

    :sswitch_73
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x9

    goto/16 :goto_5

    :sswitch_74
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x58

    goto/16 :goto_5

    :sswitch_75
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7e

    goto/16 :goto_5

    :sswitch_76
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x22

    goto/16 :goto_5

    :sswitch_77
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x78

    goto/16 :goto_5

    :sswitch_78
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    goto/16 :goto_5

    :sswitch_79
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    goto/16 :goto_5

    :sswitch_7a
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x57

    goto/16 :goto_5

    :sswitch_7b
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x76

    goto/16 :goto_5

    :sswitch_7c
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x46

    goto/16 :goto_5

    :sswitch_7d
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x12

    goto/16 :goto_5

    :sswitch_7e
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x34

    goto/16 :goto_5

    :sswitch_7f
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x63

    goto/16 :goto_5

    :sswitch_80
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x62

    goto/16 :goto_5

    :sswitch_81
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x61

    goto/16 :goto_5

    :sswitch_82
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x82

    goto/16 :goto_5

    :sswitch_83
    const-string v2, "pacificrim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5f

    goto/16 :goto_5

    :sswitch_84
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x68

    goto/16 :goto_5

    :sswitch_85
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x15

    goto/16 :goto_5

    :sswitch_86
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x89

    goto/16 :goto_5

    :sswitch_87
    const-string v2, "RAIJIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x74

    goto/16 :goto_5

    :sswitch_88
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xd

    goto/16 :goto_5

    :sswitch_89
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x67

    goto/16 :goto_5

    :sswitch_8a
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x66

    goto :goto_5

    :sswitch_8b
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x65

    goto :goto_5

    :sswitch_8c
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5a

    goto :goto_5

    :sswitch_8d
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x59

    goto :goto_5

    :sswitch_8e
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x16

    goto :goto_5

    :sswitch_8f
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4a

    goto :goto_5

    :sswitch_90
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x38

    goto :goto_5

    :sswitch_91
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x37

    goto :goto_5

    :sswitch_92
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x36

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v2, -0x1

    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 27786
    sget-object v1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x236fe21d

    if-eq v2, v3, :cond_8

    const v3, 0x1e9d52

    if-eq v2, v3, :cond_7

    const v3, 0x1e9d5f

    if-eq v2, v3, :cond_6

    goto :goto_6

    :cond_6
    const-string v2, "AFTN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    const-string v2, "JSN-L21"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x2

    :cond_9
    :goto_6
    if-eqz v7, :cond_2

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_2

    .line 1572
    :cond_a
    :goto_7
    sput-boolean v0, Lcom/google/android/exoplayer2/video/e;->h:Z

    .line 1573
    sput-boolean v9, Lcom/google/android/exoplayer2/video/e;->g:Z

    .line 1575
    :cond_b
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    sget-boolean p0, Lcom/google/android/exoplayer2/video/e;->h:Z

    return p0

    :catchall_0
    move-exception v0

    .line 1575
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_6
        -0x48b8f57f -> :sswitch_5
        -0x48b8bd30 -> :sswitch_4
        -0x3c588c8a -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
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
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_92
        -0x7fd6c381 -> :sswitch_91
        -0x7fd6c368 -> :sswitch_90
        -0x7d026749 -> :sswitch_8f
        -0x78929d6a -> :sswitch_8e
        -0x75f50a1e -> :sswitch_8d
        -0x75f4fe9d -> :sswitch_8c
        -0x736f875c -> :sswitch_8b
        -0x736f83c2 -> :sswitch_8a
        -0x736f83c1 -> :sswitch_89
        -0x7327ce1c -> :sswitch_88
        -0x705c574b -> :sswitch_87
        -0x651ebb62 -> :sswitch_86
        -0x6423293b -> :sswitch_85
        -0x604f5117 -> :sswitch_84
        -0x5f691e13 -> :sswitch_83
        -0x5ca40cc4 -> :sswitch_82
        -0x58520ec1 -> :sswitch_81
        -0x58520eba -> :sswitch_80
        -0x58520eb9 -> :sswitch_7f
        -0x4eaed329 -> :sswitch_7e
        -0x4892fb4f -> :sswitch_7d
        -0x465b3df3 -> :sswitch_7c
        -0x43e6c939 -> :sswitch_7b
        -0x3ec0fcc5 -> :sswitch_7a
        -0x3b33cca0 -> :sswitch_79
        -0x3b33cc9a -> :sswitch_78
        -0x398ae3f6 -> :sswitch_77
        -0x391f0fb4 -> :sswitch_76
        -0x346837ae -> :sswitch_75
        -0x323788e3 -> :sswitch_74
        -0x30f57652 -> :sswitch_73
        -0x2f88a116 -> :sswitch_72
        -0x2f61ed98 -> :sswitch_71
        -0x2efd0837 -> :sswitch_70
        -0x2e9e9441 -> :sswitch_6f
        -0x2247b8b1 -> :sswitch_6e
        -0x1f0fa2b7 -> :sswitch_6d
        -0x19af3b41 -> :sswitch_6c
        -0x114fad3e -> :sswitch_6b
        -0x10dae90b -> :sswitch_6a
        -0x1084b7b7 -> :sswitch_69
        -0xa5988e9 -> :sswitch_68
        -0x35f9fbf -> :sswitch_67
        0x84e -> :sswitch_66
        0xa04 -> :sswitch_65
        0xa9b -> :sswitch_64
        0xa9f -> :sswitch_63
        0xc13 -> :sswitch_62
        0xd9b -> :sswitch_61
        0x11ebd -> :sswitch_60
        0x12711 -> :sswitch_5f
        0x127db -> :sswitch_5e
        0x12beb -> :sswitch_5d
        0x1334d -> :sswitch_5c
        0x135c9 -> :sswitch_5b
        0x13aea -> :sswitch_5a
        0x158d2 -> :sswitch_59
        0x1821e -> :sswitch_58
        0x18220 -> :sswitch_57
        0x18401 -> :sswitch_56
        0x18c69 -> :sswitch_55
        0x1716e6 -> :sswitch_54
        0x171ac8 -> :sswitch_53
        0x171ac9 -> :sswitch_52
        0x208c61 -> :sswitch_51
        0x208c63 -> :sswitch_50
        0x208c80 -> :sswitch_4f
        0x208c9f -> :sswitch_4e
        0x208cbe -> :sswitch_4d
        0x208cc0 -> :sswitch_4c
        0x252f5f -> :sswitch_4b
        0x25981d -> :sswitch_4a
        0x259b88 -> :sswitch_49
        0x290a13 -> :sswitch_48
        0x3021fd -> :sswitch_47
        0x321e47 -> :sswitch_46
        0x332327 -> :sswitch_45
        0x33ab63 -> :sswitch_44
        0x27691fb -> :sswitch_43
        0x30f8881 -> :sswitch_42
        0x30f8c42 -> :sswitch_41
        0x349f581 -> :sswitch_40
        0x3ab0ea7 -> :sswitch_3f
        0x3e53ea5 -> :sswitch_3e
        0x3f25a44 -> :sswitch_3d
        0x3f25a46 -> :sswitch_3c
        0x3f25a49 -> :sswitch_3b
        0x3f25e05 -> :sswitch_3a
        0x3f25e07 -> :sswitch_39
        0x3f25e09 -> :sswitch_38
        0x3f261c6 -> :sswitch_37
        0x48dce49 -> :sswitch_36
        0x48dd589 -> :sswitch_35
        0x48dd8af -> :sswitch_34
        0x4d36832 -> :sswitch_33
        0x4f0b0e7 -> :sswitch_32
        0x5e2479e -> :sswitch_31
        0x60acc05 -> :sswitch_30
        0x6214744 -> :sswitch_2f
        0x9d91379 -> :sswitch_2e
        0xadc0551 -> :sswitch_2d
        0xea056b3 -> :sswitch_2c
        0x1121dbc3 -> :sswitch_2b
        0x1255818c -> :sswitch_2a
        0x1263990d -> :sswitch_29
        0x12d90f3a -> :sswitch_28
        0x12d90f4c -> :sswitch_27
        0x12d98b1b -> :sswitch_26
        0x12d98b22 -> :sswitch_25
        0x1844c711 -> :sswitch_24
        0x1e3e8044 -> :sswitch_23
        0x2f5336ed -> :sswitch_22
        0x2f54115e -> :sswitch_21
        0x2f541849 -> :sswitch_20
        0x31cf010e -> :sswitch_1f
        0x36ad82f4 -> :sswitch_1e
        0x391a0b61 -> :sswitch_1d
        0x3f3728cd -> :sswitch_1c
        0x448ec687 -> :sswitch_1b
        0x46260f63 -> :sswitch_1a
        0x4c505106 -> :sswitch_19
        0x4de67084 -> :sswitch_18
        0x506ac5a9 -> :sswitch_17
        0x5abad9cd -> :sswitch_16
        0x64d2e6e9 -> :sswitch_15
        0x64d2eac5 -> :sswitch_14
        0x65e4085b -> :sswitch_13
        0x6f373556 -> :sswitch_12
        0x719f1dcb -> :sswitch_11
        0x75d9a0f0 -> :sswitch_10
        0x7796d144 -> :sswitch_f
        0x785bcb26 -> :sswitch_e
        0x78fc0e50 -> :sswitch_d
        0x790521fb -> :sswitch_c
        0x7933207f -> :sswitch_b
        0x7a05a409 -> :sswitch_a
        0x7a0696bd -> :sswitch_9
        0x7a16dfe7 -> :sswitch_8
        0x7a1f0e95 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
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

.method private f(J)V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/decoder/d;->a(J)V

    .line 1100
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/e;->G:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/e;->G:J

    .line 1101
    iget p1, p0, Lcom/google/android/exoplayer2/video/e;->H:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->H:I

    return-void
.end method

.method private static g(J)Z
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
.method public final A()V
    .locals 0

    .line 969
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A()V

    .line 970
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->O()V

    return-void
.end method

.method public final D()Z
    .locals 2

    .line 591
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()V
    .locals 1

    .line 650
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->D:I

    return-void
.end method

.method public final a(F[Lcom/google/android/exoplayer2/Format;)F
    .locals 6

    .line 667
    array-length v0, p2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 668
    iget v4, v4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_0

    .line 670
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

.method public final a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 301
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 302
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 305
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 309
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 314
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 323
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 326
    :cond_3
    invoke-static {p2}, Lcom/google/android/exoplayer2/video/e;->c(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p1, 0x2

    return p1

    .line 330
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/g;

    .line 331
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    .line 334
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/g;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    :goto_1
    if-eqz v4, :cond_6

    .line 340
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 345
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 346
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/g;

    .line 347
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/g;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0x20

    :cond_6
    if-eqz v4, :cond_7

    const/4 p1, 0x4

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    :goto_2
    or-int/2addr p1, v3

    or-int/2addr p1, v1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 8

    .line 629
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 631
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/e;->e:I

    .line 632
    iget v2, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/e;->o:Lcom/google/android/exoplayer2/video/e$a;

    iget v3, v3, Lcom/google/android/exoplayer2/video/e$a;->a:I

    if-gt v2, v3, :cond_0

    iget v2, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/e;->o:Lcom/google/android/exoplayer2/video/e$a;

    iget v3, v3, Lcom/google/android/exoplayer2/video/e$a;->b:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 635
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/e;->o:Lcom/google/android/exoplayer2/video/e$a;

    iget v3, v3, Lcom/google/android/exoplayer2/video/e$a;->c:I

    if-le v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    .line 639
    new-instance v1, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 643
    :cond_3
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/e;->d:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method public final a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 694
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/video/l$a;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/g;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 2

    .line 1392
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/g;Landroid/view/Surface;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 1
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

    .line 362
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 657
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(FF)V

    .line 658
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 17198
    iput p1, p2, Lcom/google/android/exoplayer2/video/j;->h:F

    .line 17199
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/j;->a()V

    const/4 p1, 0x0

    .line 17200
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/j;->a(Z)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 529
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 520
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 521
    iget p2, p0, Lcom/google/android/exoplayer2/video/e;->R:I

    if-eq p2, p1, :cond_3

    .line 522
    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->R:I

    .line 523
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz p1, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->H()V

    return-void

    .line 517
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/video/i;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/e;->S:Lcom/google/android/exoplayer2/video/i;

    return-void

    .line 510
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->u:I

    .line 511
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 513
    iget p2, p0, Lcom/google/android/exoplayer2/video/e;->u:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/f;->c(I)V

    :cond_3
    :goto_0
    return-void

    .line 507
    :cond_4
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_6

    .line 11536
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-eqz p1, :cond_5

    move-object p2, p1

    goto :goto_1

    .line 11539
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->G()Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11540
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/g;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11541
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/e;->i:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/g;->g:Z

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    .line 11547
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    if-eq p1, p2, :cond_d

    .line 11548
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    .line 11549
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 12175
    instance-of v1, p2, Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    move-object v1, p2

    .line 12179
    :goto_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/video/j;->f:Landroid/view/Surface;

    if-eq v2, v1, :cond_8

    .line 12182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/j;->c()V

    .line 12183
    iput-object v1, p1, Lcom/google/android/exoplayer2/video/j;->f:Landroid/view/Surface;

    .line 12184
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/j;->a(Z)V

    :cond_8
    const/4 p1, 0x0

    .line 11550
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->t:Z

    .line 11552
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->C_()I

    move-result p1

    .line 11553
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 11555
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_9

    if-eqz p2, :cond_9

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/e;->p:Z

    if-nez v1, :cond_9

    .line 12253
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/view/Surface;)V

    goto :goto_3

    .line 11558
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->H()V

    .line 11559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->C()V

    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 11562
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-eq p2, v0, :cond_b

    .line 11564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->S()V

    .line 11566
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->O()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_c

    .line 11568
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->N()V

    return-void

    .line 11572
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->Q()V

    .line 11573
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->O()V

    :cond_c
    return-void

    :cond_d
    if-eqz p2, :cond_e

    .line 11575
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-eq p2, p1, :cond_e

    .line 11578
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->S()V

    .line 13182
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->t:Z

    if-eqz p1, :cond_e

    .line 13183
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/video/l$a;->a(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method

.method public final a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 418
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 419
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->O()V

    .line 420
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 9189
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/j;->a()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 421
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/e;->E:J

    .line 422
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/e;->y:J

    const/4 v0, 0x0

    .line 423
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->C:I

    if-eqz p3, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->N()V

    return-void

    .line 427
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 7

    .line 724
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget v1, p0, Lcom/google/android/exoplayer2/video/e;->u:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/f;->c(I)V

    .line 729
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 730
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    .line 731
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_2

    .line 733
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 735
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 736
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 737
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 738
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 741
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    :cond_3
    const-string v0, "width"

    .line 742
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    if-eqz v2, :cond_4

    .line 745
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "height"

    .line 746
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    iput p2, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    .line 748
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    .line 749
    sget p2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_6

    .line 753
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_5

    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_7

    .line 754
    :cond_5
    iget p2, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    .line 755
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->I:I

    .line 756
    iput p2, p0, Lcom/google/android/exoplayer2/video/e;->J:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 757
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/video/e;->L:F

    goto :goto_3

    .line 761
    :cond_6
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/e;->K:I

    .line 763
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 18209
    iput p1, p2, Lcom/google/android/exoplayer2/video/j;->g:F

    .line 18210
    iget-object p1, p2, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 19056
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/c$a;->a()V

    .line 19057
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/c$a;->a()V

    .line 19058
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/video/c;->c:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19059
    iput-wide v2, p1, Lcom/google/android/exoplayer2/video/c;->e:J

    .line 19060
    iput v1, p1, Lcom/google/android/exoplayer2/video/c;->f:I

    .line 18211
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/j;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 712
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-nez v0, :cond_0

    .line 713
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->D:I

    .line 715
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz v0, :cond_1

    .line 718
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/e;->e(J)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/mediacodec/f;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 601
    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/g;->c:Ljava/lang/String;

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/e;->u()[Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 13337
    iget v7, v3, Lcom/google/android/exoplayer2/Format;->width:I

    .line 13338
    iget v8, v3, Lcom/google/android/exoplayer2/Format;->height:I

    .line 13339
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    .line 13340
    array-length v10, v6

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    if-eq v9, v11, :cond_0

    .line 13344
    iget-object v6, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v10, v3, Lcom/google/android/exoplayer2/Format;->width:I

    iget v14, v3, Lcom/google/android/exoplayer2/Format;->height:I

    .line 13345
    invoke-static {v1, v6, v10, v14}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/g;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v11, :cond_0

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 13353
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 13356
    :cond_0
    new-instance v6, Lcom/google/android/exoplayer2/video/e$a;

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/video/e$a;-><init>(III)V

    goto/16 :goto_3

    .line 13359
    :cond_1
    array-length v10, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v10, :cond_6

    aget-object v12, v6, v14

    .line 13360
    iget-object v13, v3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v13, :cond_2

    iget-object v13, v12, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v13, :cond_2

    .line 13363
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v12

    iget-object v13, v3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 13504
    iput-object v13, v12, Lcom/google/android/exoplayer2/Format$a;->w:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 13363
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 13365
    :cond_2
    invoke-virtual {v1, v3, v12}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v13

    iget v13, v13, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-eqz v13, :cond_5

    .line 13366
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v13, v11, :cond_4

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v13, v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v13, 0x1

    :goto_2
    or-int/2addr v15, v13

    .line 13368
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13369
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 13370
    invoke-static {v1, v12}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_6
    if-eqz v15, :cond_7

    .line 13374
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Resolutions unknown. Codec max resolution: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "MediaCodecVideoRenderer"

    invoke-static {v11, v6}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13375
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 13377
    iget v12, v6, Landroid/graphics/Point;->x:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13378
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 13379
    iget-object v6, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 13382
    invoke-static {v1, v6, v7, v8}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/g;Ljava/lang/String;II)I

    move-result v6

    .line 13380
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 13383
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Codec max resolution adjusted to: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13386
    :cond_7
    new-instance v6, Lcom/google/android/exoplayer2/video/e$a;

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/video/e$a;-><init>(III)V

    .line 602
    :goto_3
    iput-object v6, v0, Lcom/google/android/exoplayer2/video/e;->o:Lcom/google/android/exoplayer2/video/e$a;

    .line 603
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/video/e;->n:Z

    .line 610
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz v8, :cond_8

    iget v8, v0, Lcom/google/android/exoplayer2/video/e;->R:I

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 14285
    :goto_4
    new-instance v9, Landroid/media/MediaFormat;

    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    const-string v10, "mime"

    .line 14287
    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14288
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v10, "width"

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14289
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v10, "height"

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14290
    iget-object v5, v3, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 14292
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v11, v5, v10

    if-eqz v11, :cond_9

    const-string v11, "frame-rate"

    .line 15077
    invoke-virtual {v9, v11, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 14293
    :cond_9
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v11, "rotation-degrees"

    invoke-static {v9, v11, v5}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 14294
    iget-object v5, v3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v5, :cond_a

    .line 15103
    iget v11, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const-string v12, "color-transfer"

    invoke-static {v9, v12, v11}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 15104
    iget v11, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    const-string v12, "color-standard"

    invoke-static {v9, v12, v11}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 15105
    iget v11, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    const-string v12, "color-range"

    invoke-static {v9, v12, v11}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 15106
    iget-object v5, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v5, :cond_a

    .line 16090
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v11, "hdr-static-info"

    invoke-virtual {v9, v11, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 14295
    :cond_a
    iget-object v5, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v11, "video/dolby-vision"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 14298
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 14300
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 14301
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "profile"

    .line 14300
    invoke-static {v9, v5, v3}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 14305
    :cond_b
    iget v3, v6, Lcom/google/android/exoplayer2/video/e$a;->a:I

    const-string v5, "max-width"

    invoke-virtual {v9, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14306
    iget v3, v6, Lcom/google/android/exoplayer2/video/e$a;->b:I

    const-string v5, "max-height"

    invoke-virtual {v9, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14307
    iget v3, v6, Lcom/google/android/exoplayer2/video/e$a;->c:I

    const-string v5, "max-input-size"

    invoke-static {v9, v5, v3}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 14310
    sget v3, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_c

    const-string v3, "priority"

    const/4 v6, 0x0

    .line 14311
    invoke-virtual {v9, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    cmpl-float v3, v4, v10

    if-eqz v3, :cond_c

    const-string v3, "operating-rate"

    .line 14313
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_c
    if-eqz v7, :cond_d

    const-string v3, "no-post-process"

    const/4 v4, 0x1

    .line 14317
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v6, 0x0

    .line 14318
    invoke-virtual {v9, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    :goto_5
    if-eqz v8, :cond_e

    const-string v3, "tunneled-playback"

    .line 16258
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v3, "audio-session-id"

    .line 16259
    invoke-virtual {v9, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 611
    :cond_e
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    if-nez v3, :cond_11

    .line 612
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/g;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 615
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-nez v3, :cond_f

    .line 616
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/e;->i:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/mediacodec/g;->g:Z

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    .line 618
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    goto :goto_6

    .line 613
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 620
    :cond_11
    :goto_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    move-object/from16 v3, p4

    invoke-interface {v2, v9, v1, v3}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    .line 621
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt v1, v5, :cond_12

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz v1, :cond_12

    .line 622
    new-instance v1, Lcom/google/android/exoplayer2/video/e$b;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/video/e$b;-><init>(Lcom/google/android/exoplayer2/video/e;Lcom/google/android/exoplayer2/mediacodec/f;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/video/e;->a:Lcom/google/android/exoplayer2/video/e$b;

    :cond_12
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/l$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 6

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/l$a;->a(Ljava/lang/String;JJ)V

    .line 680
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/e;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->p:Z

    .line 682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->G()Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/g;

    .line 17320
    sget p2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 p3, 0x0

    const/16 p4, 0x1d

    if-lt p2, p4, :cond_1

    iget-object p2, p1, Lcom/google/android/exoplayer2/mediacodec/g;->b:Ljava/lang/String;

    const-string p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17321
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/g;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    aget-object p5, p1, p4

    .line 17322
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 682
    :cond_1
    :goto_1
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/e;->q:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 403
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ZZ)V

    .line 404
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->v()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 405
    iget v2, p0, Lcom/google/android/exoplayer2/video/e;->R:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 406
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eq v2, p1, :cond_2

    .line 407
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    .line 408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->H()V

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/video/l$a;->a(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 411
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 7153
    iget-object v2, p1, Lcom/google/android/exoplayer2/video/j;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_4

    .line 7154
    iget-object v2, p1, Lcom/google/android/exoplayer2/video/j;->c:Lcom/google/android/exoplayer2/video/j$b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/video/j$b;

    .line 7507
    iget-object v2, v2, Lcom/google/android/exoplayer2/video/j$b;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7155
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/j;->d:Lcom/google/android/exoplayer2/video/j$a;

    if-eqz v1, :cond_3

    .line 7156
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/j;->d:Lcom/google/android/exoplayer2/video/j$a;

    .line 8444
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/j$a;->a:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 7158
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/j;->d()V

    .line 412
    :cond_4
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/e;->w:Z

    .line 413
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->x:Z

    return-void
.end method

.method public final a(JJLcom/google/android/exoplayer2/mediacodec/f;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    .line 811
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/e;->y:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    .line 814
    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/e;->y:J

    .line 817
    :cond_0
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/e;->E:J

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x3e8

    const/4 v15, 0x0

    cmp-long v16, v5, v7

    if-eqz v16, :cond_9

    .line 818
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 20220
    iget-wide v9, v7, Lcom/google/android/exoplayer2/video/j;->l:J

    cmp-long v8, v9, v11

    if-eqz v8, :cond_1

    .line 20221
    iget-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->l:J

    iput-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->n:J

    .line 20222
    iget-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->m:J

    iput-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->o:J

    .line 20224
    :cond_1
    iget-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->k:J

    const-wide/16 v16, 0x1

    add-long v8, v8, v16

    iput-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->k:J

    .line 20225
    iget-object v8, v7, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    mul-long v9, v5, v13

    .line 21069
    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v11, v9, v10}, Lcom/google/android/exoplayer2/video/c$a;->a(J)V

    .line 21070
    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-boolean v11, v8, Lcom/google/android/exoplayer2/video/c;->d:Z

    if-nez v11, :cond_2

    .line 21071
    iput-boolean v15, v8, Lcom/google/android/exoplayer2/video/c;->c:Z

    goto :goto_1

    .line 21072
    :cond_2
    iget-wide v11, v8, Lcom/google/android/exoplayer2/video/c;->e:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v20, v11, v18

    if-eqz v20, :cond_6

    .line 21073
    iget-boolean v11, v8, Lcom/google/android/exoplayer2/video/c;->c:Z

    if-eqz v11, :cond_4

    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    .line 21171
    iget-wide v13, v11, Lcom/google/android/exoplayer2/video/c$a;->a:J

    const-wide/16 v20, 0x0

    cmp-long v12, v13, v20

    if-nez v12, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    .line 21174
    :cond_3
    iget-object v12, v11, Lcom/google/android/exoplayer2/video/c$a;->c:[Z

    iget-wide v13, v11, Lcom/google/android/exoplayer2/video/c$a;->a:J

    sub-long v13, v13, v16

    const-wide/16 v16, 0xf

    .line 21217
    rem-long v13, v13, v16

    long-to-int v11, v13

    .line 21174
    aget-boolean v11, v12, v11

    :goto_0
    if-eqz v11, :cond_5

    .line 21076
    :cond_4
    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/video/c$a;->a()V

    .line 21077
    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    iget-wide v12, v8, Lcom/google/android/exoplayer2/video/c;->e:J

    invoke-virtual {v11, v12, v13}, Lcom/google/android/exoplayer2/video/c$a;->a(J)V

    :cond_5
    const/4 v11, 0x1

    .line 21079
    iput-boolean v11, v8, Lcom/google/android/exoplayer2/video/c;->c:Z

    .line 21080
    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v11, v9, v10}, Lcom/google/android/exoplayer2/video/c$a;->a(J)V

    .line 21082
    :cond_6
    :goto_1
    iget-boolean v11, v8, Lcom/google/android/exoplayer2/video/c;->c:Z

    if-eqz v11, :cond_7

    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 21085
    iget-object v11, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    .line 21086
    iget-object v12, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    iput-object v12, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    .line 21087
    iput-object v11, v8, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    .line 21088
    iput-boolean v15, v8, Lcom/google/android/exoplayer2/video/c;->c:Z

    .line 21089
    iput-boolean v15, v8, Lcom/google/android/exoplayer2/video/c;->d:Z

    .line 21091
    :cond_7
    iput-wide v9, v8, Lcom/google/android/exoplayer2/video/c;->e:J

    .line 21092
    iget-object v9, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    iget v9, v8, Lcom/google/android/exoplayer2/video/c;->f:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    :goto_2
    iput v9, v8, Lcom/google/android/exoplayer2/video/c;->f:I

    .line 20226
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/video/j;->b()V

    .line 819
    iput-wide v5, v0, Lcom/google/android/exoplayer2/video/e;->E:J

    .line 822
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/e;->M()J

    move-result-wide v7

    sub-long v9, v5, v7

    if-eqz p12, :cond_a

    if-nez p13, :cond_a

    .line 826
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/f;I)V

    const/4 v1, 0x1

    return v1

    .line 831
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/e;->K()F

    move-result v11

    float-to-double v11, v11

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/e;->C_()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    const/4 v13, 0x1

    goto :goto_3

    :cond_b
    const/4 v13, 0x0

    .line 833
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    sub-long/2addr v5, v1

    long-to-double v5, v5

    div-double/2addr v5, v11

    double-to-long v5, v5

    if-eqz v13, :cond_c

    sub-long v11, v16, p3

    sub-long/2addr v5, v11

    .line 844
    :cond_c
    iget-object v11, v0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    iget-object v12, v0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-ne v11, v12, :cond_e

    .line 846
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/e;->g(J)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 847
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/f;I)V

    .line 848
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/video/e;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_d
    return v15

    .line 854
    :cond_e
    iget-wide v11, v0, Lcom/google/android/exoplayer2/video/e;->F:J

    sub-long v16, v16, v11

    .line 856
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/video/e;->x:Z

    if-nez v11, :cond_f

    if-nez v13, :cond_10

    .line 857
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/video/e;->w:Z

    if-eqz v11, :cond_11

    goto :goto_4

    .line 858
    :cond_f
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/video/e;->v:Z

    if-nez v11, :cond_11

    :cond_10
    :goto_4
    const/4 v11, 0x1

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    .line 860
    :goto_5
    iget-wide v14, v0, Lcom/google/android/exoplayer2/video/e;->z:J

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v22, v14, v20

    if-nez v22, :cond_14

    cmp-long v14, v1, v7

    if-ltz v14, :cond_14

    if-nez v11, :cond_13

    if-eqz v13, :cond_14

    .line 22013
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/e;->g(J)Z

    move-result v7

    if-eqz v7, :cond_12

    const-wide/32 v7, 0x186a0

    cmp-long v11, v16, v7

    if-lez v11, :cond_12

    const/4 v7, 0x1

    goto :goto_6

    :cond_12
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_14

    :cond_13
    const/4 v7, 0x1

    goto :goto_7

    :cond_14
    const/4 v7, 0x0

    :goto_7
    const/16 v8, 0x15

    if-eqz v7, :cond_16

    .line 866
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    move-object/from16 p8, p0

    move-wide/from16 p9, v9

    move-wide/from16 p11, v1

    move-object/from16 p13, p14

    .line 867
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/e;->a(JJLcom/google/android/exoplayer2/Format;)V

    .line 868
    sget v7, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt v7, v8, :cond_15

    .line 869
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/f;IJ)V

    goto :goto_8

    .line 871
    :cond_15
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/f;I)V

    .line 873
    :goto_8
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/video/e;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_16
    if-eqz v13, :cond_2d

    .line 877
    iget-wide v13, v0, Lcom/google/android/exoplayer2/video/e;->y:J

    cmp-long v7, v1, v13

    if-nez v7, :cond_17

    goto/16 :goto_18

    .line 882
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v5, v5, v15

    add-long/2addr v5, v13

    .line 886
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    move-wide v15, v9

    .line 22266
    iget-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->n:J

    const-wide/16 v10, -0x1

    cmp-long v17, v8, v10

    if-eqz v17, :cond_1b

    iget-object v8, v7, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 23097
    iget-object v8, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 22267
    iget-object v8, v7, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 24097
    iget-object v9, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 23119
    iget-object v8, v8, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/video/c$a;->c()J

    move-result-wide v8

    goto :goto_9

    :cond_18
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 22268
    :goto_9
    iget-wide v10, v7, Lcom/google/android/exoplayer2/video/j;->o:J

    move-wide/from16 p10, v13

    iget-wide v12, v7, Lcom/google/android/exoplayer2/video/j;->k:J

    iget-wide v1, v7, Lcom/google/android/exoplayer2/video/j;->n:J

    sub-long/2addr v12, v1

    mul-long v8, v8, v12

    long-to-float v1, v8

    iget v2, v7, Lcom/google/android/exoplayer2/video/j;->h:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    add-long/2addr v10, v1

    sub-long v1, v5, v10

    .line 24301
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v8, 0x1312d00

    cmp-long v12, v1, v8

    if-gtz v12, :cond_19

    const/4 v1, 0x1

    goto :goto_a

    :cond_19
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_1a

    move-wide v5, v10

    goto :goto_b

    .line 22274
    :cond_1a
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/video/j;->a()V

    goto :goto_b

    :cond_1b
    move-wide/from16 p10, v13

    .line 22277
    :goto_b
    iget-wide v1, v7, Lcom/google/android/exoplayer2/video/j;->k:J

    iput-wide v1, v7, Lcom/google/android/exoplayer2/video/j;->l:J

    .line 22278
    iput-wide v5, v7, Lcom/google/android/exoplayer2/video/j;->m:J

    .line 22280
    iget-object v1, v7, Lcom/google/android/exoplayer2/video/j;->c:Lcom/google/android/exoplayer2/video/j$b;

    if-eqz v1, :cond_20

    iget-wide v1, v7, Lcom/google/android/exoplayer2/video/j;->i:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v1, v8

    if-nez v10, :cond_1c

    goto :goto_e

    .line 22283
    :cond_1c
    iget-object v1, v7, Lcom/google/android/exoplayer2/video/j;->c:Lcom/google/android/exoplayer2/video/j$b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/video/j$b;->a:J

    cmp-long v10, v1, v8

    if-nez v10, :cond_1d

    goto :goto_e

    .line 22288
    :cond_1d
    iget-wide v8, v7, Lcom/google/android/exoplayer2/video/j;->i:J

    sub-long v10, v5, v1

    .line 24418
    div-long/2addr v10, v8

    mul-long v10, v10, v8

    add-long/2addr v1, v10

    cmp-long v10, v5, v1

    if-gtz v10, :cond_1e

    sub-long v8, v1, v8

    goto :goto_c

    :cond_1e
    add-long/2addr v8, v1

    move-wide/from16 v23, v1

    move-wide v1, v8

    move-wide/from16 v8, v23

    :goto_c
    sub-long v10, v1, v5

    sub-long/2addr v5, v8

    cmp-long v12, v10, v5

    if-gez v12, :cond_1f

    goto :goto_d

    :cond_1f
    move-wide v1, v8

    .line 22290
    :goto_d
    iget-wide v5, v7, Lcom/google/android/exoplayer2/video/j;->j:J

    sub-long/2addr v1, v5

    goto :goto_f

    :cond_20
    :goto_e
    move-wide v1, v5

    :goto_f
    move-wide/from16 v5, p10

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3e8

    .line 887
    div-long/2addr v5, v7

    .line 889
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/e;->z:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-eqz v11, :cond_21

    const/4 v7, 0x1

    goto :goto_10

    :cond_21
    const/4 v7, 0x0

    :goto_10
    const-wide/32 v8, -0x7a120

    cmp-long v10, v5, v8

    if-gez v10, :cond_22

    const/4 v8, 0x1

    goto :goto_11

    :cond_22
    const/4 v8, 0x0

    :goto_11
    if-eqz v8, :cond_23

    if-nez p13, :cond_23

    const/4 v8, 0x1

    goto :goto_12

    :cond_23
    const/4 v8, 0x0

    :goto_12
    if-eqz v8, :cond_26

    .line 26059
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/video/e;->b(J)I

    move-result v8

    if-nez v8, :cond_24

    const/4 v8, 0x0

    goto :goto_14

    .line 26063
    :cond_24
    iget-object v9, v0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v10, v9, Lcom/google/android/exoplayer2/decoder/d;->i:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v9, Lcom/google/android/exoplayer2/decoder/d;->i:I

    .line 26066
    iget v9, v0, Lcom/google/android/exoplayer2/video/e;->D:I

    add-int/2addr v9, v8

    if-eqz v7, :cond_25

    .line 26068
    iget-object v8, v0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v10, v8, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/2addr v10, v9

    iput v10, v8, Lcom/google/android/exoplayer2/decoder/d;->f:I

    goto :goto_13

    .line 26070
    :cond_25
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/video/e;->b(I)V

    .line 26072
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/e;->I()Z

    const/4 v8, 0x1

    :goto_14
    if-eqz v8, :cond_26

    const/4 v8, 0x0

    return v8

    .line 26984
    :cond_26
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/e;->g(J)Z

    move-result v8

    if-eqz v8, :cond_27

    if-nez p13, :cond_27

    const/4 v8, 0x1

    goto :goto_15

    :cond_27
    const/4 v8, 0x0

    :goto_15
    if-eqz v8, :cond_29

    if-eqz v7, :cond_28

    .line 895
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/f;I)V

    const/4 v1, 0x1

    goto :goto_16

    :cond_28
    const-string v1, "dropVideoBuffer"

    .line 27038
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 27039
    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    .line 27040
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    const/4 v1, 0x1

    .line 27041
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/e;->b(I)V

    .line 899
    :goto_16
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/video/e;->f(J)V

    return v1

    .line 903
    :cond_29
    sget v7, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2a

    const-wide/32 v7, 0xc350

    cmp-long v9, v5, v7

    if-gez v9, :cond_2c

    move-object/from16 p8, p0

    move-wide/from16 p9, v15

    move-wide/from16 p11, v1

    move-object/from16 p13, p14

    .line 906
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/e;->a(JJLcom/google/android/exoplayer2/Format;)V

    .line 907
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/mediacodec/f;IJ)V

    .line 908
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/video/e;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_2a
    const-wide/16 v7, 0x7530

    cmp-long v9, v5, v7

    if-gez v9, :cond_2c

    const-wide/16 v7, 0x2af8

    cmp-long v9, v5, v7

    if-lez v9, :cond_2b

    const-wide/16 v7, 0x2710

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3e8

    .line 919
    :try_start_0
    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    .line 921
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    return v1

    :cond_2b
    :goto_17
    move-object/from16 p8, p0

    move-wide/from16 p9, v15

    move-wide/from16 p11, v1

    move-object/from16 p13, p14

    .line 925
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/e;->a(JJLcom/google/android/exoplayer2/Format;)V

    .line 926
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/f;I)V

    .line 927
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/video/e;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_2c
    const/4 v1, 0x0

    return v1

    :cond_2d
    :goto_18
    const/4 v1, 0x0

    return v1
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/g;)Z
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/e;->b(Lcom/google/android/exoplayer2/mediacodec/g;)Z

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

.method public final b(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 770
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 773
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 774
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 776
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 777
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 778
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 779
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 780
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 781
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

    .line 789
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 790
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 791
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 792
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object p1

    .line 19246
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 19247
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 19248
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final d(J)V
    .locals 0

    .line 961
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(J)V

    .line 962
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-nez p1, :cond_0

    .line 963
    iget p1, p0, Lcom/google/android/exoplayer2/video/e;->D:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/e;->D:I

    :cond_0
    return-void
.end method

.method protected final e(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/e;->c(J)V

    .line 947
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->R()V

    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    .line 949
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->P()V

    .line 950
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/e;->d(J)V

    return-void
.end method

.method public final p()V
    .locals 5

    .line 456
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->B:I

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/e;->A:J

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/e;->F:J

    const-wide/16 v1, 0x0

    .line 460
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/e;->G:J

    .line 461
    iput v0, p0, Lcom/google/android/exoplayer2/video/e;->H:I

    .line 462
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    const/4 v2, 0x1

    .line 10164
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/video/j;->e:Z

    .line 10165
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/j;->a()V

    .line 10166
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/j;->a(Z)V

    return-void
.end method

.method public final q()V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 467
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    .line 468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->T()V

    .line 10226
    iget v0, p0, Lcom/google/android/exoplayer2/video/e;->H:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10227
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/e;->G:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/video/l$a;->a(JI)V

    const-wide/16 v2, 0x0

    .line 10229
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/e;->G:J

    .line 10230
    iput v1, p0, Lcom/google/android/exoplayer2/video/e;->H:I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 11231
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/video/j;->e:Z

    .line 11232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/j;->c()V

    .line 471
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q()V

    return-void
.end method

.method public final r()V
    .locals 3

    .line 476
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->Q()V

    .line 477
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/e;->O()V

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->t:Z

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->j:Lcom/google/android/exoplayer2/video/j;

    .line 11238
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/j;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 11239
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/j;->d:Lcom/google/android/exoplayer2/video/j$a;

    if-eqz v1, :cond_0

    .line 11240
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/j;->d:Lcom/google/android/exoplayer2/video/j$a;

    .line 11448
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/j$a;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 11242
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/j;->c:Lcom/google/android/exoplayer2/video/j$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/j$b;

    .line 11515
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/j$b;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/e;->a:Lcom/google/android/exoplayer2/video/e$b;

    .line 482
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/l$a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->k:Lcom/google/android/exoplayer2/video/l$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/l$a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 485
    throw v0
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    .line 491
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 494
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 495
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    .line 497
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 498
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 493
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 494
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 495
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    .line 497
    :cond_2
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 498
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    .line 500
    :cond_3
    throw v1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 9

    .line 433
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e;->s:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/e;->r:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/e;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/e;->Q:Z

    if-eqz v0, :cond_2

    .line 439
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    return v1

    .line 441
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 444
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 449
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/e;->z:J

    return v0
.end method
