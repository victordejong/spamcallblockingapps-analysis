.class Landroidx/appcompat/widget/u;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final a:Landroid/graphics/RectF;

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:[I

.field private j:Z

.field private k:Landroid/text/TextPaint;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/u;->a:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/u;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/u;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Landroidx/appcompat/widget/u;->d:I

    .line 86
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->e:Z

    .line 88
    iput v0, p0, Landroidx/appcompat/widget/u;->f:F

    .line 90
    iput v0, p0, Landroidx/appcompat/widget/u;->g:F

    .line 92
    iput v0, p0, Landroidx/appcompat/widget/u;->h:F

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    .line 99
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->j:Z

    .line 106
    iput-object p1, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private a(Landroid/graphics/RectF;)I
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    array-length v0, v0

    .line 643
    if-nez v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No available text sizes to choose from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    const/4 v3, 0x0

    .line 648
    const/4 v1, 0x1

    .line 649
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 651
    :goto_0
    if-gt v2, v0, :cond_2

    .line 652
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 653
    iget-object v3, p0, Landroidx/appcompat/widget/u;->i:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/u;->a(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 657
    :cond_1
    add-int/lit8 v1, v1, -0x1

    move v0, v1

    move v3, v1

    .line 658
    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    aget v0, v0, v3

    return v0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 8

    .prologue
    .line 754
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 755
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    .line 756
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    .line 760
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 788
    const/4 v0, 0x0

    .line 793
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/u;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 794
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 799
    if-nez p2, :cond_0

    .line 804
    :cond_0
    :goto_0
    return-object p2

    .line 795
    :catch_0
    move-exception v1

    .line 796
    const/4 v2, 0x1

    .line 797
    :try_start_1
    const-string/jumbo v3, "ACTVAutoSizeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to invoke TextView#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "() method"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 802
    :cond_1
    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 826
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/u;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 827
    if-nez v0, :cond_0

    .line 828
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_0

    .line 830
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 832
    sget-object v1, Landroidx/appcompat/widget/u;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_0
    :goto_0
    return-object v0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    const-string/jumbo v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to retrieve TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "() method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(F)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    .line 609
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInLayout()Z

    move-result v0

    .line 612
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 614
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->e:Z

    .line 616
    const-string/jumbo v1, "nullLayouts"

    .line 618
    :try_start_0
    const-string/jumbo v1, "nullLayouts"

    invoke-static {v1}, Landroidx/appcompat/widget/u;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_0

    .line 620
    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 632
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 635
    :cond_1
    return-void

    .line 622
    :catch_0
    move-exception v1

    .line 623
    const-string/jumbo v2, "ACTVAutoSizeHelper"

    const-string/jumbo v3, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 629
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceLayout()V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(FFF)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 491
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_1

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Maximum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_2

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The auto-size step granularity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/u;->d:I

    .line 509
    iput p1, p0, Landroidx/appcompat/widget/u;->g:F

    .line 510
    iput p2, p0, Landroidx/appcompat/widget/u;->h:F

    .line 511
    iput p3, p0, Landroidx/appcompat/widget/u;->f:F

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->j:Z

    .line 513
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 4

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 428
    new-array v2, v1, [I

    .line 430
    if-lez v1, :cond_1

    .line 431
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 432
    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v2, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/u;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    .line 435
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->h()Z

    .line 437
    :cond_1
    return-void
.end method

.method private a(ILandroid/graphics/RectF;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 690
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 698
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    move v2, v0

    .line 699
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/u;->b(I)V

    .line 702
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const-string/jumbo v5, "getLayoutAlignment"

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {v0, v5, v6}, Landroidx/appcompat/widget/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    .line 704
    iget v5, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v1, v0, v5, v2}, Landroidx/appcompat/widget/u;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v0

    .line 707
    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v2, :cond_1

    .line 708
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v2, v1, :cond_3

    :cond_1
    move v0, v4

    .line 717
    :goto_1
    return v0

    :cond_2
    move v2, v3

    .line 698
    goto :goto_0

    .line 713
    :cond_3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    move v0, v4

    .line 714
    goto :goto_1

    .line 717
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a([I)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 453
    array-length v2, p1

    .line 454
    if-nez v2, :cond_1

    .line 477
    :cond_0
    return-object p1

    .line 457
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 460
    :goto_0
    if-ge v1, v2, :cond_3

    .line 461
    aget v4, p1, v1

    .line 463
    if-lez v4, :cond_2

    .line 464
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 472
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 473
    new-array p1, v2, [I

    move v1, v0

    .line 474
    :goto_1
    if-ge v1, v2, :cond_0

    .line 475
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    .line 474
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 8

    .prologue
    .line 771
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "mSpacingMult"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 772
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 771
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/u;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 773
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "mSpacingAdd"

    const/4 v2, 0x0

    .line 774
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 773
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/u;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 775
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "mIncludePad"

    const/4 v2, 0x1

    .line 776
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 775
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/u;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 778
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 4

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    .line 724
    invoke-static {p1, v0, v1, v2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 727
    invoke-virtual {v1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 729
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 730
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    .line 728
    invoke-virtual {v0, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 731
    invoke-virtual {v2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 732
    invoke-virtual {v2}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 733
    invoke-virtual {v2}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    const p4, 0x7fffffff

    .line 734
    :cond_0
    invoke-virtual {v0, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 739
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 740
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .line 743
    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_1
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    .line 740
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const-string/jumbo v2, "getTextDirectionHeuristic"

    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 741
    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristic;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 746
    const-string/jumbo v0, "ACTVAutoSizeHelper"

    const-string/jumbo v2, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 811
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/u;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 812
    if-nez v0, :cond_0

    .line 819
    :goto_0
    return-object p2

    .line 816
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 817
    :catch_0
    move-exception v0

    .line 818
    const-string/jumbo v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to access TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " member"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    .line 846
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/u;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 847
    if-nez v0, :cond_0

    .line 848
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_0

    .line 850
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 851
    sget-object v1, Landroidx/appcompat/widget/u;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_0
    :goto_0
    return-object v0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    const-string/jumbo v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to access TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " member"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    array-length v3, v0

    .line 441
    if-lez v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->j:Z

    .line 442
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->j:Z

    if-eqz v0, :cond_0

    .line 443
    iput v1, p0, Landroidx/appcompat/widget/u;->d:I

    .line 444
    iget-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/u;->g:F

    .line 445
    iget-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/u;->h:F

    .line 446
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/appcompat/widget/u;->f:F

    .line 448
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->j:Z

    return v0

    :cond_1
    move v0, v2

    .line 441
    goto :goto_0
.end method

.method private i()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 516
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/appcompat/widget/u;->d:I

    if-ne v1, v6, :cond_3

    .line 520
    iget-boolean v1, p0, Landroidx/appcompat/widget/u;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/u;->i:[I

    array-length v1, v1

    if-nez v1, :cond_2

    .line 522
    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/u;->h:F

    iget v2, p0, Landroidx/appcompat/widget/u;->g:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/u;->f:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 524
    new-array v2, v1, [I

    .line 525
    :goto_0
    if-ge v0, v1, :cond_1

    .line 526
    iget v3, p0, Landroidx/appcompat/widget/u;->g:F

    int-to-float v4, v0

    iget v5, p0, Landroidx/appcompat/widget/u;->f:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_1
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/u;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    .line 531
    :cond_2
    iput-boolean v6, p0, Landroidx/appcompat/widget/u;->e:Z

    .line 536
    :goto_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->e:Z

    return v0

    .line 533
    :cond_3
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->e:Z

    goto :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 585
    iput v1, p0, Landroidx/appcompat/widget/u;->d:I

    .line 586
    iput v0, p0, Landroidx/appcompat/widget/u;->g:F

    .line 587
    iput v0, p0, Landroidx/appcompat/widget/u;->h:F

    .line 588
    iput v0, p0, Landroidx/appcompat/widget/u;->f:F

    .line 589
    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    .line 590
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->e:Z

    .line 591
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroidx/appcompat/widget/u;->d:I

    return v0
.end method

.method a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 2

    .prologue
    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 680
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/u;->b(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v0

    .line 684
    :goto_0
    return-object v0

    .line 681
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 682
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/u;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/u;->b(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0
.end method

.method a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 204
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_0
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->j()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 216
    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 221
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v2}, Landroidx/appcompat/widget/u;->a(FFF)V

    .line 225
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->f()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(IF)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 597
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/u;->a(F)V

    .line 601
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    .line 598
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method a(IIII)V
    .locals 4

    .prologue
    .line 271
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 273
    int-to-float v1, p1

    invoke-static {p4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 275
    int-to-float v2, p2

    invoke-static {p4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 277
    int-to-float v3, p3

    invoke-static {p4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 280
    invoke-direct {p0, v1, v2, v0}, Landroidx/appcompat/widget/u;->a(FFF)V

    .line 283
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->f()V

    .line 287
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 111
    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/a$j;->AppCompatTextView:[I

    invoke-virtual {v0, p1, v2, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 117
    sget v0, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget v0, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/u;->d:I

    .line 121
    :cond_0
    sget v0, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    sget v0, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 126
    :goto_0
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 127
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 131
    :goto_1
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 132
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 136
    :goto_2
    sget v5, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    sget v5, Landroidx/appcompat/a$j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 139
    if-lez v5, :cond_1

    .line 140
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 141
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 142
    invoke-direct {p0, v5}, Landroidx/appcompat/widget/u;->a(Landroid/content/res/TypedArray;)V

    .line 143
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 149
    iget v4, p0, Landroidx/appcompat/widget/u;->d:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 153
    iget-boolean v4, p0, Landroidx/appcompat/widget/u;->j:Z

    if-nez v4, :cond_5

    .line 154
    iget-object v4, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    .line 155
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 157
    cmpl-float v5, v2, v1

    if-nez v5, :cond_2

    .line 158
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v8, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 164
    :cond_2
    cmpl-float v5, v3, v1

    if-nez v5, :cond_3

    .line 165
    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 171
    :cond_3
    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    :cond_4
    invoke-direct {p0, v2, v3, v0}, Landroidx/appcompat/widget/u;->a(FFF)V

    .line 181
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->i()Z

    .line 186
    :cond_6
    :goto_3
    return-void

    .line 184
    :cond_7
    iput v7, p0, Landroidx/appcompat/widget/u;->d:I

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method a([II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    array-length v2, p1

    .line 316
    if-lez v2, :cond_2

    .line 317
    new-array v0, v2, [I

    .line 319
    if-nez p2, :cond_1

    .line 320
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 331
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/u;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    .line 332
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "None of the preset sizes is valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/u;->m:Landroid/content/Context;

    .line 323
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 325
    :goto_0
    if-ge v1, v2, :cond_0

    .line 326
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v0, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->j:Z

    .line 340
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->f()V

    .line 344
    :cond_4
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroidx/appcompat/widget/u;->f:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    .line 672
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 674
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->k:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    goto :goto_0
.end method

.method c()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroidx/appcompat/widget/u;->g:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Landroidx/appcompat/widget/u;->h:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method e()[I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Landroidx/appcompat/widget/u;->i:[I

    return-object v0
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 546
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->e:Z

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 556
    invoke-virtual {v0}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v0

    .line 558
    :goto_1
    if-eqz v0, :cond_5

    const/high16 v0, 0x100000

    .line 562
    :goto_2
    iget-object v1, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 563
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 565
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 569
    sget-object v2, Landroidx/appcompat/widget/u;->a:Landroid/graphics/RectF;

    monitor-enter v2

    .line 570
    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/u;->a:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 571
    sget-object v3, Landroidx/appcompat/widget/u;->a:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 572
    sget-object v0, Landroidx/appcompat/widget/u;->a:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 573
    sget-object v0, Landroidx/appcompat/widget/u;->a:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/u;->a(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 574
    iget-object v1, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 575
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/u;->a(IF)V

    .line 577
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->e:Z

    goto :goto_0

    .line 556
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "getHorizontallyScrolling"

    .line 557
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 558
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/u;->l:Landroid/widget/TextView;

    .line 561
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/u;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
