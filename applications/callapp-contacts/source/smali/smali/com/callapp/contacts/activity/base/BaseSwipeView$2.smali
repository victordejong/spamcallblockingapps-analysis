.class Lcom/callapp/contacts/activity/base/BaseSwipeView$2;
.super Lcom/callapp/contacts/widget/SwipeGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseSwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->b:Z

    .line 123
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseSwipeView$2;)Z
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->c:Z

    return v0
.end method


# virtual methods
.method public final a(F)Z
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iput-boolean v0, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->k:Z

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;->a()V

    :cond_0
    return v0
.end method

.method public final b(F)Z
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iput-boolean v0, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->k:Z

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;->b()V

    :cond_0
    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 149
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->k:Z

    .line 150
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iput-boolean v0, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->l:Z

    .line 151
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->b:Z

    .line 152
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->c:Z

    .line 154
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->isSuperSkinEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    const v1, 0x7f0a083f

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    const v2, 0x7f0a01a6

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->requestDisallowInterceptTouchEvent(Z)V

    .line 168
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->e:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->d:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 173
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v1, p1

    sub-float/2addr v1, p3

    .line 174
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float v2, v0

    cmpg-float p3, p3, v2

    if-gez p3, :cond_1

    .line 175
    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p3, p3, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_3

    if-gez p1, :cond_2

    .line 179
    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p3, p3, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object p3, p3, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setX(F)V

    .line 184
    :cond_3
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->isSuperSkinEnabled()Z

    move-result p3

    const v0, 0x7f0a083f

    const v3, 0x7f0a01a6

    if-eqz p3, :cond_5

    .line 185
    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    if-gez p1, :cond_4

    const v4, 0x7f0a083f

    goto :goto_1

    :cond_4
    const v4, 0x7f0a01a6

    :goto_1
    invoke-virtual {p3, v4}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 186
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 189
    :cond_5
    iget-boolean p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->b:Z

    if-nez p3, :cond_7

    iget-boolean p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->c:Z

    if-nez p3, :cond_7

    .line 190
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    if-le p3, v1, :cond_7

    .line 191
    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f010024

    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    .line 192
    new-instance v1, Lcom/callapp/contacts/activity/base/BaseSwipeView$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView$2$1;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView$2;)V

    invoke-virtual {p3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 206
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    const v0, 0x7f0a01a6

    :goto_2
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->b:Z

    .line 209
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->c:Z

    .line 214
    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x6

    if-ge p1, p3, :cond_8

    .line 215
    iput-boolean p4, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->b:Z

    .line 218
    :cond_8
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iput-boolean p2, p1, Lcom/callapp/contacts/activity/base/BaseSwipeView;->l:Z

    return p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
