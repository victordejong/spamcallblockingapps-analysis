.class public final Lcom/facebook/ads/redexgen/X/Lj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Li;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:F

.field public static final A03:Landroid/util/DisplayMetrics;

.field public static final A04:I

.field public static final A05:I

.field public static final A06:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43090
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A0E()V

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Lj;->A05:I

    .line 43091
    const/high16 v1, -0x1000000

    const/16 v0, 0x73

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Lj;->A04:I

    .line 43092
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    .line 43093
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 43094
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43095
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A06:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 3

    .line 43097
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 43098
    .local v0, "result":I
    add-int/lit8 v1, v2, 0x1

    .line 43099
    .local v2, "newValue":I
    const v0, 0xffffff

    if-le v1, v0, :cond_1

    const/4 v1, 0x1

    .line 43100
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43101
    return v2
.end method

.method public static A01(I)I
    .locals 2

    .line 43102
    int-to-float p0, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    const/4 v0, 0x2

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static A02(I)I
    .locals 2

    .line 43103
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43104
    const/4 v1, -0x1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A02(IIF)I

    move-result v0

    return v0

    .line 43105
    :cond_0
    const/high16 v1, -0x1000000

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A02(IIF)I

    move-result v0

    return v0
.end method

.method public static A03(Landroid/widget/TextView;)I
    .locals 5

    .line 43106
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43107
    .end local v2
    .end local v0
    :cond_0
    return v2

    .line 43108
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 43109
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 43110
    .local v0, "lines":I
    if-lez v0, :cond_3

    .line 43111
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    int-to-double v3, v0

    .line 43112
    .local v1, "ellipsisCount":D
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr v0, v3

    .line 43113
    .local v0, "charsInFirstLine":D
    div-double/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const-string v1, "IkK7ljd8WWfE470H6O9Fo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43114
    .end local v1    # "ellipsisCount":D
    .end local v0    # "charsInFirstLine":D
    :cond_3
    return v2
.end method

.method public static A04(Landroid/widget/TextView;I)I
    .locals 3

    .line 43115
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A03(Landroid/widget/TextView;)I

    move-result v2

    .line 43116
    .local p0, "extraLinesRequired":I
    const/4 v1, 0x0

    .line 43117
    .local p1, "lines":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 43118
    .local v2, "lineHeightTitle":I
    :goto_0
    if-le p1, v0, :cond_0

    if-ge v1, v2, :cond_0

    .line 43119
    add-int/lit8 v1, v1, 0x1

    .line 43120
    sub-int/2addr p1, v0

    goto :goto_0

    .line 43121
    :cond_0
    return v1
.end method

