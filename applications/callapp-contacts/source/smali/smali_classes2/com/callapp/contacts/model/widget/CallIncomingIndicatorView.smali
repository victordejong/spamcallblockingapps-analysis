.class public Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;,
        Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$AnimationDirection;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final UP:I


# instance fields
.field private animationDirection:I

.field private animationDurationMillis:I

.field private arrowColor:I

.field private arrowHeight:F

.field private arrowWidth:F

.field private arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

.field private callAnimation:Landroid/animation/ValueAnimator;

.field dy:F

.field private final epsilon:F

.field private extraSpacingForAnimation:F

.field private firstArrowToSecondArrowSpacing:F

.field private secondArrowToThirdArrowSpacing:F

.field private thirdToFourthArrowSpacing:F

.field private viewMinHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 42
    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->epsilon:F

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->dy:F

    .line 59
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 42
    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->epsilon:F

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->dy:F

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3dcccccd    # 0.1f

    .line 42
    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->epsilon:F

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->dy:F

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calculateAlpha(FI)F
    .locals 10

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x40c00000    # 6.0f

    const v2, -0x3f2aaaab

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    if-eqz p2, :cond_10

    const/4 v7, 0x1

    const v8, 0x3ee147ae    # 0.44f

    if-eq p2, v7, :cond_a

    const/4 v7, 0x2

    const v9, 0x3f19999a    # 0.6f

    if-eq p2, v7, :cond_0

    const/4 v7, 0x3

    if-ne p2, v7, :cond_9

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0, p1, v6, v8}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_1

    return v6

    .line 298
    :cond_1
    invoke-direct {p0, p1, v8, v9}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, 0x40c80000    # 6.25f

    mul-float p1, p1, p2

    const/high16 p2, 0x40300000    # 2.75f

    sub-float/2addr p1, p2

    return p1

    .line 300
    :cond_2
    invoke-direct {p0, p1, v9, v5}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_3

    return v3

    .line 302
    :cond_3
    invoke-direct {p0, p1, v5, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_4

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    return p1

    .line 304
    :cond_4
    invoke-direct {p0, p1, v4, v3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_5

    return v6

    .line 308
    :cond_5
    :goto_0
    invoke-direct {p0, p1, v6, v9}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_6

    return v6

    .line 310
    :cond_6
    invoke-direct {p0, p1, v9, v5}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x40d55555

    mul-float p1, p1, p2

    sub-float/2addr p1, v0

    return p1

    .line 312
    :cond_7
    invoke-direct {p0, p1, v5, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_8

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    return p1

    .line 314
    :cond_8
    invoke-direct {p0, p1, v4, v3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    return v6

    .line 318
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "asdasdf"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const p2, 0x3e6147ae    # 0.22f

    .line 282
    invoke-direct {p0, p1, v6, p2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_b

    return v6

    .line 284
    :cond_b
    invoke-direct {p0, p1, p2, v8}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_c

    const p2, 0x4091745d

    mul-float p1, p1, p2

    sub-float/2addr p1, v3

    return p1

    .line 286
    :cond_c
    invoke-direct {p0, p1, v8, v5}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_d

    return v3

    .line 288
    :cond_d
    invoke-direct {p0, p1, v5, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_e

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    return p1

    .line 290
    :cond_e
    invoke-direct {p0, p1, v4, v3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_f
    return v6

    :cond_10
    const/high16 p2, 0x3e800000    # 0.25f

    .line 270
    invoke-direct {p0, p1, v6, p2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result v7

    if-eqz v7, :cond_11

    mul-float p1, p1, v0

    return p1

    .line 272
    :cond_11
    invoke-direct {p0, p1, p2, v5}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_12

    return v3

    .line 274
    :cond_12
    invoke-direct {p0, p1, v5, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p2

    if-eqz p2, :cond_13

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    return p1

    .line 276
    :cond_13
    invoke-direct {p0, p1, v4, v3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_14
    return v6
.end method

.method private calculateDy(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    .line 258
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 260
    invoke-direct {p0, p1, v1, v2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isInRange(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->dy:F

    return p1

    :cond_1
    return v0
.end method

.method private varargs createArrows(Landroid/graphics/Bitmap;[I)[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;
    .locals 5

    .line 145
    array-length v0, p2

    new-array v0, v0, [Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    const/4 v1, 0x0

    .line 146
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isDrawUp()Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, p2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    goto :goto_1

    :cond_0
    aget v2, p2, v1

    .line 148
    :goto_1
    new-instance v3, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;-><init>(ILandroid/graphics/Bitmap;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBitmapFromResource()Landroid/graphics/Bitmap;
    .locals 6

    .line 367
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08032c

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 371
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 370
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 372
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 373
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unabled to create drawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSpacing(IZ)F
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    .line 194
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    return p1

    .line 192
    :cond_0
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->thirdToFourthArrowSpacing:F

    return p1

    .line 190
    :cond_1
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    return p1

    .line 188
    :cond_2
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->firstArrowToSecondArrowSpacing:F

    return p1

    :cond_3
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    .line 205
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    return p1

    .line 203
    :cond_4
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->firstArrowToSecondArrowSpacing:F

    return p1

    .line 201
    :cond_5
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    return p1

    .line 199
    :cond_6
    iget p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->thirdToFourthArrowSpacing:F

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/16 p1, 0x5dc

    .line 73
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDurationMillis:I

    const/high16 p1, -0x10000

    .line 74
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDirection:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 76
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    .line 77
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07017a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->firstArrowToSecondArrowSpacing:F

    .line 79
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070184

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    .line 80
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->thirdToFourthArrowSpacing:F

    .line 81
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->extraSpacingForAnimation:F

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->onInitFinished()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 87
    sget-object v0, Lcom/callapp/contacts/R$styleable;->CallIncomingIndicatorView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/16 p3, 0x5dc

    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDurationMillis:I

    const/4 p2, 0x2

    const/high16 p3, -0x10000

    .line 89
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    .line 90
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDirection:I

    const/4 p2, 0x4

    const/4 p3, -0x1

    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    const/4 p2, 0x3

    .line 92
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    const/4 p2, 0x6

    .line 94
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070184

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 93
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->firstArrowToSecondArrowSpacing:F

    .line 96
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    .line 95
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    .line 97
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->thirdToFourthArrowSpacing:F

    const/4 p2, 0x5

    .line 100
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070177

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    int-to-float p3, p3

    .line 99
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->extraSpacingForAnimation:F

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->onInitFinished()V

    return-void
.end method

.method private isDrawUp()Z
    .locals 1

    .line 181
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInRange(FFF)Z
    .locals 0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onInitFinished()V
    .locals 9

    .line 107
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getBitmapFromResource()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isDrawUp()Z

    move-result v1

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v1, :cond_0

    .line 110
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {v8, v1, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v5, v8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 115
    :cond_0
    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 119
    :goto_0
    iget v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    const/4 v1, 0x1

    .line 123
    :cond_2
    iget v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    or-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 125
    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v1, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    :cond_5
    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 129
    iget v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 130
    iget v5, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/16 v7, 0xff

    .line 131
    invoke-static {v7, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v3

    const/16 v3, 0x99

    invoke-static {v3, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x2

    const/16 v3, 0x4c

    .line 132
    invoke-static {v3, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x3

    const/16 v3, 0x33

    invoke-static {v3, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v6, v2

    .line 131
    invoke-direct {p0, v0, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->createArrows(Landroid/graphics/Bitmap;[I)[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    .line 134
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->firstArrowToSecondArrowSpacing:F

    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->secondArrowToThirdArrowSpacing:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->thirdToFourthArrowSpacing:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->extraSpacingForAnimation:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->viewMinHeight:F

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v1, v0

    .line 140
    iput v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->dy:F

    return-void
.end method


# virtual methods
.method public getAnimationDirection()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDirection:I

    return v0
.end method

.method public getAnimationDurationMillis()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDurationMillis:I

    return v0
.end method

.method public getArrowColor()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    return v0
.end method

.method public synthetic lambda$startAnimation$0$CallIncomingIndicatorView(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/4 v0, 0x0

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 237
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->reset()V

    goto :goto_2

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isDrawUp()Z

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    if-eqz v1, :cond_1

    array-length v3, v2

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_1
    aget-object v2, v2, v0

    .line 242
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->calculateAlpha(FI)F

    move-result v3

    .line 243
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->calculateDy(F)F

    move-result v4

    if-eqz v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v4, v4, v1

    .line 247
    :cond_2
    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->update(FF)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 338
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 339
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 225
    invoke-virtual {v3, p1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_0

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowWidth:F

    add-float/2addr p1, v0

    float-to-int v0, p1

    .line 161
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->viewMinHeight:F

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 167
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->isDrawUp()Z

    move-result p2

    int-to-float v1, p1

    .line 168
    iget v2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->viewMinHeight:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget v3, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->extraSpacingForAnimation:F

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    add-float/2addr v1, v3

    const/4 v3, 0x0

    .line 169
    :goto_1
    iget-object v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 170
    aget-object v4, v4, v3

    .line 171
    invoke-direct {p0, v3, p2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getSpacing(IZ)F

    move-result v5

    .line 172
    invoke-static {v4, v2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->access$002(Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;F)F

    .line 173
    invoke-virtual {v4, v1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->setY(F)V

    .line 174
    iget v4, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowHeight:F

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimationDirection(I)V
    .locals 0

    .line 347
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDirection:I

    return-void
.end method

.method public setAnimationDurationMillis(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDurationMillis:I

    return-void
.end method

.method public setArrowColor(I)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrowColor:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->getVisibility()I

    move-result v0

    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    :cond_1
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 233
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    .line 234
    new-instance v1, Lcom/callapp/contacts/model/widget/-$$Lambda$CallIncomingIndicatorView$SPkudm2V8V8yu8yMKE64gHutOCU;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/widget/-$$Lambda$CallIncomingIndicatorView$SPkudm2V8V8yu8yMKE64gHutOCU;-><init>(Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->animationDurationMillis:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopAnimation()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->arrows:[Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 330
    invoke-virtual {v3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->callAnimation:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method
