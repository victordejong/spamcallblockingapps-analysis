.class public Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private itemView:Landroid/view/View;

.field private mAnimationTime:J

.field private mCallbacks:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mListObject:Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

.field private mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I

.field private swipeDistanceDivisor:I


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/prototypes/LinearListView;Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mViewWidth:I

    const/4 v0, 0x2

    .line 87
    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->swipeDistanceDivisor:I

    .line 90
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSlop:I

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mMinFlingVelocity:I

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mMaxFlingVelocity:I

    .line 94
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mAnimationTime:J

    .line 97
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    .line 98
    iput-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mCallbacks:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

    .line 99
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lit/gmariotti/cardslib/library/a$d;->list_card_swipe_distance_divisor:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->swipeDistanceDivisor:I

    return-void
.end method

.method static synthetic access$000(Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;Landroid/view/View;IZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->finalizeDismiss(Landroid/view/View;IZ)V

    return-void
.end method

.method private dismiss(Landroid/view/View;IZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mCallbacks:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-interface {p1, v0, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;->onDismiss(Lit/gmariotti/cardslib/library/prototypes/LinearListView;IZ)V

    return-void

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mViewWidth:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    neg-int v1, v1

    :goto_0
    int-to-float v1, v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mAnimationTime:J

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;-><init>(Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;Landroid/view/View;IZ)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private finalizeDismiss(Landroid/view/View;IZ)V
    .locals 1

    .line 286
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mCallbacks:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-interface {p1, v0, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;->onDismiss(Lit/gmariotti/cardslib/library/prototypes/LinearListView;IZ)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 106
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mViewWidth:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getWidth()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mViewWidth:I

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_11

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v0, v3, :cond_6

    const/4 v7, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v7, :cond_1

    goto/16 :goto_7

    .line 238
    :cond_1
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_10

    .line 242
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 244
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 245
    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 246
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mAnimationTime:J

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 250
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 251
    iput-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 252
    iput v6, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownX:F

    .line 253
    iput v6, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownY:F

    .line 254
    iput-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    .line 255
    iput v5, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownPosition:I

    .line 256
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    goto/16 :goto_7

    .line 157
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mPaused:Z

    if-nez v0, :cond_10

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownX:F

    sub-float/2addr p1, v0

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownY:F

    sub-float/2addr v0, v1

    .line 164
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 165
    iput-boolean v3, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    cmpl-float v0, p1, v6

    if-lez v0, :cond_4

    .line 166
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSlop:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSlop:I

    neg-int v0, v0

    :goto_0
    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwipingSlop:I

    .line 167
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 168
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v0, v3}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 171
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v7

    .line 173
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 175
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 176
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 179
    :cond_5
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    if-eqz p2, :cond_10

    .line 180
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwipingSlop:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    return v3

    .line 191
    :cond_6
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownX:F

    sub-float/2addr v0, v1

    .line 196
    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 197
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {p2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 198
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 199
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 200
    iget-object v7, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 203
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mViewWidth:I

    iget v10, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->swipeDistanceDivisor:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    cmpl-float p2, v0, v6

    if-lez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    move v0, p2

    const/4 p2, 0x1

    goto :goto_5

    .line 206
    :cond_8
    iget v8, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mMinFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v8, v1

    if-gtz v8, :cond_c

    iget v8, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mMaxFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_c

    cmpg-float v1, v7, v1

    if-gez v1, :cond_c

    iget-boolean v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    if-eqz v1, :cond_c

    cmpg-float p2, p2, v6

    if-gez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_2
    cmpg-float v0, v0, v6

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-ne p2, v0, :cond_b

    const/4 p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    .line 210
    :goto_4
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    :cond_d
    const/4 v0, 0x0

    :goto_5
    if-eqz p2, :cond_e

    .line 212
    iget p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownPosition:I

    if-eq p2, v5, :cond_e

    .line 215
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->dismiss(Landroid/view/View;IZ)V

    goto :goto_6

    .line 219
    :cond_e
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mAnimationTime:J

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 222
    :goto_6
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 223
    iput-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 224
    iput v6, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownX:F

    .line 225
    iput v6, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownY:F

    .line 226
    iput-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    .line 227
    iput v5, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownPosition:I

    .line 228
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    if-eqz p1, :cond_f

    .line 230
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    return v3

    .line 233
    :cond_f
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    :cond_10
    :goto_7
    return v4

    .line 113
    :cond_11
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mPaused:Z

    if-eqz v0, :cond_12

    return v4

    .line 117
    :cond_12
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mSwiping:Z

    if-eqz v0, :cond_13

    return v3

    .line 122
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 123
    iget-object v5, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v5}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildCount()I

    move-result v5

    new-array v1, v1, [I

    .line 127
    iget-object v6, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v6, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getLocationOnScreen([I)V

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    aget v7, v1, v4

    sub-int/2addr v6, v7

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    aget v1, v1, v3

    sub-int/2addr v7, v1

    const/4 v1, 0x0

    :goto_8
    add-int/lit8 v3, v5, 0x0

    if-ge v1, v3, :cond_15

    .line 132
    iget-object v3, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v3, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 134
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 135
    iput-object v3, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_9

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 140
    :cond_15
    :goto_9
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownX:F

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownY:F

    .line 143
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownPosition:I

    .line 144
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getAdapter()Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    move-result-object v0

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownPosition:I

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    .line 145
    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mCallbacks:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

    iget v3, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownPosition:I

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v5

    invoke-interface {v1, v3, v5, v0}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;->canDismiss(ILit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 146
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 147
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_a

    .line 149
    :cond_16
    iput-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->mDownView:Landroid/view/View;

    .line 152
    :cond_17
    :goto_a
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method