.method public static A05(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43122
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A02(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Lj;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static A06(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43123
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43124
    .local p0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43125
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43126
    return-object v1
.end method

.method public static A07(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 43127
    const/16 v0, 0x8

    new-array v2, v0, [F

    .line 43128
    .local p0, "outerRadii":[F
    int-to-float v0, p1

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 43129
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 43130
    .local p1, "r":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 43131
    .local v0, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43132
    return-object v1
.end method

.method public static A08(III)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 43133
    invoke-static {p0, p1, p0, p2}, Lcom/facebook/ads/redexgen/X/Lj;->A09(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static A09(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 43135
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 43136
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/Lj;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 43137
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/Lj;->A07(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p1, p0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43138
    return-object v0

    .line 43139
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Lj;->A0A(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static A0A(III)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    .line 43140
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

    .line 43141
    .local p1, "states":[[I
    new-array v0, v5, [I

    aput p1, v0, v1

    aput p0, v0, v3

    .line 43142
    .local p0, "colors":[I
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/Lj;->A0B([[I[II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static A0B([[I[II)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    .line 43143
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 43144
    .local p0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    array-length v5, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const-string v1, "YKf7NEmPl3xejVzEDC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WRDdubv1OiIiL9yW5q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_1

    .line 43145
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43146
    .local p2, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    aget v0, p1, v3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43147
    int-to-float v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43148
    aget-object v0, p0, v3

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43149
    .end local p2    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43150
    .end local p1    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A0C(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43151
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 43152
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 43153
    .local v1, "v":Landroid/view/View;
    instance-of v0, v3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43154
    check-cast v3, Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const-string v1, "6RJtTYzLBnUcHRvsTatmkmWKIun16hlE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BwINbhkVgYMYeGJED3O8k6L5SNrYNN6g"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 43155
    :cond_0
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 43156
    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lj;->A0C(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 43157
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43158
    .end local p0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x78t
        0x76t
        -0x7dt
        -0x78t
        0x42t
        -0x78t
        0x7at
        -0x79t
        0x7et
        0x7bt
        0x42t
        -0x7et
        0x7at
        0x79t
        0x7et
        -0x76t
        -0x7et
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aXQ8cQ350VCAT2mitcvykUGHubvGx6C9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NAK0YApfoevBcA8nU2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YHwKc8bJ3fYIczYaga21kucMEh7K8adi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qYAOAoZ496ND8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6pHjubFxbGGqNA8P9d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3r9qhhsI1oDbETggKvxV5tdwn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sRn13xQSljRP603ULBb8dNJbjS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vNgqutu69Vtz3tnibxv52jRaXo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A0G(IFLandroid/view/View;)V
    .locals 11

    .line 43159
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

    .line 43160
    .local p0, "scaleDownAnimation":Landroid/view/animation/Animation;
    div-int/lit8 v0, p0, 0x2

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43161
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43162
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 43163
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 43164
    invoke-virtual {p2, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43165
    return-void
.end method

.method public static A0H(ILandroid/view/View;)V
    .locals 13

    .line 43166
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

    .line 43167
    .local p0, "scaleDownAnimation":Landroid/view/animation/Animation;
    div-int/lit8 v0, p0, 0x3

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43168
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43169
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 43170
    .local p1, "bounceAnimation":Landroid/view/animation/ScaleAnimation;
    div-int/lit8 v0, p0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 43171
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43172
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sg;

    invoke-direct {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/Sg;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43173
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43174
    return-void
.end method

.method public static A0I(ILandroid/view/View;)V
    .locals 2

    .line 43175
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A06:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43176
    .local p0, "viewId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 43177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 43178
    return-void

    .line 43179
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43180
    return-void
.end method

.method public static A0J(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43181
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 43182
    return-void
.end method

.method public static A0K(Landroid/view/View;)V
    .locals 1

    .line 43183
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 43184
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 43185
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 43186
    :cond_0
    return-void
.end method

.method public static A0L(Landroid/view/View;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43187
    if-nez p0, :cond_0

    .line 43188
    return-void

    .line 43189
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    .line 43190
    .local p0, "parent":Landroid/view/ViewGroup;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const-string v1, "DU33ZJN3ug5gIBKNKyYbqVVAVCFz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 43191
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43192
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0M(Landroid/view/View;)V
    .locals 2

    .line 43193
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 43194
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 43195
    :goto_0
    return-void

    .line 43196
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A00()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method public static A0N(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 43198
    return-void
.end method

.method public static A0O(Landroid/view/View;I)V
    .locals 2

    .line 43199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 43200
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43201
    :goto_0
    return-void

    .line 43202
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static A0P(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43203
    if-eqz p0, :cond_0

    .line 43204
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43205
    :cond_0
    return-void
.end method

.method public static A0Q(Landroid/view/View;II)V
    .locals 1

    .line 43206
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A02(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Lj;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43207
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43208
    return-void
.end method

.method public static A0R(Landroid/view/View;III)V
    .locals 4

    .line 43209
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A05:I

    const/4 v0, 0x0

    aput v1, v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A04:I

    const/4 v0, 0x1

    aput v1, v2, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43210
    .local p0, "gd":Landroid/graphics/drawable/GradientDrawable;
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43211
    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43212
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43213
    return-void
.end method

.method public static A0S(Landroid/view/View;III)V
    .locals 1

    .line 43214
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A02(I)I

    move-result v0

    .line 43215
    invoke-static {p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Lj;->A09(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43216
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43217
    return-void
.end method

.method public static A0T(Landroid/view/View;Landroid/content/Context;)V
    .locals 4

    .line 43218
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A05:I

    const/4 v0, 0x0

    aput v1, v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A04:I

    const/4 v0, 0x1

    aput v1, v2, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43219
    .local p0, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43220
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43221
    return-void
.end method

.method public static A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 43222
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 43223
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43224
    :goto_0
    return-void

    .line 43225
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static A0V(Landroid/view/ViewGroup;)V
    .locals 2

    .line 43226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 43227
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0W(Landroid/view/ViewGroup;I)V

    .line 43228
    :cond_0
    return-void
.end method

.method public static A0W(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 43229
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 43230
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0Y(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V

    .line 43231
    :cond_0
    return-void
.end method

.method public static A0X(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2

    .line 43232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 43233
    const/16 v0, 0xc8

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Y(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V

    .line 43234
    :cond_0
    return-void
.end method

.method public static A0Y(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 43235
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 43236
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 43237
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 43238
    return-void
.end method

.method public static A0Z(Landroid/widget/TextView;ZI)V
    .locals 5

    .line 43239
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 43240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 43241
    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lj;->A01:[Ljava/lang/String;

    const-string v1, "EYVeEO4Fu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .local p0, "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 43242
    .end local p0    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 43243
    .end local p0
    :cond_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 43244
    .restart local p0    # "typeface":Landroid/graphics/Typeface;
    .restart local p0    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43245
    const/4 v1, 0x2

    int-to-float v0, p2

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43246
    return-void
.end method

.method public static A0a(Landroid/widget/Toast;Ljava/lang/String;III)V
    .locals 1
    .param p0    # Landroid/widget/Toast;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43247
    if-nez p0, :cond_0

    .line 43248
    return-void

    .line 43249
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 43250
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0C(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    .line 43251
    .local p0, "toastTextView":Landroid/widget/TextView;
    if-eqz p0, :cond_1

    .line 43252
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43253
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 43254
    :cond_1
    return-void
.end method

.method public static varargs A0b([Landroid/view/View;)V
    .locals 3

    .line 43255
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 43256
    .local v1, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 43257
    .end local v1    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43258
    :cond_0
    return-void
.end method

.method public static A0c(I)Z
    .locals 4

    .line 43259
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
