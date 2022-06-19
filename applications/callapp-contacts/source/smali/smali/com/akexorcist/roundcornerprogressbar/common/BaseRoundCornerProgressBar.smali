.class public abstract Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;,
        Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;
    }
.end annotation


# static fields
.field protected static final DEFAULT_BACKGROUND_PADDING:I = 0x0

.field protected static final DEFAULT_MAX_PROGRESS:I = 0x64

.field protected static final DEFAULT_PROGRESS:I = 0x0

.field protected static final DEFAULT_PROGRESS_RADIUS:I = 0x1e

.field protected static final DEFAULT_SECONDARY_PROGRESS:I


# instance fields
.field protected backgroundColor:I

.field protected isReverse:Z

.field protected layoutBackground:Landroid/widget/LinearLayout;

.field protected layoutProgress:Landroid/widget/LinearLayout;

.field protected layoutSecondaryProgress:Landroid/widget/LinearLayout;

.field protected max:F

.field protected padding:I

.field protected progress:F

.field protected progressChangedListener:Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;

.field private progressColor:I

.field protected progressColors:[I

.field protected progressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field protected radius:I

.field protected secondaryProgress:F

.field protected secondaryProgressColor:I

.field protected secondaryProgressColors:[I

.field protected secondaryProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field protected totalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method private drawBackgroundProgress()V
    .locals 5

    .line 210
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 211
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v4, 0x1

    aput v1, v2, v4

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 212
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 213
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private drawPadding()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutBackground:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private drawPrimaryProgress()V
    .locals 11

    .line 258
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 259
    iget-object v3, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutProgress:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    iget v6, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->totalWidth:I

    int-to-float v7, v0

    iget v9, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    iget-boolean v10, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V

    return-void
.end method

.method private drawProgressReverse()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutProgress:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    invoke-direct {p0, v0, v1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setupProgressReversing(Landroid/widget/LinearLayout;Z)V

    .line 269
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutSecondaryProgress:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    invoke-direct {p0, v0, v1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setupProgressReversing(Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method private drawSecondaryProgress()V
    .locals 11

    .line 263
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 264
    iget-object v3, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutSecondaryProgress:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    iget v6, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->totalWidth:I

    int-to-float v7, v0

    iget v9, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    iget-boolean v10, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V

    return-void
.end method

.method private removeLayoutParamsRule(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    const/16 v2, 0xb

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 297
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x15

    .line 298
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x14

    .line 300
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 302
    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 303
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method private setupProgressReversing(Landroid/widget/LinearLayout;Z)V
    .locals 2

    .line 274
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    invoke-direct {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->removeLayoutParamsRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    const/16 v1, 0x11

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    .line 277
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    const/16 p2, 0x15

    .line 279
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x9

    .line 282
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    const/16 p2, 0x14

    .line 284
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressDrawable()V
    .locals 2

    .line 235
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 238
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$a;->round_corner_progress_bar_progress_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private updateSecondaryProgressDrawable()V
    .locals 2

    .line 247
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 250
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$a;->round_corner_progress_bar_secondary_progress_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 253
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method protected createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 218
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method protected createGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 226
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 228
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-object v0
.end method

.method protected dp2px(F)F
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 310
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected drawAll()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawBackgroundProgress()V

    .line 201
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPadding()V

    .line 202
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawProgressReverse()V

    .line 203
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    .line 204
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    .line 205
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->onViewDraw()V

    return-void
.end method

.method protected abstract drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V
.end method

.method public getLayoutWidth()F
    .locals 1

    .line 366
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->totalWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getMax()F
    .locals 1

    .line 351
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 370
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    return v0
.end method

.method public getProgressBackgroundColor()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->backgroundColor:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    return v0
.end method

.method public getProgressColors()[I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    return v0
.end method

.method public getSecondaryProgress()F
    .locals 1

    .line 397
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    return v0
.end method

.method public getSecondaryProgressColor()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    return v0
.end method

.method public getSecondaryProgressColors()[I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    return-object v0
.end method

.method public getSecondaryProgressWidth()F
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutSecondaryProgress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initLayout()I
.end method

.method protected abstract initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method protected abstract initView()V
.end method

.method public invalidate()V
    .locals 0

    .line 477
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 478
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawAll()V

    return-void
.end method

.method public isReverse()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 505
    instance-of v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;

    if-nez v0, :cond_0

    .line 506
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 510
    :cond_0
    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;

    .line 511
    invoke-virtual {p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 513
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->max:F

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    .line 514
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->progress:F

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    .line 515
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->secondaryProgress:F

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    .line 517
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->radius:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    .line 518
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->padding:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    .line 520
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorBackground:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->backgroundColor:I

    .line 521
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorProgress:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    .line 522
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorSecondaryProgress:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    .line 523
    iget-object v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorProgressArray:[I

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    .line 524
    iget-object v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorSecondaryProgressArray:[I

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    .line 526
    iget-boolean p1, p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->isReverse:Z

    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    .line 528
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateProgressDrawable()V

    .line 529
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateSecondaryProgressDrawable()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 483
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 487
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->max:F

    .line 488
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->progress:F

    .line 489
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->secondaryProgress:F

    .line 491
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->radius:I

    .line 492
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->padding:I

    .line 494
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->backgroundColor:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorBackground:I

    .line 495
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorProgress:I

    .line 496
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorSecondaryProgress:I

    .line 497
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    iput-object v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorProgressArray:[I

    .line 498
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    iput-object v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->colorSecondaryProgressArray:[I

    .line 499
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    iput-boolean v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$SavedState;->isReverse:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 180
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->totalWidth:I

    .line 181
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawBackgroundProgress()V

    .line 182
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPadding()V

    .line 183
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawProgressReverse()V

    .line 188
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$1;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$1;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;)V

    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 195
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->onViewDraw()V

    return-void
.end method

.method protected abstract onViewDraw()V
.end method

.method public setMax(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 356
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    .line 358
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 359
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    .line 362
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressChangedListener:Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 343
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPadding()V

    .line 346
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    .line 347
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 379
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    goto :goto_0

    .line 381
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    .line 383
    :goto_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    .line 384
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressChangedListener:Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;

    if-eqz p1, :cond_1

    .line 385
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    invoke-interface {p1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;->a(F)V

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 374
    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setProgress(F)V

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0

    .line 421
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->backgroundColor:I

    .line 422
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawBackgroundProgress()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    const/4 p1, 0x0

    .line 431
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    .line 432
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateProgressDrawable()V

    .line 433
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    return-void
.end method

.method public setProgressColors([I)V
    .locals 1

    const/4 v0, -0x1

    .line 442
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    .line 443
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    .line 444
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateProgressDrawable()V

    .line 445
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 330
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawBackgroundProgress()V

    .line 333
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    .line 334
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    .line 319
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawProgressReverse()V

    .line 320
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawPrimaryProgress()V

    .line 321
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 406
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    goto :goto_0

    .line 408
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    .line 410
    :goto_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    .line 411
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressChangedListener:Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;

    if-eqz p1, :cond_1

    .line 412
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    invoke-interface {p1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;->a(F)V

    :cond_1
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 401
    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setSecondaryProgress(F)V

    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 0

    .line 453
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    const/4 p1, 0x0

    .line 454
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    .line 455
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateSecondaryProgressDrawable()V

    .line 456
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method public setSecondaryProgressColors([I)V
    .locals 1

    const/4 v0, -0x1

    .line 465
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    .line 466
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    .line 467
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateSecondaryProgressDrawable()V

    .line 468
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->drawSecondaryProgress()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setupStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->removeAllViews()V

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->initLayout()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 128
    sget p1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_background:I

    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutBackground:Landroid/widget/LinearLayout;

    .line 129
    sget p1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutProgress:Landroid/widget/LinearLayout;

    .line 130
    sget p1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_secondary_progress:I

    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->layoutSecondaryProgress:Landroid/widget/LinearLayout;

    .line 132
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->initView()V

    return-void
.end method

.method public setupStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 137
    sget-object v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcRadius:I

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->dp2px(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->radius:I

    .line 140
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcBackgroundPadding:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->dp2px(F)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->padding:I

    .line 142
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcReverse:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->isReverse:Z

    .line 144
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcMax:I

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->max:F

    .line 145
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcProgress:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progress:F

    .line 146
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcSecondaryProgress:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgress:F

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/akexorcist/roundcornerprogressbar/a$a;->round_corner_progress_bar_background_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 149
    sget v2, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcBackgroundColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->backgroundColor:I

    .line 151
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcProgressColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColor:I

    .line 152
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcProgressColors:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    goto :goto_0

    .line 156
    :cond_0
    iput-object v4, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->progressColors:[I

    .line 159
    :goto_0
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcSecondaryProgressColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColor:I

    .line 160
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$d;->BaseRoundCornerProgressBar_rcSecondaryProgressColors:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    goto :goto_1

    .line 164
    :cond_1
    iput-object v4, p0, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->secondaryProgressColors:[I

    .line 166
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateProgressDrawable()V

    .line 169
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->updateSecondaryProgressDrawable()V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
