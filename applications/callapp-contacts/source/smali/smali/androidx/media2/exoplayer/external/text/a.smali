.class public Landroidx/media2/exoplayer/external/text/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/text/a;


# instance fields
.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/text/Layout$Alignment;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroidx/media2/exoplayer/external/text/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroidx/media2/exoplayer/external/text/a;->a:Landroidx/media2/exoplayer/external/text/a;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FIFIFF)V
    .locals 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/high16 v14, -0x1000000

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v11, p6

    move/from16 v12, p7

    .line 256
    invoke-direct/range {v0 .. v14}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 280
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 312
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V
    .locals 15

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, -0x1000000

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p8

    .line 350
    invoke-direct/range {v0 .. v14}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 15

    const/4 v3, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p10

    .line 392
    invoke-direct/range {v0 .. v14}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/a;->b:Ljava/lang/CharSequence;

    .line 425
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/a;->c:Landroid/text/Layout$Alignment;

    .line 426
    iput-object p3, p0, Landroidx/media2/exoplayer/external/text/a;->d:Landroid/graphics/Bitmap;

    .line 427
    iput p4, p0, Landroidx/media2/exoplayer/external/text/a;->e:F

    .line 428
    iput p5, p0, Landroidx/media2/exoplayer/external/text/a;->f:I

    .line 429
    iput p6, p0, Landroidx/media2/exoplayer/external/text/a;->g:I

    .line 430
    iput p7, p0, Landroidx/media2/exoplayer/external/text/a;->h:F

    .line 431
    iput p8, p0, Landroidx/media2/exoplayer/external/text/a;->i:I

    .line 432
    iput p11, p0, Landroidx/media2/exoplayer/external/text/a;->j:F

    .line 433
    iput p12, p0, Landroidx/media2/exoplayer/external/text/a;->k:F

    .line 434
    iput-boolean p13, p0, Landroidx/media2/exoplayer/external/text/a;->l:Z

    .line 435
    iput p14, p0, Landroidx/media2/exoplayer/external/text/a;->m:I

    .line 436
    iput p9, p0, Landroidx/media2/exoplayer/external/text/a;->n:I

    .line 437
    iput p10, p0, Landroidx/media2/exoplayer/external/text/a;->o:F

    return-void
.end method
