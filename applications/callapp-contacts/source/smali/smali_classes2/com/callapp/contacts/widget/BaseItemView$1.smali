.class Lcom/callapp/contacts/widget/BaseItemView$1;
.super Lcom/callapp/contacts/widget/SwipeGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/BaseItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/BaseItemView;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/BaseItemView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->b:Z

    .line 163
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/BaseItemView$1;)Z
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->c:Z

    return v0
.end method


# virtual methods
.method protected final a(F)Z
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BaseItemView;->isSwipeable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    iput-boolean v0, p1, Lcom/callapp/contacts/widget/BaseItemView;->f:Z

    :cond_0
    return v0
.end method

.method protected final b(F)Z
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BaseItemView;->isSwipeable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    iput-boolean v0, p1, Lcom/callapp/contacts/widget/BaseItemView;->f:Z

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
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/callapp/contacts/widget/BaseItemView;->f:Z

    .line 189
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    iput-boolean v0, p1, Lcom/callapp/contacts/widget/BaseItemView;->g:Z

    .line 190
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->b:Z

    .line 191
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->c:Z

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 197
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/BaseItemView;->isSwipeable()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/BaseItemView;->requestDisallowInterceptTouchEvent(Z)V

    .line 204
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    const p4, 0x7f0a0193

    invoke-virtual {p1, p4}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->a(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->b(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->c(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 212
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v1, p1

    sub-float/2addr v1, p3

    .line 213
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float v2, v0

    cmpg-float p3, p3, v2

    if-gez p3, :cond_1

    .line 214
    iget-object p3, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p3}, Lcom/callapp/contacts/widget/BaseItemView;->c(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_3

    if-gez p1, :cond_2

    .line 217
    iget-object p3, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p3}, Lcom/callapp/contacts/widget/BaseItemView;->c(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;

    move-result-object p3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object p3, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p3}, Lcom/callapp/contacts/widget/BaseItemView;->c(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 222
    :cond_3
    :goto_0
    iget-boolean p3, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->b:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->c:Z

    if-nez p3, :cond_5

    .line 223
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    if-le p3, v0, :cond_5

    .line 224
    iget-object p3, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-virtual {p3}, Lcom/callapp/contacts/widget/BaseItemView;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f010024

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    .line 225
    new-instance v0, Lcom/callapp/contacts/widget/BaseItemView$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/BaseItemView$1$1;-><init>(Lcom/callapp/contacts/widget/BaseItemView$1;)V

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    if-gez p1, :cond_4

    const v1, 0x7f0a083f

    goto :goto_1

    :cond_4
    const v1, 0x7f0a01a6

    :goto_1
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iput-boolean p2, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->b:Z

    .line 242
    iput-boolean p2, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->c:Z

    .line 247
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x6

    if-ge p1, p3, :cond_6

    .line 248
    iput-boolean p4, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->b:Z

    .line 251
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1;->a:Lcom/callapp/contacts/widget/BaseItemView;

    iput-boolean p2, p1, Lcom/callapp/contacts/widget/BaseItemView;->g:Z

    return p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
