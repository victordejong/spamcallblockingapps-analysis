.class public Landroidx/k/a/a/i;
.super Landroidx/k/a/a/h;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/k/a/a/i$b;,
        Landroidx/k/a/a/i$a;,
        Landroidx/k/a/a/i$e;,
        Landroidx/k/a/a/i$c;,
        Landroidx/k/a/a/i$d;,
        Landroidx/k/a/a/i$f;,
        Landroidx/k/a/a/i$g;,
        Landroidx/k/a/a/i$h;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private b:Landroidx/k/a/a/i$g;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/k/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Landroidx/k/a/a/h;-><init>()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/k/a/a/i;->g:Z

    .line 317
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/k/a/a/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    .line 322
    new-instance v0, Landroidx/k/a/a/i$g;

    invoke-direct {v0}, Landroidx/k/a/a/i$g;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 323
    return-void
.end method

.method constructor <init>(Landroidx/k/a/a/i$g;)V
    .locals 3

    .prologue
    .line 325
    invoke-direct {p0}, Landroidx/k/a/a/h;-><init>()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/k/a/a/i;->g:Z

    .line 317
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/k/a/a/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    .line 326
    iput-object p1, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 327
    iget-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/k/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 328
    return-void
.end method

.method static a(IF)I
    .locals 2

    .prologue
    .line 687
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 688
    const v1, 0xffffff

    and-int/2addr v1, p0

    .line 689
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 690
    return v0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 734
    packed-switch p0, :pswitch_data_0

    .line 748
    :goto_0
    :pswitch_0
    return-object p1

    .line 736
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 738
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 740
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 742
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 744
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 746
    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/k/a/a/i;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 646
    new-instance v0, Landroidx/k/a/a/i;

    invoke-direct {v0}, Landroidx/k/a/a/i;-><init>()V

    .line 647
    invoke-static {p0, p1, p2}, Landroidx/core/a/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 648
    new-instance v1, Landroidx/k/a/a/i$h;

    iget-object v2, v0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 649
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/k/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Landroidx/k/a/a/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 670
    :goto_0
    return-object v0

    .line 654
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 655
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 657
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 661
    :cond_2
    if-eq v2, v4, :cond_3

    .line 662
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    const-string/jumbo v1, "VectorDrawableCompat"

    const-string/jumbo v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 664
    :cond_3
    :try_start_1
    invoke-static {p0, v0, v1, p2}, Landroidx/k/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/k/a/a/i;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 667
    :catch_1
    move-exception v0

    .line 668
    const-string/jumbo v1, "VectorDrawableCompat"

    const-string/jumbo v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/k/a/a/i;
    .locals 1

    .prologue
    .line 681
    new-instance v0, Landroidx/k/a/a/i;

    invoke-direct {v0}, Landroidx/k/a/a/i;-><init>()V

    .line 682
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/k/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 683
    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 754
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 755
    iget-object v1, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    .line 760
    const-string/jumbo v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 762
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/k/a/a/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 764
    const-string/jumbo v2, "tint"

    const/4 v3, 0x1

    .line 765
    invoke-static {p1, p2, p3, v2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 767
    if-eqz v2, :cond_0

    .line 768
    iput-object v2, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 771
    :cond_0
    const-string/jumbo v2, "autoMirrored"

    const/4 v3, 0x5

    iget-boolean v4, v0, Landroidx/k/a/a/i$g;->e:Z

    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/k/a/a/i$g;->e:Z

    .line 774
    const-string/jumbo v0, "viewportWidth"

    const/4 v2, 0x7

    iget v3, v1, Landroidx/k/a/a/i$f;->f:F

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroidx/k/a/a/i$f;->f:F

    .line 778
    const-string/jumbo v0, "viewportHeight"

    const/16 v2, 0x8

    iget v3, v1, Landroidx/k/a/a/i$f;->g:F

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroidx/k/a/a/i$f;->g:F

    .line 782
    iget v0, v1, Landroidx/k/a/a/i$f;->f:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    .line 783
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_1
    iget v0, v1, Landroidx/k/a/a/i$f;->g:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 786
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_2
    const/4 v0, 0x3

    iget v2, v1, Landroidx/k/a/a/i$f;->d:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroidx/k/a/a/i$f;->d:F

    .line 792
    const/4 v0, 0x2

    iget v2, v1, Landroidx/k/a/a/i$f;->e:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroidx/k/a/a/i$f;->e:F

    .line 794
    iget v0, v1, Landroidx/k/a/a/i$f;->d:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    .line 795
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_3
    iget v0, v1, Landroidx/k/a/a/i$f;->e:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    .line 798
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_4
    const-string/jumbo v0, "alpha"

    const/4 v2, 0x4

    .line 804
    invoke-virtual {v1}, Landroidx/k/a/a/i$f;->getAlpha()F

    move-result v3

    .line 803
    invoke-static {p1, p2, v0, v2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 805
    invoke-virtual {v1, v0}, Landroidx/k/a/a/i$f;->setAlpha(F)V

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_5

    .line 809
    iput-object v0, v1, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    .line 810
    iget-object v2, v1, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v2, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :cond_5
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 907
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 908
    invoke-virtual {p0}, Landroidx/k/a/a/i;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 911
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 909
    goto :goto_0

    :cond_1
    move v0, v1

    .line 911
    goto :goto_0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    .line 816
    iget-object v3, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 817
    iget-object v4, v3, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    .line 822
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 823
    iget-object v0, v4, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 825
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 826
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move v1, v2

    .line 829
    :goto_0
    if-eq v0, v2, :cond_9

    .line 830
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v6, :cond_0

    if-eq v0, v9, :cond_9

    .line 831
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 832
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 833
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i$c;

    .line 834
    const-string/jumbo v8, "path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 835
    new-instance v1, Landroidx/k/a/a/i$b;

    invoke-direct {v1}, Landroidx/k/a/a/i$b;-><init>()V

    .line 836
    invoke-virtual {v1, p1, p3, p4, p2}, Landroidx/k/a/a/i$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 837
    iget-object v0, v0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v1}, Landroidx/k/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, v4, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v1}, Landroidx/k/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_1
    const/4 v0, 0x0

    .line 842
    iget v7, v3, Landroidx/k/a/a/i$g;->a:I

    iget v1, v1, Landroidx/k/a/a/i$b;->o:I

    or-int/2addr v1, v7

    iput v1, v3, Landroidx/k/a/a/i$g;->a:I

    :goto_1
    move v1, v0

    .line 868
    :cond_2
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 843
    :cond_3
    const-string/jumbo v8, "clip-path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 844
    new-instance v7, Landroidx/k/a/a/i$a;

    invoke-direct {v7}, Landroidx/k/a/a/i$a;-><init>()V

    .line 845
    invoke-virtual {v7, p1, p3, p4, p2}, Landroidx/k/a/a/i$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 846
    iget-object v0, v0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v7}, Landroidx/k/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, v4, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v7}, Landroidx/k/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_4
    iget v0, v3, Landroidx/k/a/a/i$g;->a:I

    iget v7, v7, Landroidx/k/a/a/i$a;->o:I

    or-int/2addr v0, v7

    iput v0, v3, Landroidx/k/a/a/i$g;->a:I

    move v0, v1

    .line 851
    goto :goto_1

    :cond_5
    const-string/jumbo v8, "group"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 852
    new-instance v7, Landroidx/k/a/a/i$c;

    invoke-direct {v7}, Landroidx/k/a/a/i$c;-><init>()V

    .line 853
    invoke-virtual {v7, p1, p3, p4, p2}, Landroidx/k/a/a/i$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 854
    iget-object v0, v0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v5, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 856
    invoke-virtual {v7}, Landroidx/k/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 857
    iget-object v0, v4, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v7}, Landroidx/k/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_6
    iget v0, v3, Landroidx/k/a/a/i$g;->a:I

    iget v7, v7, Landroidx/k/a/a/i$c;->e:I

    or-int/2addr v0, v7

    iput v0, v3, Landroidx/k/a/a/i$g;->a:I

    :cond_7
    move v0, v1

    goto :goto_1

    .line 862
    :cond_8
    if-ne v0, v9, :cond_2

    .line 863
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 864
    const-string/jumbo v7, "group"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 876
    :cond_9
    if-eqz v1, :cond_a

    .line 877
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_a
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 477
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 478
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroidx/k/a/a/i;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 483
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget-object v0, v0, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 902
    iput-boolean p1, p0, Landroidx/k/a/a/i;->g:Z

    .line 903
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroidx/k/a/a/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 591
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 360
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/k/a/a/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 367
    iget-object v0, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Landroidx/k/a/a/i;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 379
    :goto_1
    iget-object v1, p0, Landroidx/k/a/a/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 380
    iget-object v1, p0, Landroidx/k/a/a/i;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroidx/k/a/a/i;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 381
    iget-object v1, p0, Landroidx/k/a/a/i;->i:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 382
    iget-object v1, p0, Landroidx/k/a/a/i;->i:[F

    const/4 v4, 0x4

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 384
    iget-object v4, p0, Landroidx/k/a/a/i;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 385
    iget-object v5, p0, Landroidx/k/a/a/i;->i:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 388
    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    move v3, v2

    .line 393
    :cond_3
    iget-object v4, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 394
    iget-object v4, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 395
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 396
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 398
    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 403
    iget-object v5, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    invoke-direct {p0}, Landroidx/k/a/a/i;->a()Z

    move-result v5

    .line 407
    if-eqz v5, :cond_4

    .line 408
    iget-object v5, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    :cond_4
    iget-object v2, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    iget-object v2, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {v2, v3, v1}, Landroidx/k/a/a/i$g;->b(II)V

    .line 418
    iget-boolean v2, p0, Landroidx/k/a/a/i;->g:Z

    if-nez v2, :cond_7

    .line 419
    iget-object v2, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {v2, v3, v1}, Landroidx/k/a/a/i$g;->a(II)V

    .line 426
    :cond_5
    :goto_2
    iget-object v1, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v2, p0, Landroidx/k/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroidx/k/a/a/i$g;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 427
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 373
    :cond_6
    iget-object v0, p0, Landroidx/k/a/a/i;->e:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 421
    :cond_7
    iget-object v2, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {v2}, Landroidx/k/a/a/i$g;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 422
    iget-object v2, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {v2, v3, v1}, Landroidx/k/a/a/i$g;->a(II)V

    .line 423
    iget-object v1, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {v1}, Landroidx/k/a/a/i$g;->c()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 436
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 928
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroidx/k/a/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {v1}, Landroidx/k/a/a/i$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->e:Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 352
    new-instance v0, Landroidx/k/a/a/i$h;

    iget-object v1, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/k/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 355
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-virtual {p0}, Landroidx/k/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/k/a/a/i$g;->a:I

    .line 355
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 581
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget v0, v0, Landroidx/k/a/a/i$f;->e:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 572
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget v0, v0, Landroidx/k/a/a/i$f;->d:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroidx/k/a/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 702
    :goto_0
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/k/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 726
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 713
    new-instance v1, Landroidx/k/a/a/i$f;

    invoke-direct {v1}, Landroidx/k/a/a/i$f;-><init>()V

    .line 714
    iput-object v1, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    .line 716
    sget-object v1, Landroidx/k/a/a/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 719
    invoke-direct {p0, v1, p2, p4}, Landroidx/k/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 720
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    invoke-virtual {p0}, Landroidx/k/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/k/a/a/i$g;->a:I

    .line 722
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/k/a/a/i$g;->k:Z

    .line 723
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/k/a/a/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 725
    iget-object v1, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/k/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 938
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-super {p0}, Landroidx/k/a/a/h;->invalidateSelf()V

    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 599
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-boolean v0, v0, Landroidx/k/a/a/i$g;->e:Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroidx/k/a/a/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 533
    invoke-virtual {v0}, Landroidx/k/a/a/i$g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 534
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroidx/k/a/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_0
    :goto_0
    return-object p0

    .line 337
    :cond_1
    iget-boolean v0, p0, Landroidx/k/a/a/i;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/k/a/a/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 338
    new-instance v0, Landroidx/k/a/a/i$g;

    iget-object v1, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    invoke-direct {v0, v1}, Landroidx/k/a/a/i$g;-><init>(Landroidx/k/a/a/i$g;)V

    iput-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/k/a/a/i;->f:Z

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 921
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 539
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 554
    :cond_0
    :goto_0
    return v0

    .line 543
    :cond_1
    const/4 v0, 0x0

    .line 544
    iget-object v2, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 545
    iget-object v3, v2, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_2

    .line 546
    iget-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v2, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v4, v2, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v3, v4}, Landroidx/k/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 547
    invoke-virtual {p0}, Landroidx/k/a/a/i;->invalidateSelf()V

    move v0, v1

    .line 550
    :cond_2
    invoke-virtual {v2}, Landroidx/k/a/a/i$g;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Landroidx/k/a/a/i$g;->a([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {p0}, Landroidx/k/a/a/i;->invalidateSelf()V

    move v0, v1

    .line 552
    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 947
    :goto_0
    return-void

    .line 946
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/k/a/a/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 447
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0, p1}, Landroidx/k/a/a/i$f;->setRootAlpha(I)V

    .line 448
    invoke-virtual {p0}, Landroidx/k/a/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 609
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    iput-boolean p1, v0, Landroidx/k/a/a/i$g;->e:Z

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroidx/k/a/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroidx/k/a/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iput-object p1, p0, Landroidx/k/a/a/i;->e:Landroid/graphics/ColorFilter;

    .line 460
    invoke-virtual {p0}, Landroidx/k/a/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroidx/k/a/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroidx/k/a/a/h;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/k/a/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroidx/k/a/a/h;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/k/a/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 504
    iget-object v1, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 505
    iput-object p1, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 506
    iget-object v1, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/k/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 507
    invoke-virtual {p0}, Landroidx/k/a/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Landroidx/k/a/a/i;->b:Landroidx/k/a/a/i$g;

    .line 519
    iget-object v1, v0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 520
    iput-object p1, v0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 521
    iget-object v1, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/k/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 522
    invoke-virtual {p0}, Landroidx/k/a/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 954
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/k/a/a/h;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 964
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-super {p0, p1}, Landroidx/k/a/a/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
