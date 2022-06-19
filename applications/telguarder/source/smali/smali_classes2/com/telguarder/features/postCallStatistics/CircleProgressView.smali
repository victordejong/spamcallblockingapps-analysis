.class public Lcom/telguarder/features/postCallStatistics/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;,
        Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;
    }
.end annotation


# instance fields
.field private backgroundStrokeWidth:F

.field private mAngle1:F

.field private mAngle2:F

.field private mAnimationEnded:Z

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCircleColor:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleWidth:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLayoutLeftDown:Landroid/widget/LinearLayout;

.field private mLayoutLeftUp:Landroid/widget/LinearLayout;

.field private mLayoutMiddle:Landroid/widget/LinearLayout;

.field private mLayoutMiddleDown:Landroid/widget/LinearLayout;

.field private mLayoutMiddleUp:Landroid/widget/LinearLayout;

.field private mLayoutRightDown:Landroid/widget/LinearLayout;

.field private mLayoutRightUp:Landroid/widget/LinearLayout;

.field private mLeftDownSize:I

.field private mLeftUpSize:I

.field private mMaxProgress1:F

.field private mMaxProgress2:F

.field private mMaxProgressTotal:F

.field private mMiddleSize:I

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:F

.field private mRectF:Landroid/graphics/RectF;

.field private mStartAngle:F

.field private mTextViewLeftDown:Landroid/widget/TextView;

.field private mTextViewLeftUp:Landroid/widget/TextView;

.field private mTextViewMiddle:Landroid/widget/TextView;

.field private mTextViewMiddleDown:Landroid/widget/TextView;

.field private mTextViewMiddleUp:Landroid/widget/TextView;

.field private mTextViewRightDown:Landroid/widget/TextView;

.field private mTextViewRightUp:Landroid/widget/TextView;

.field private mZero:Z

.field private progressAnimationListener:Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mZero:Z

    .line 65
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAnimationEnded:Z

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/telguarder/features/postCallStatistics/CircleProgressView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAnimationEnded:Z

    return p1
.end method

