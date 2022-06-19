.class public final Lcom/facebook/ads/redexgen/X/Lh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lg;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:F

.field public static final A02:Landroid/util/DisplayMetrics;

.field public static final A03:I

.field public static final A04:I

.field public static final A05:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 42937
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A0G()V

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Lh;->A04:I

    .line 42938
    const/high16 v1, -0x1000000

    const/16 v0, 0x73

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Lh;->A03:I

    .line 42939
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    .line 42940
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 42941
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42942
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 3

    .line 42944
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 42945
    .local v0, "result":I
    add-int/lit8 v1, v2, 0x1

    .line 42946
    .local v2, "newValue":I
    const v0, 0xffffff

    if-le v1, v0, :cond_1

    const/4 v1, 0x1

    .line 42947
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42948
    return v2
.end method

.method public static A01(I)I
    .locals 2

    .line 42949
    int-to-float p0, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    const/4 v0, 0x2

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static A02(I)I
    .locals 2

    .line 42950
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42951
    const/4 v1, -0x1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A02(IIF)I

    move-result v0

    return v0

    .line 42952
    :cond_0
    const/high16 v1, -0x1000000

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A02(IIF)I

    move-result v0

    return v0
.end method

.method public static A03(Landroid/content/Context;)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42953
    if-nez p0, :cond_0

    .line 42954
    const/4 p0, 0x0

    .line 42955
    :goto_0
    return p0

    .line 42956
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0
.end method

.method public static A04(Landroid/widget/TextView;)I
    .locals 4

    .line 42957
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42958
    .end local v2
    .end local v0
    :cond_0
    return v2

    .line 42959
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 42960
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 42961
    .local v0, "lines":I
    if-lez v0, :cond_2

    .line 42962
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    int-to-double v2, v0

    .line 42963
    .local v1, "ellipsisCount":D
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr v0, v2

    .line 42964
    .local v0, "charsInFirstLine":D
    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0

    .line 42965
    .end local v1    # "ellipsisCount":D
    .end local v0    # "charsInFirstLine":D
    :cond_2
    return v2
.end method

.method public static A05(Landroid/widget/TextView;I)I
    .locals 3

    .line 42966
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A04(Landroid/widget/TextView;)I

    move-result v2

    .line 42967
    .local p0, "extraLinesRequired":I
    const/4 v1, 0x0

    .line 42968
    .local p1, "lines":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 42969
    .local v2, "lineHeightTitle":I
    :goto_0
    if-le p1, v0, :cond_0

    if-ge v1, v2, :cond_0

    .line 42970
    add-int/lit8 v1, v1, 0x1

    .line 42971
    sub-int/2addr p1, v0

    goto :goto_0

    .line 42972
    :cond_0
    return v1
.end method

