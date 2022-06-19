.class public Lcom/google/android/material/k/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/k/m$b;,
        Lcom/google/android/material/k/m$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/material/k/c;


# instance fields
.field public b:Lcom/google/android/material/k/d;

.field public c:Lcom/google/android/material/k/d;

.field public d:Lcom/google/android/material/k/d;

.field public e:Lcom/google/android/material/k/d;

.field public f:Lcom/google/android/material/k/c;

.field public g:Lcom/google/android/material/k/c;

.field public h:Lcom/google/android/material/k/c;

.field public i:Lcom/google/android/material/k/c;

.field public j:Lcom/google/android/material/k/f;

.field k:Lcom/google/android/material/k/f;

.field l:Lcom/google/android/material/k/f;

.field m:Lcom/google/android/material/k/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lcom/google/android/material/k/k;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/k/k;-><init>(F)V

    sput-object v0, Lcom/google/android/material/k/m;->a:Lcom/google/android/material/k/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19043
    new-instance v0, Lcom/google/android/material/k/l;

    invoke-direct {v0}, Lcom/google/android/material/k/l;-><init>()V

    .line 599
    iput-object v0, p0, Lcom/google/android/material/k/m;->b:Lcom/google/android/material/k/d;

    .line 20043
    new-instance v0, Lcom/google/android/material/k/l;

    invoke-direct {v0}, Lcom/google/android/material/k/l;-><init>()V

    .line 600
    iput-object v0, p0, Lcom/google/android/material/k/m;->c:Lcom/google/android/material/k/d;

    .line 21043
    new-instance v0, Lcom/google/android/material/k/l;

    invoke-direct {v0}, Lcom/google/android/material/k/l;-><init>()V

    .line 601
    iput-object v0, p0, Lcom/google/android/material/k/m;->d:Lcom/google/android/material/k/d;

    .line 22043
    new-instance v0, Lcom/google/android/material/k/l;

    invoke-direct {v0}, Lcom/google/android/material/k/l;-><init>()V

    .line 602
    iput-object v0, p0, Lcom/google/android/material/k/m;->e:Lcom/google/android/material/k/d;

    .line 604
    new-instance v0, Lcom/google/android/material/k/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/k/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 605
    new-instance v0, Lcom/google/android/material/k/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/k/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 606
    new-instance v0, Lcom/google/android/material/k/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/k/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    .line 607
    new-instance v0, Lcom/google/android/material/k/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/k/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    .line 22048
    new-instance v0, Lcom/google/android/material/k/f;

    invoke-direct {v0}, Lcom/google/android/material/k/f;-><init>()V

    .line 609
    iput-object v0, p0, Lcom/google/android/material/k/m;->j:Lcom/google/android/material/k/f;

    .line 23048
    new-instance v0, Lcom/google/android/material/k/f;

    invoke-direct {v0}, Lcom/google/android/material/k/f;-><init>()V

    .line 610
    iput-object v0, p0, Lcom/google/android/material/k/m;->k:Lcom/google/android/material/k/f;

    .line 24048
    new-instance v0, Lcom/google/android/material/k/f;

    invoke-direct {v0}, Lcom/google/android/material/k/f;-><init>()V

    .line 611
    iput-object v0, p0, Lcom/google/android/material/k/m;->l:Lcom/google/android/material/k/f;

    .line 25048
    new-instance v0, Lcom/google/android/material/k/f;

    invoke-direct {v0}, Lcom/google/android/material/k/f;-><init>()V

    .line 612
    iput-object v0, p0, Lcom/google/android/material/k/m;->m:Lcom/google/android/material/k/f;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/k/m$a;)V
    .locals 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->a:Lcom/google/android/material/k/d;

    .line 581
    iput-object v0, p0, Lcom/google/android/material/k/m;->b:Lcom/google/android/material/k/d;

    .line 8044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->b:Lcom/google/android/material/k/d;

    .line 582
    iput-object v0, p0, Lcom/google/android/material/k/m;->c:Lcom/google/android/material/k/d;

    .line 9044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->c:Lcom/google/android/material/k/d;

    .line 583
    iput-object v0, p0, Lcom/google/android/material/k/m;->d:Lcom/google/android/material/k/d;

    .line 10044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->d:Lcom/google/android/material/k/d;

    .line 584
    iput-object v0, p0, Lcom/google/android/material/k/m;->e:Lcom/google/android/material/k/d;

    .line 11044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->e:Lcom/google/android/material/k/c;

    .line 586
    iput-object v0, p0, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 12044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->f:Lcom/google/android/material/k/c;

    .line 587
    iput-object v0, p0, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 13044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->g:Lcom/google/android/material/k/c;

    .line 588
    iput-object v0, p0, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    .line 14044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->h:Lcom/google/android/material/k/c;

    .line 589
    iput-object v0, p0, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    .line 15044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->i:Lcom/google/android/material/k/f;

    .line 591
    iput-object v0, p0, Lcom/google/android/material/k/m;->j:Lcom/google/android/material/k/f;

    .line 16044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->j:Lcom/google/android/material/k/f;

    .line 592
    iput-object v0, p0, Lcom/google/android/material/k/m;->k:Lcom/google/android/material/k/f;

    .line 17044
    iget-object v0, p1, Lcom/google/android/material/k/m$a;->k:Lcom/google/android/material/k/f;

    .line 593
    iput-object v0, p0, Lcom/google/android/material/k/m;->l:Lcom/google/android/material/k/f;

    .line 18044
    iget-object p1, p1, Lcom/google/android/material/k/m$a;->l:Lcom/google/android/material/k/f;

    .line 594
    iput-object p1, p0, Lcom/google/android/material/k/m;->m:Lcom/google/android/material/k/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/k/m$a;Lcom/google/android/material/k/m$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/material/k/m;-><init>(Lcom/google/android/material/k/m$a;)V

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILcom/google/android/material/k/c;)Lcom/google/android/material/k/c;
    .locals 2

    .line 547
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 552
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 555
    new-instance p2, Lcom/google/android/material/k/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 556
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lcom/google/android/material/k/a;-><init>(F)V

    return-object p2

    .line 557
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 558
    new-instance p0, Lcom/google/android/material/k/k;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/k/k;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static a()Lcom/google/android/material/k/m$a;
    .locals 1

    .line 435
    new-instance v0, Lcom/google/android/material/k/m$a;

    invoke-direct {v0}, Lcom/google/android/material/k/m$a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lcom/google/android/material/k/m$a;
    .locals 2

    .line 1489
    new-instance v0, Lcom/google/android/material/k/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/k/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;IILcom/google/android/material/k/c;)Lcom/google/android/material/k/m$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;IILcom/google/android/material/k/c;)Lcom/google/android/material/k/m$a;
    .locals 6

    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 508
    :cond_0
    sget-object p2, Lcom/google/android/material/a$l;->ShapeAppearance:[I

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 512
    :try_start_0
    sget p1, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 513
    sget p2, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 514
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 515
    sget v0, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyTopRight:I

    .line 516
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 517
    sget v1, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 518
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 519
    sget v2, Lcom/google/android/material/a$l;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 520
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 522
    sget v2, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSize:I

    .line 523
    invoke-static {p0, v2, p3}, Lcom/google/android/material/k/m;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object p3

    .line 525
    sget v2, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeTopLeft:I

    .line 526
    invoke-static {p0, v2, p3}, Lcom/google/android/material/k/m;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v2

    .line 527
    sget v3, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeTopRight:I

    .line 528
    invoke-static {p0, v3, p3}, Lcom/google/android/material/k/m;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v3

    .line 529
    sget v4, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeBottomRight:I

    .line 530
    invoke-static {p0, v4, p3}, Lcom/google/android/material/k/m;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v4

    .line 531
    sget v5, Lcom/google/android/material/a$l;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 532
    invoke-static {p0, v5, p3}, Lcom/google/android/material/k/m;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object p3

    .line 534
    new-instance v5, Lcom/google/android/material/k/m$a;

    invoke-direct {v5}, Lcom/google/android/material/k/m$a;-><init>()V

    .line 2214
    invoke-static {p2}, Lcom/google/android/material/k/i;->a(I)Lcom/google/android/material/k/d;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/material/k/m$a;->a(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object p2

    .line 3147
    iput-object v2, p2, Lcom/google/android/material/k/m$a;->e:Lcom/google/android/material/k/c;

    .line 3255
    invoke-static {v0}, Lcom/google/android/material/k/i;->a(I)Lcom/google/android/material/k/d;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/k/m$a;->b(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object p2

    .line 4161
    iput-object v3, p2, Lcom/google/android/material/k/m$a;->f:Lcom/google/android/material/k/c;

    .line 4297
    invoke-static {v1}, Lcom/google/android/material/k/i;->a(I)Lcom/google/android/material/k/d;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/k/m$a;->c(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object p2

    .line 5175
    iput-object v4, p2, Lcom/google/android/material/k/m$a;->g:Lcom/google/android/material/k/c;

    .line 5339
    invoke-static {p1}, Lcom/google/android/material/k/i;->a(I)Lcom/google/android/material/k/d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/k/m$a;->d(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object p1

    .line 6189
    iput-object p3, p1, Lcom/google/android/material/k/m$a;->h:Lcom/google/android/material/k/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/k/m$a;
    .locals 2

    .line 1454
    new-instance v0, Lcom/google/android/material/k/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/k/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/k/c;)Lcom/google/android/material/k/m$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/k/c;)Lcom/google/android/material/k/m$a;
    .locals 1

    .line 465
    sget-object v0, Lcom/google/android/material/a$l;->MaterialShape:[I

    .line 466
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 468
    sget p2, Lcom/google/android/material/a$l;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 469
    sget v0, Lcom/google/android/material/a$l;->MaterialShape_shapeAppearanceOverlay:I

    .line 470
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 471
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-static {p0, p2, p3, p4}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;IILcom/google/android/material/k/c;)Lcom/google/android/material/k/m$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(F)Lcom/google/android/material/k/m;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/m$a;->a(F)Lcom/google/android/material/k/m$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/graphics/RectF;)Z
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/google/android/material/k/m;->m:Lcom/google/android/material/k/f;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/k/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/k/m;->k:Lcom/google/android/material/k/f;

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/k/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/k/m;->j:Lcom/google/android/material/k/f;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/k/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/k/m;->l:Lcom/google/android/material/k/f;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/k/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 797
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    invoke-interface {v3, p1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    .line 799
    iget-object v4, p0, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 800
    invoke-interface {v4, p1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    .line 801
    invoke-interface {v4, p1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    .line 802
    invoke-interface {v4, p1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 804
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/k/m;->c:Lcom/google/android/material/k/d;

    instance-of v3, v3, Lcom/google/android/material/k/l;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/k/m;->b:Lcom/google/android/material/k/d;

    instance-of v3, v3, Lcom/google/android/material/k/l;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/k/m;->d:Lcom/google/android/material/k/d;

    instance-of v3, v3, Lcom/google/android/material/k/l;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/k/m;->e:Lcom/google/android/material/k/d;

    instance-of v3, v3, Lcom/google/android/material/k/l;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final b()Lcom/google/android/material/k/m$a;
    .locals 1

    .line 738
    new-instance v0, Lcom/google/android/material/k/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/k/m$a;-><init>(Lcom/google/android/material/k/m;)V

    return-object v0
.end method