.method static synthetic access$102(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mZero:Z

    return p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->update(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->progressAnimationListener:Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    return-object p0
.end method

.method private getDurationString(I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 367
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    rem-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    rem-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTextLayoutByPosition(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;)Landroid/widget/LinearLayout;
    .locals 1

    .line 178
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$3;->$SwitchMap$com$telguarder$features$postCallStatistics$CircleProgressView$TextPosition:[I

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 185
    :pswitch_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    return-object p1

    .line 184
    :pswitch_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    return-object p1

    .line 183
    :pswitch_2
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    return-object p1

    .line 182
    :pswitch_3
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    if-nez p1, :cond_3

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    return-object p1

    .line 181
    :pswitch_4
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    return-object p1

    .line 180
    :pswitch_5
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    if-nez p1, :cond_5

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    :cond_5
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    return-object p1

    .line 179
    :pswitch_6
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    if-nez p1, :cond_6

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    :cond_6
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextViewByPosition(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;)Landroid/widget/TextView;
    .locals 1

    .line 164
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$3;->$SwitchMap$com$telguarder$features$postCallStatistics$CircleProgressView$TextPosition:[I

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    return-object p1

    .line 170
    :pswitch_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    return-object p1

    .line 169
    :pswitch_2
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleUp:Landroid/widget/TextView;

    if-nez p1, :cond_2

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleUp:Landroid/widget/TextView;

    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleUp:Landroid/widget/TextView;

    return-object p1

    .line 168
    :pswitch_3
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightDown:Landroid/widget/TextView;

    if-nez p1, :cond_3

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightDown:Landroid/widget/TextView;

    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightDown:Landroid/widget/TextView;

    return-object p1

    .line 167
    :pswitch_4
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    if-nez p1, :cond_4

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    return-object p1

    .line 166
    :pswitch_5
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightUp:Landroid/widget/TextView;

    if-nez p1, :cond_5

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightUp:Landroid/widget/TextView;

    :cond_5
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightUp:Landroid/widget/TextView;

    return-object p1

    .line 165
    :pswitch_6
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    if-nez p1, :cond_6

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    :cond_6
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    .line 88
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setDefaultValues()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/telguarder/R$styleable;->CircularProgressView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 91
    :try_start_0
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    const/4 p2, 0x3

    .line 92
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    .line 93
    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->backgroundStrokeWidth:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->backgroundStrokeWidth:F

    const/4 p2, 0x2

    .line 94
    iget v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleColor:I

    .line 95
    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundColor:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 101
    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->backgroundStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCirclePaint:Landroid/graphics/Paint;

    .line 106
    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCirclePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :catchall_0
    move-exception p2

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    throw p2
.end method

.method private setDefaultValues()V
    .locals 3

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    .line 193
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    .line 194
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->backgroundStrokeWidth:F

    const/high16 v1, -0x1000000

    .line 195
    iput v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleColor:I

    const v1, -0x777778

    .line 196
    iput v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundColor:I

    .line 197
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mStartAngle:F

    return-void
.end method

.method private setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V
    .locals 1

    .line 150
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getTextViewByPosition(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;)Landroid/widget/TextView;

    move-result-object v0

    .line 151
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getTextLayoutByPosition(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p2, p4

    .line 154
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 155
    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_1

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p2, 0x0

    .line 159
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private update(F)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->updateTextViewLeftUp(F)V

    .line 436
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->updateTextViewLeftDown(F)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleUp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 438
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->updatemTextViewMiddleDown(F)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 440
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->updateTextViewMiddle(F)V

    .line 442
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method private updateTextViewLeftDown(F)V
    .locals 2

    .line 333
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    iget v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress2:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    const v0, 0x4479c000    # 999.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLeftDownSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private updateTextViewLeftUp(F)V
    .locals 2

    .line 323
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    iget v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress1:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    const v0, 0x4479c000    # 999.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLeftUpSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private updateTextViewMiddle(F)V
    .locals 2

    .line 348
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    iget v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress1:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    const v0, 0x4479c000    # 999.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMiddleSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private updatemTextViewMiddleDown(F)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getDurationString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addAnimationListener(Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->progressAnimationListener:Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    return-void
.end method

.method public getCircleColor()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleColor:I

    return v0
.end method

.method public getCircleWidth()F
    .locals 1

    .line 272
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 307
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    return v0
.end method

.method public getProgressAnimationListener()Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->progressAnimationListener:Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mStartAngle:F

    return v0
.end method

.method public isAnimationEnded()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAnimationEnded:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress1:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress2:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, -0x6

    .line 205
    :goto_0
    iget v3, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v3, v4

    iget v6, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgressTotal:F

    div-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    cmpl-float v7, v0, v1

    if-lez v7, :cond_2

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1

    mul-float v0, v5, v6

    div-float/2addr v0, v4

    .line 207
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAngle1:F

    .line 208
    :cond_1
    iget-object v8, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    iget v9, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mStartAngle:F

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAngle1:F

    int-to-float v3, v2

    sub-float v10, v0, v3

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 210
    :cond_2
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress2:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 211
    iget v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    mul-float v5, v5, v6

    div-float/2addr v5, v4

    iput v5, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAngle2:F

    .line 212
    :cond_3
    iget-object v7, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mStartAngle:F

    int-to-float v1, v2

    sub-float v8, v0, v1

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mAngle2:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v9, v0, v1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 218
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftUp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 224
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewRightUp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 230
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewLeftDown:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 235
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 240
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 241
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleUp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleUp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 246
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 247
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddleDown:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 253
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mTextViewMiddle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getDefaultSize(II)I

    move-result p2

    .line 263
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getDefaultSize(II)I

    move-result p1

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 265
    invoke-virtual {p0, p1, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setMeasuredDimension(II)V

    .line 266
    iget p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->backgroundStrokeWidth:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 1

    .line 290
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleColor:I

    .line 291
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setCirclerWidth(F)V
    .locals 1

    .line 277
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCircleWidth:F

    .line 278
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 358
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mProgress:F

    .line 359
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mZero:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->update(F)V

    .line 360
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->progressAnimationListener:Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;->onValueChanged(F)V

    :cond_1
    return-void
.end method

.method public setProgressWithAnimation(FFIZ)V
    .locals 5

    .line 372
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress1:F

    .line 373
    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress2:F

    add-float v0, p1, p2

    .line 374
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgressTotal:F

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    cmpl-float v4, p2, v3

    if-nez v4, :cond_0

    .line 379
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMaxProgress1:F

    .line 380
    iput-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mZero:Z

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 383
    iput-boolean v2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mZero:Z

    :goto_0
    new-array p1, v1, [F

    aput v0, p1, v2

    const-string p2, "progress"

    .line 386
    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    int-to-long p2, p3

    .line 387
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 388
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;

    invoke-direct {p2, p0, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;-><init>(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/telguarder/features/postCallStatistics/CircleProgressView$2;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$2;-><init>(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p4, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->startAnimation()V

    .line 415
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->progressAnimationListener:Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    if-eqz p1, :cond_4

    .line 416
    iget-boolean p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mZero:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-interface {p1, v3}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;->onValueChanged(F)V

    :cond_4
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mStartAngle:F

    return-void
.end method

.method public showTextView(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    :cond_3
    sget-object v1, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->middleUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    .line 131
    sget-object v1, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->middleDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    move-object v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    .line 132
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method public showTextView(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V
    .locals 7

    move-object v6, p0

    .line 113
    iget-object v0, v6, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    :cond_0
    iget-object v0, v6, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    move v0, p3

    .line 115
    iput v0, v6, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLeftUpSize:I

    .line 116
    sget-object v1, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->leftUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    iget v4, v6, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLeftUpSize:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    .line 117
    sget-object v1, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->rightUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    move-object v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    move/from16 v0, p9

    .line 118
    iput v0, v6, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLeftDownSize:I

    .line 119
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->leftDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    iget v1, v6, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLeftDownSize:I

    const/4 v2, 0x0

    move-object p1, p0

    move-object p2, v0

    move-object p3, p7

    move p4, p8

    move p5, v1

    move p6, v2

    invoke-direct/range {p1 .. p6}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    .line 120
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->rightDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const/4 v1, 0x0

    move-object p2, v0

    move-object/from16 p3, p10

    move/from16 p4, p11

    move/from16 p5, p12

    move p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    .line 121
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method public showTextView(Ljava/lang/String;IIZ)V
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleUp:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutMiddleDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftUp:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightUp:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutLeftDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mLayoutRightDown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :cond_5
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mMiddleSize:I

    .line 144
    sget-object v3, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->middle:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setupText(Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;Ljava/lang/String;IIZ)V

    .line 145
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
