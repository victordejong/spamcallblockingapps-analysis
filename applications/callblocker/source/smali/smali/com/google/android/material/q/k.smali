.class public Lcom/google/android/material/q/k;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/q/k$b;,
        Lcom/google/android/material/q/k$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/material/q/c;


# instance fields
.field b:Lcom/google/android/material/q/d;

.field c:Lcom/google/android/material/q/d;

.field d:Lcom/google/android/material/q/d;

.field e:Lcom/google/android/material/q/d;

.field f:Lcom/google/android/material/q/c;

.field g:Lcom/google/android/material/q/c;

.field h:Lcom/google/android/material/q/c;

.field i:Lcom/google/android/material/q/c;

.field j:Lcom/google/android/material/q/f;

.field k:Lcom/google/android/material/q/f;

.field l:Lcom/google/android/material/q/f;

.field m:Lcom/google/android/material/q/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lcom/google/android/material/q/i;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/q/i;-><init>(F)V

    sput-object v0, Lcom/google/android/material/q/k;->a:Lcom/google/android/material/q/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-static {}, Lcom/google/android/material/q/h;->a()Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->b:Lcom/google/android/material/q/d;

    .line 600
    invoke-static {}, Lcom/google/android/material/q/h;->a()Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->c:Lcom/google/android/material/q/d;

    .line 601
    invoke-static {}, Lcom/google/android/material/q/h;->a()Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->d:Lcom/google/android/material/q/d;

    .line 602
    invoke-static {}, Lcom/google/android/material/q/h;->a()Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->e:Lcom/google/android/material/q/d;

    .line 604
    new-instance v0, Lcom/google/android/material/q/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/q/k;->f:Lcom/google/android/material/q/c;

    .line 605
    new-instance v0, Lcom/google/android/material/q/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/q/k;->g:Lcom/google/android/material/q/c;

    .line 606
    new-instance v0, Lcom/google/android/material/q/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/q/k;->h:Lcom/google/android/material/q/c;

    .line 607
    new-instance v0, Lcom/google/android/material/q/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/q/k;->i:Lcom/google/android/material/q/c;

    .line 609
    invoke-static {}, Lcom/google/android/material/q/h;->b()Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->j:Lcom/google/android/material/q/f;

    .line 610
    invoke-static {}, Lcom/google/android/material/q/h;->b()Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->k:Lcom/google/android/material/q/f;

    .line 611
    invoke-static {}, Lcom/google/android/material/q/h;->b()Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->l:Lcom/google/android/material/q/f;

    .line 612
    invoke-static {}, Lcom/google/android/material/q/h;->b()Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->m:Lcom/google/android/material/q/f;

    .line 613
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/q/k$a;)V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->a(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->b:Lcom/google/android/material/q/d;

    .line 582
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->b(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->c:Lcom/google/android/material/q/d;

    .line 583
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->c(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->d:Lcom/google/android/material/q/d;

    .line 584
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->d(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->e:Lcom/google/android/material/q/d;

    .line 586
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->e(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->f:Lcom/google/android/material/q/c;

    .line 587
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->f(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->g:Lcom/google/android/material/q/c;

    .line 588
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->g(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->h:Lcom/google/android/material/q/c;

    .line 589
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->h(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->i:Lcom/google/android/material/q/c;

    .line 591
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->i(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->j:Lcom/google/android/material/q/f;

    .line 592
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->j(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->k:Lcom/google/android/material/q/f;

    .line 593
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->k(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->l:Lcom/google/android/material/q/f;

    .line 594
    invoke-static {p1}, Lcom/google/android/material/q/k$a;->l(Lcom/google/android/material/q/k$a;)Lcom/google/android/material/q/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/k;->m:Lcom/google/android/material/q/f;

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/q/k$a;Lcom/google/android/material/q/k$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/material/q/k;-><init>(Lcom/google/android/material/q/k$a;)V

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILcom/google/android/material/q/c;)Lcom/google/android/material/q/c;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 547
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 548
    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-object p2

    .line 552
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 555
    new-instance p2, Lcom/google/android/material/q/a;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 556
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p2, v0}, Lcom/google/android/material/q/a;-><init>(F)V

    goto :goto_0

    .line 557
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 558
    new-instance p2, Lcom/google/android/material/q/i;

    invoke-virtual {v0, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    invoke-direct {p2, v0}, Lcom/google/android/material/q/i;-><init>(F)V

    goto :goto_0
.end method

.method public static a()Lcom/google/android/material/q/k$a;
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/google/android/material/q/k$a;

    invoke-direct {v0}, Lcom/google/android/material/q/k$a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lcom/google/android/material/q/k$a;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;III)Lcom/google/android/material/q/k$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;III)Lcom/google/android/material/q/k$a;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lcom/google/android/material/q/a;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/material/q/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;IILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;IILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;
    .locals 10

    .prologue
    .line 503
    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 508
    :goto_0
    sget-object v0, Lcom/google/android/material/a$l;->ShapeAppearance:[I

    .line 509
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 512
    :try_start_0
    sget v0, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamily:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 513
    sget v2, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 514
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 515
    sget v3, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyTopRight:I

    .line 516
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 517
    sget v4, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 518
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 519
    sget v5, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 520
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 522
    sget v5, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSize:I

    .line 523
    invoke-static {v1, v5, p3}, Lcom/google/android/material/q/k;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v5

    .line 525
    sget v6, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeTopLeft:I

    .line 526
    invoke-static {v1, v6, v5}, Lcom/google/android/material/q/k;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v6

    .line 527
    sget v7, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeTopRight:I

    .line 528
    invoke-static {v1, v7, v5}, Lcom/google/android/material/q/k;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v7

    .line 529
    sget v8, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeBottomRight:I

    .line 530
    invoke-static {v1, v8, v5}, Lcom/google/android/material/q/k;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v8

    .line 531
    sget v9, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 532
    invoke-static {v1, v9, v5}, Lcom/google/android/material/q/k;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v5

    .line 534
    new-instance v9, Lcom/google/android/material/q/k$a;

    invoke-direct {v9}, Lcom/google/android/material/q/k$a;-><init>()V

    .line 535
    invoke-virtual {v9, v2, v6}, Lcom/google/android/material/q/k$a;->a(ILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v2

    .line 536
    invoke-virtual {v2, v3, v7}, Lcom/google/android/material/q/k$a;->b(ILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v2

    .line 537
    invoke-virtual {v2, v4, v8}, Lcom/google/android/material/q/k$a;->c(ILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v2

    .line 538
    invoke-virtual {v2, v0, v5}, Lcom/google/android/material/q/k$a;->d(ILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 540
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 534
    return-object v0

    .line 540
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    throw v0

    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/q/k$a;
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/q/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/q/k$a;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/google/android/material/q/a;

    int-to-float v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/material/q/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    sget-object v0, Lcom/google/android/material/a$l;->MaterialShape:[I

    .line 466
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 468
    sget v1, Lcom/google/android/material/a$l;->MaterialShape_shapeAppearance:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 469
    sget v2, Lcom/google/android/material/a$l;->MaterialShape_shapeAppearanceOverlay:I

    .line 470
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 471
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-static {p0, v1, v2, p4}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;IILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/android/material/q/k;->n()Lcom/google/android/material/q/k$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/k$a;->a(F)Lcom/google/android/material/q/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/material/q/k$b;)Lcom/google/android/material/q/k;
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/android/material/q/k;->n()Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lcom/google/android/material/q/k;->f()Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/q/k$b;->a(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k$a;->a(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lcom/google/android/material/q/k;->g()Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/q/k$b;->a(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k$a;->b(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lcom/google/android/material/q/k;->i()Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/q/k$b;->a(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k$a;->d(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lcom/google/android/material/q/k;->h()Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/q/k$b;->a(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k$a;->c(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    .line 775
    return-object v0
.end method

.method public a(Landroid/graphics/RectF;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lcom/google/android/material/q/k;->m:Lcom/google/android/material/q/f;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/q/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/k;->k:Lcom/google/android/material/q/f;

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/q/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/k;->j:Lcom/google/android/material/q/f;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/q/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/k;->l:Lcom/google/android/material/q/f;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/q/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 797
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/q/k;->f:Lcom/google/android/material/q/c;

    invoke-interface {v3, p1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    .line 799
    iget-object v4, p0, Lcom/google/android/material/q/k;->g:Lcom/google/android/material/q/c;

    .line 800
    invoke-interface {v4, p1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/q/k;->i:Lcom/google/android/material/q/c;

    .line 801
    invoke-interface {v4, p1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/q/k;->h:Lcom/google/android/material/q/c;

    .line 802
    invoke-interface {v4, p1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    move v3, v1

    .line 804
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/q/k;->c:Lcom/google/android/material/q/d;

    instance-of v4, v4, Lcom/google/android/material/q/j;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/q/k;->b:Lcom/google/android/material/q/d;

    instance-of v4, v4, Lcom/google/android/material/q/j;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/q/k;->d:Lcom/google/android/material/q/d;

    instance-of v4, v4, Lcom/google/android/material/q/j;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/q/k;->e:Lcom/google/android/material/q/d;

    instance-of v4, v4, Lcom/google/android/material/q/j;

    if-eqz v4, :cond_2

    move v4, v1

    .line 810
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    .line 795
    goto :goto_0

    :cond_1
    move v3, v2

    .line 802
    goto :goto_1

    :cond_2
    move v4, v2

    .line 804
    goto :goto_2

    :cond_3
    move v1, v2

    .line 810
    goto :goto_3
.end method

.method public b()Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/material/q/k;->b:Lcom/google/android/material/q/d;

    return-object v0
.end method

.method public c()Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/material/q/k;->c:Lcom/google/android/material/q/d;

    return-object v0
.end method

.method public d()Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/material/q/k;->d:Lcom/google/android/material/q/d;

    return-object v0
.end method

.method public e()Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/material/q/k;->e:Lcom/google/android/material/q/d;

    return-object v0
.end method

.method public f()Lcom/google/android/material/q/c;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/material/q/k;->f:Lcom/google/android/material/q/c;

    return-object v0
.end method

.method public g()Lcom/google/android/material/q/c;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/material/q/k;->g:Lcom/google/android/material/q/c;

    return-object v0
.end method

.method public h()Lcom/google/android/material/q/c;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/material/q/k;->h:Lcom/google/android/material/q/c;

    return-object v0
.end method

.method public i()Lcom/google/android/material/q/c;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/material/q/k;->i:Lcom/google/android/material/q/c;

    return-object v0
.end method

.method public j()Lcom/google/android/material/q/f;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/android/material/q/k;->m:Lcom/google/android/material/q/f;

    return-object v0
.end method

.method public k()Lcom/google/android/material/q/f;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/material/q/k;->j:Lcom/google/android/material/q/f;

    return-object v0
.end method

.method public l()Lcom/google/android/material/q/f;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/material/q/k;->k:Lcom/google/android/material/q/f;

    return-object v0
.end method

.method public m()Lcom/google/android/material/q/f;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/material/q/k;->l:Lcom/google/android/material/q/f;

    return-object v0
.end method

.method public n()Lcom/google/android/material/q/k$a;
    .locals 1

    .prologue
    .line 738
    new-instance v0, Lcom/google/android/material/q/k$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/q/k$a;-><init>(Lcom/google/android/material/q/k;)V

    return-object v0
.end method