.method public static A06(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42973
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A02(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Lh;->A09(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static A07(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 42974
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 42975
    .local p0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 42976
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 42977
    return-object v1
.end method

.method public static A08(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 42978
    const/16 v0, 0x8

    new-array v2, v0, [F

    .line 42979
    .local p0, "outerRadii":[F
    int-to-float v0, p1

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 42980
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 42981
    .local p1, "r":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 42982
    .local v0, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42983
    return-object v1
.end method

.method public static A09(III)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42984
    invoke-static {p0, p1, p0, p2}, Lcom/facebook/ads/redexgen/X/Lh;->A0A(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static A0A(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 42985
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 42986
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 42987
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/Lh;->A07(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 42988
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/Lh;->A08(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p1, p0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42989
    return-object v0

    .line 42990
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Lh;->A0C(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static A0B(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42991
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 42992
    .local p0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 42993
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 42994
    return-object v0
.end method

.method public static A0C(III)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    .line 42995
    const/4 v5, 0x2

    new-array v4, v5, [[I

    const/4 v3, 0x1

    new-array v2, v3, [I

    const/4 v1, 0x0

    const v0, 0x10100a7

    aput v0, v2, v1

    aput-object v2, v4, v1

    new-array v0, v1, [I

    aput-object v0, v4, v3

    .line 42996
    .local p1, "states":[[I
    new-array v0, v5, [I

    aput p1, v0, v1

    aput p0, v0, v3

    .line 42997
    .local p0, "colors":[I
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/Lh;->A0D([[I[II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static A0D([[I[II)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 42998
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 42999
    .local p0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 43000
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43001
    .local p2, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    aget v0, p1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43002
    int-to-float v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43003
    aget-object v0, p0, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43004
    .end local p2    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43005
    .end local p1    # "i":I
    :cond_0
    return-object v3
.end method

.method public static A0E(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43006
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 43007
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 43008
    .local v2, "v":Landroid/view/View;
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43009
    check-cast v1, Landroid/widget/TextView;

    return-object v1

    .line 43010
    :cond_0
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 43011
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0E(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 43012
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43013
    .end local p0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0F(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lh;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0G()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x8t
        -0x1at
        -0xdt
        -0x8t
        -0x4et
        -0x8t
        -0x16t
        -0x9t
        -0x12t
        -0x15t
        -0x4et
        -0xet
        -0x16t
        -0x17t
        -0x12t
        -0x6t
        -0xet
    .end array-data
.end method

.method public static A0H(IFLandroid/view/View;)V
    .locals 11

    .line 43014
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move v4, p1

    move v6, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 43015
    .local p0, "scaleDownAnimation":Landroid/view/animation/Animation;
    div-int/lit8 v0, p0, 0x2

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43016
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43017
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 43018
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 43019
    invoke-virtual {p2, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43020
    return-void
.end method

.method public static A0I(ILandroid/view/View;)V
    .locals 13

    .line 43021
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 43022
    .local p0, "scaleDownAnimation":Landroid/view/animation/Animation;
    div-int/lit8 v0, p0, 0x3

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43023
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43024
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 43025
    .local p1, "bounceAnimation":Landroid/view/animation/ScaleAnimation;
    div-int/lit8 v0, p0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 43026
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43027
    new-instance v0, Lcom/facebook/ads/redexgen/X/cd;

    invoke-direct {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/cd;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43028
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43029
    return-void
.end method

.method public static A0J(ILandroid/view/View;)V
    .locals 2

    .line 43030
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lh;->A05:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43031
    .local p0, "viewId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 43032
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 43033
    return-void

    .line 43034
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43035
    return-void
.end method

.method public static A0K(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43036
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 43037
    return-void
.end method

.method public static A0L(Landroid/view/View;)V
    .locals 1

    .line 43038
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 43039
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 43040
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 43041
    :cond_0
    return-void
.end method

.method public static A0M(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43042
    if-nez p0, :cond_0

    .line 43043
    return-void

    .line 43044
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43045
    .local p0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 43046
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43047
    :cond_1
    return-void
.end method

.method public static A0N(Landroid/view/View;)V
    .locals 2

    .line 43048
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 43049
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 43050
    :goto_0
    return-void

    .line 43051
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A00()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method public static A0O(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43052
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 43053
    return-void
.end method

.method public static A0P(Landroid/view/View;I)V
    .locals 2

    .line 43054
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 43055
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43056
    :goto_0
    return-void

    .line 43057
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static A0Q(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43058
    if-eqz p0, :cond_0

    .line 43059
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43060
    :cond_0
    return-void
.end method

.method public static A0R(Landroid/view/View;II)V
    .locals 1

    .line 43061
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Lh;->A07(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43062
    return-void
.end method

.method public static A0S(Landroid/view/View;II)V
    .locals 1

    .line 43063
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A02(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Lh;->A09(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43064
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43065
    return-void
.end method

.method public static A0T(Landroid/view/View;III)V
    .locals 4

    .line 43066
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A04:I

    const/4 v0, 0x0

    aput v1, v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A03:I

    const/4 v0, 0x1

    aput v1, v2, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43067
    .local p0, "gd":Landroid/graphics/drawable/GradientDrawable;
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43068
    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43069
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43070
    return-void
.end method

.method public static A0U(Landroid/view/View;III)V
    .locals 1

    .line 43071
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A02(I)I

    move-result v0

    .line 43072
    invoke-static {p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Lh;->A0A(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43073
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43074
    return-void
.end method

.method public static A0V(Landroid/view/View;I[F)V
    .locals 1

    .line 43075
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Lh;->A0B(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43076
    return-void
.end method

.method public static A0W(Landroid/view/View;Landroid/content/Context;)V
    .locals 4

    .line 43077
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A04:I

    const/4 v0, 0x0

    aput v1, v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A03:I

    const/4 v0, 0x1

    aput v1, v2, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43078
    .local p0, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43079
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43080
    return-void
.end method

.method public static A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 43081
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 43082
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43083
    :goto_0
    return-void

    .line 43084
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static A0Y(Landroid/view/ViewGroup;)V
    .locals 2

    .line 43085
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 43086
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Z(Landroid/view/ViewGroup;I)V

    .line 43087
    :cond_0
    return-void
.end method

.method public static A0Z(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 43088
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 43089
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0b(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V

    .line 43090
    :cond_0
    return-void
.end method

.method public static A0a(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2

    .line 43091
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 43092
    const/16 v0, 0xc8

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0b(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V

    .line 43093
    :cond_0
    return-void
.end method

.method public static A0b(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 43094
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 43095
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 43096
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 43097
    return-void
.end method

.method public static A0c(Landroid/widget/TextView;ZI)V
    .locals 4

    .line 43098
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 43099
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 43100
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0F(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 43101
    .local p0, "typeface":Landroid/graphics/Typeface;
    .restart local p0    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43102
    const/4 v1, 0x2

    int-to-float v0, p2

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43103
    return-void

    .line 43104
    .end local p0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .restart local p0    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 43105
    .end local p0    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0d(Landroid/widget/Toast;Ljava/lang/String;III)V
    .locals 1
    .param p0    # Landroid/widget/Toast;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43106
    if-nez p0, :cond_0

    .line 43107
    return-void

    .line 43108
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 43109
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0E(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    .line 43110
    .local p0, "toastTextView":Landroid/widget/TextView;
    if-eqz p0, :cond_1

    .line 43111
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43112
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 43113
    :cond_1
    return-void
.end method

.method public static varargs A0e([Landroid/view/View;)V
    .locals 3

    .line 43114
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 43115
    .local v1, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 43116
    .end local v1    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43117
    :cond_0
    return-void
.end method

.method public static A0f(I)Z
    .locals 4

    .line 43118
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2L;->A00(I)D

    move-result-wide v3

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
