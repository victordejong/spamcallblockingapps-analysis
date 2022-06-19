.class public final Lcom/google/android/exoplayer2/text/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/text/b;


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

.field public final p:I

.field public final q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    const-string v1, ""

    .line 1539
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/b;->a:Lcom/google/android/exoplayer2/text/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const v3, -0x800001

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const v6, -0x800001

    const/high16 v7, -0x80000000

    const v8, -0x800001

    move-object v0, p0

    move-object v1, p1

    .line 288
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    .line 323
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    move/from16 v9, p9

    move/from16 v10, p10

    const/4 v3, 0x0

    const v12, -0x800001

    const/4 v13, 0x0

    const/high16 v14, -0x1000000

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    .line 364
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

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

    const/4 v3, 0x0

    const/high16 v9, -0x80000000

    const v10, -0x800001

    const v12, -0x800001

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    .line 410
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 448
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 450
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 452
    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/b;->b:Ljava/lang/CharSequence;

    move-object v1, p2

    .line 453
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/b;->c:Landroid/text/Layout$Alignment;

    .line 454
    iput-object v2, v0, Lcom/google/android/exoplayer2/text/b;->d:Landroid/graphics/Bitmap;

    move v1, p4

    .line 455
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->e:F

    move v1, p5

    .line 456
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->f:I

    move v1, p6

    .line 457
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->g:I

    move v1, p7

    .line 458
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->h:F

    move v1, p8

    .line 459
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->i:I

    move v1, p11

    .line 460
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->j:F

    move/from16 v1, p12

    .line 461
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->k:F

    move/from16 v1, p13

    .line 462
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/text/b;->l:Z

    move/from16 v1, p14

    .line 463
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->m:I

    move v1, p9

    .line 464
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->n:I

    move v1, p10

    .line 465
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->o:F

    move/from16 v1, p15

    .line 466
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->p:I

    move/from16 v1, p16

    .line 467
    iput v1, v0, Lcom/google/android/exoplayer2/text/b;->q:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/b$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p16}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/text/b$a;
    .locals 2

    .line 472
    new-instance v0, Lcom/google/android/exoplayer2/text/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/text/b$a;-><init>(Lcom/google/android/exoplayer2/text/b;Lcom/google/android/exoplayer2/text/b$1;)V

    return-object v0
.end method
