.class public Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/telguarder/helpers/ui/loadingButton/AnimatedButton;
.implements Lcom/telguarder/helpers/ui/loadingButton/CustomizableByCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;,
        Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;,
        Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;
    }
.end annotation


# instance fields
.field private doneWhileMorphing:Z

.field private layoutDone:Z

.field private mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBitmapDone:Landroid/graphics/Bitmap;

.field private mFillColorDone:I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIsMorphingInProgress:Z

.field private mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

.field private mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

.field private mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

.field private progress:I

.field private shouldStartAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$1102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->doneWhileMorphing:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->doneWhileMorphing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mFillColorDone:I

    return p0
.end method

.method static synthetic access$1500(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mBitmapDone:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private drawDoneAnimation(Landroid/graphics/Canvas;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    iget v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->progress:I

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setProgress(I)V

    .line 220
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    new-instance p1, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$400(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F

    move-result v0

    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$500(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;-><init>(Landroid/view/View;FI)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    .line 210
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 211
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    .line 212
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    .line 213
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    .line 214
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {v3, v0, v2, v1, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setBounds(IIII)V

    .line 216
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {p1, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->start()V

    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 74
    new-instance v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;)V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    const/4 v1, 0x0

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Float;)Ljava/lang/Float;

    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f070126

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    const v3, 0x10100d4

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 81
    sget-object v3, Lcom/telguarder/R$styleable;->CircularProgressButton:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 82
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;

    move-result-object p3

    .line 84
    iget-object p4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {p4, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F

    .line 85
    iget-object p4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {p4, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F

    .line 86
    iget-object p4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    const/4 v0, 0x4

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {p4, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$402(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F

    .line 87
    iget-object p4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    const/4 v0, 0x2

    const v2, 0x106000c

    invoke-static {p1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v3, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p4, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$502(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I

    .line 88
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    const/4 p4, 0x3

    invoke-virtual {v3, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Float;)Ljava/lang/Float;

    .line 89
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move-object p1, p3

    .line 92
    :goto_0
    sget-object p2, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->IDLE:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    iput-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    .line 93
    iget-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$602(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$702(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 96
    iget-object p2, p1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->morphingDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 97
    iget-object p2, p1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 98
    iget-object p1, p1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->resetProgress()V

    return-void
.end method

.method static loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;
    .locals 3

    .line 119
    new-instance v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;

    invoke-direct {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 124
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->setBothDrawables(Landroid/graphics/drawable/GradientDrawable;)V

    goto :goto_0

    .line 125
    :cond_1
    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 126
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 127
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->setBothDrawables(Landroid/graphics/drawable/GradientDrawable;)V

    goto :goto_0

    .line 130
    :cond_2
    instance-of v1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 131
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;

    move-result-object v0

    .line 133
    iput-object p0, v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 134
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_4

    .line 135
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 136
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 138
    invoke-static {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->loadGradientDrawable(Landroid/graphics/drawable/Drawable;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;

    move-result-object v0

    .line 140
    :cond_4
    :goto_0
    iget-object p0, v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$BackgroundAndMorphingDrawables;->morphingDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_5

    return-object v0

    .line 141
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error reading background... Use a shape or a color in xml!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x101009e
        0x10100a2
        -0x10100a7
    .end array-data
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->dispose()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->dispose()V

    :cond_1
    return-void
.end method

.method public doneLoadingAnimation(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->PROGRESS:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->doneWhileMorphing:Z

    .line 250
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mFillColorDone:I

    .line 251
    iput-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mBitmapDone:Landroid/graphics/Bitmap;

    return-void

    .line 254
    :cond_1
    sget-object v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->DONE:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    .line 255
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->stop()V

    .line 256
    new-instance v0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-direct {v0, p0, p1, p2}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;-><init>(Landroid/view/View;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    .line 258
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getWidth()I

    move-result p1

    .line 259
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getHeight()I

    move-result p2

    .line 261
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->setBounds(IIII)V

    .line 262
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-virtual {p1, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 263
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mRevealDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-virtual {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->start()V

    return-void
.end method

.method public isAnimating()Ljava/lang/Boolean;
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->PROGRESS:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->layoutDone:Z

    .line 196
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->shouldStartAnimation:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->startAnimation()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->PROGRESS:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    if-nez v0, :cond_1

    .line 200
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->drawProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->DONE:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 202
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->drawDoneAnimation(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetProgress()V
    .locals 1

    const/4 v0, -0x1

    .line 232
    iput v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->progress:I

    return-void
.end method

.method public revertAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->revertAnimation(Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;)V

    return-void
.end method

.method public revertAnimation(Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;)V
    .locals 11

    .line 278
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->IDLE:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->IDLE:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    .line 282
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->resetProgress()V

    .line 283
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->stopAnimation()V

    .line 286
    :cond_1
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setClickable(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getWidth()I

    move-result v1

    .line 291
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getHeight()I

    move-result v2

    .line 292
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$900(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 293
    iget-object v4, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v4}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$1000(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)I

    move-result v4

    const/4 v5, 0x0

    .line 295
    iget-object v6, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    new-array v5, v7, [F

    .line 296
    iget-object v9, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    .line 298
    invoke-static {v9}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$300(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F

    move-result v9

    aput v9, v5, v0

    iget-object v9, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    .line 299
    invoke-static {v9}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F

    move-result v9

    aput v9, v5, v8

    const-string v9, "cornerRadius"

    .line 296
    invoke-static {v6, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :cond_3
    new-array v6, v7, [I

    aput v1, v6, v0

    aput v4, v6, v8

    .line 301
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 302
    new-instance v4, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;

    invoke-direct {v4, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v7, [I

    aput v2, v4, v0

    aput v3, v4, v8

    .line 311
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 312
    new-instance v3, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$2;

    invoke-direct {v3, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$2;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 321
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0x12c

    .line 322
    invoke-virtual {v3, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 323
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v5, v4, v0

    aput-object v1, v4, v8

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v1, v4, v0

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    iput-boolean v8, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    .line 341
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setDoneColor(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$802(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I

    return-void
.end method

.method public setFinalCornerRadius(F)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F

    return-void
.end method

.method public setInitialCornerRadius(F)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F

    return-void
.end method

.method public setInitialHeight(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$902(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingProgress(F)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Float;)Ljava/lang/Float;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/16 v0, 0x64

    .line 226
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 227
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->progress:I

    return-void
.end method

.method public setSpinningBarColor(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$502(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I

    .line 151
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setLoadingBarColor(I)V

    :cond_0
    return-void
.end method

.method public setSpinningBarWidth(F)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$402(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F

    return-void
.end method

.method public startAnimation()V
    .locals 9

    .line 357
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->IDLE:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->layoutDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 359
    iput-boolean v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->shouldStartAnimation:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->shouldStartAnimation:Z

    .line 363
    iget-boolean v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$1002(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I

    .line 367
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$902(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 369
    :goto_0
    sget-object v2, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->PROGRESS:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    iput-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    .line 370
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$602(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 372
    invoke-virtual {p0, v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setClickable(Z)V

    .line 374
    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$900(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 376
    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v6}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F

    move-result v6

    aput v6, v5, v0

    iget-object v6, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v6}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$300(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F

    move-result v6

    aput v6, v5, v1

    const-string v6, "cornerRadius"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v4, [I

    .line 377
    iget-object v6, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v6}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$1000(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)I

    move-result v6

    aput v6, v5, v0

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 378
    new-instance v6, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$4;

    invoke-direct {v6, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$4;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v4, [I

    .line 387
    iget-object v7, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mParams:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    invoke-static {v7}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$900(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v0

    aput v2, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 388
    new-instance v6, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$5;

    invoke-direct {v6, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$5;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 397
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x12c

    .line 398
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 399
    iget-object v6, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v0

    aput-object v5, v7, v1

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 400
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    iput-boolean v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    .line 417
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    sget-object v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->PROGRESS:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mIsMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 238
    sget-object v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;->STOPED:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    iput-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mState:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$State;

    .line 239
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->mAnimatedDrawable:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->stop()V

    :cond_0
    return-void
.end method
