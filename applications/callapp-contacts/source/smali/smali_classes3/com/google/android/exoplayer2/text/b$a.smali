.class public final Lcom/google/android/exoplayer2/text/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/text/Layout$Alignment;

.field public d:I

.field public e:F

.field public f:I

.field public g:F

.field public h:F

.field public i:Z

.field public j:I

.field public k:I

.field public l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 496
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$a;->b:Landroid/graphics/Bitmap;

    .line 497
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 498
    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->m:F

    const/high16 v1, -0x80000000

    .line 499
    iput v1, p0, Lcom/google/android/exoplayer2/text/b$a;->n:I

    .line 500
    iput v1, p0, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 501
    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 502
    iput v1, p0, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 503
    iput v1, p0, Lcom/google/android/exoplayer2/text/b$a;->o:I

    .line 504
    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->p:F

    .line 505
    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->g:F

    .line 506
    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->h:F

    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/b$a;->i:Z

    const/high16 v0, -0x1000000

    .line 508
    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->j:I

    .line 509
    iput v1, p0, Lcom/google/android/exoplayer2/text/b$a;->k:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/b;)V
    .locals 1

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 514
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$a;->b:Landroid/graphics/Bitmap;

    .line 515
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->c:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    .line 516
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->e:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->m:F

    .line 517
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->f:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->n:I

    .line 518
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 519
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->h:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 520
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 521
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->n:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->o:I

    .line 522
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->o:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->p:F

    .line 523
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->j:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->g:F

    .line 524
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->k:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->h:F

    .line 525
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/b;->l:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/b$a;->i:Z

    .line 526
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->m:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->j:I

    .line 527
    iget v0, p1, Lcom/google/android/exoplayer2/text/b;->p:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/b$a;->k:I

    .line 528
    iget p1, p1, Lcom/google/android/exoplayer2/text/b;->q:F

    iput p1, p0, Lcom/google/android/exoplayer2/text/b$a;->l:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/b;Lcom/google/android/exoplayer2/text/b$1;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/b$a;-><init>(Lcom/google/android/exoplayer2/text/b;)V

    return-void
.end method


# virtual methods
.method public final a(FI)Lcom/google/android/exoplayer2/text/b$a;
    .locals 0

    .line 603
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$a;->m:F

    .line 604
    iput p2, p0, Lcom/google/android/exoplayer2/text/b$a;->n:I

    return-object p0
.end method

.method public final a()Lcom/google/android/exoplayer2/text/b;
    .locals 21

    move-object/from16 v0, p0

    .line 827
    new-instance v19, Lcom/google/android/exoplayer2/text/b;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/b$a;->b:Landroid/graphics/Bitmap;

    iget v5, v0, Lcom/google/android/exoplayer2/text/b$a;->m:F

    iget v6, v0, Lcom/google/android/exoplayer2/text/b$a;->n:I

    iget v7, v0, Lcom/google/android/exoplayer2/text/b$a;->d:I

    iget v8, v0, Lcom/google/android/exoplayer2/text/b$a;->e:F

    iget v9, v0, Lcom/google/android/exoplayer2/text/b$a;->f:I

    iget v10, v0, Lcom/google/android/exoplayer2/text/b$a;->o:I

    iget v11, v0, Lcom/google/android/exoplayer2/text/b$a;->p:F

    iget v12, v0, Lcom/google/android/exoplayer2/text/b$a;->g:F

    iget v13, v0, Lcom/google/android/exoplayer2/text/b$a;->h:F

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/text/b$a;->i:Z

    iget v15, v0, Lcom/google/android/exoplayer2/text/b$a;->j:I

    move-object/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/b$a;->k:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/b$a;->l:F

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/b$1;)V

    return-object v19
.end method

.method public final b(FI)Lcom/google/android/exoplayer2/text/b$a;
    .locals 0

    .line 696
    iput p1, p0, Lcom/google/android/exoplayer2/text/b$a;->p:F

    .line 697
    iput p2, p0, Lcom/google/android/exoplayer2/text/b$a;->o:I

    return-object p0
.end method
