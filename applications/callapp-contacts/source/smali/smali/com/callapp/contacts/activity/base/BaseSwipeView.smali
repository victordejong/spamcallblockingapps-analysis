.class public abstract Lcom/callapp/contacts/activity/base/BaseSwipeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;
    }
.end annotation


# static fields
.field protected static b:Ljava/lang/Boolean;


# instance fields
.field protected final a:I

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field protected g:Landroid/widget/LinearLayout;

.field protected h:I

.field protected i:I

.field protected j:Landroid/view/GestureDetector;

.field protected k:Z

.field protected l:Z

.field protected m:F

.field public n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1f4

    .line 40
    iput p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->a:I

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->k:Z

    .line 51
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->l:Z

    .line 57
    new-instance p1, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseSwipeView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->o:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private synthetic c()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->b()V

    return-void
.end method

.method public static isPageSwipeEnabled()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->t:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->b:Ljava/lang/Boolean;

    .line 74
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$QECcIcwTB2D_8S_IyumURNppDkk(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d02ed

    invoke-static {v0, v1, p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0600f3

    .line 89
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->h:I

    const v0, 0x7f060088

    .line 90
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->i:I

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->setLongClickable(Z)V

    const v1, 0x7f060026

    .line 92
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->setBackgroundColor(I)V

    const v2, 0x7f0a0227

    .line 94
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    .line 95
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->getLayoutResId()I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f0a02a2

    .line 98
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    const v2, 0x7f0a056f

    .line 99
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->d:Landroid/view/View;

    const v2, 0x7f0a0763

    .line 100
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->e:Landroid/view/View;

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070374

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->m:F

    .line 102
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->d:Landroid/view/View;

    const v3, 0x7f0805c0

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->e:Landroid/view/View;

    const v3, 0x7f0805c2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v1, 0x7f0a08c9

    .line 106
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c:Landroid/view/View;

    const v2, 0x7f0a083f

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 108
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c:Landroid/view/View;

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 109
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c:Landroid/view/View;

    const v2, 0x7f0a0a86

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0805dc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->c:Landroid/view/View;

    const v2, 0x7f0a059e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0805d9

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1121
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;

    sget-object v4, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->LOW:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-direct {v3, p0, v0, v4}, Lcom/callapp/contacts/activity/base/BaseSwipeView$2;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->j:Landroid/view/GestureDetector;

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0805a5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 347
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f08051c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 355
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseSwipeView$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView$5;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 247
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->m:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    return v1

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->j:Landroid/view/GestureDetector;

    if-eqz v0, :cond_6

    .line 258
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 261
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->l:Z

    if-eqz v0, :cond_5

    .line 263
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 264
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-le v0, v3, :cond_3

    .line 265
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->k:Z

    if-nez v0, :cond_4

    if-gez p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    if-eqz p1, :cond_4

    .line 269
    invoke-interface {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;->a()V

    goto :goto_0

    .line 272
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    if-eqz p1, :cond_4

    .line 273
    invoke-interface {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;->b()V

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/base/-$$Lambda$BaseSwipeView$QECcIcwTB2D_8S_IyumURNppDkk;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/-$$Lambda$BaseSwipeView$QECcIcwTB2D_8S_IyumURNppDkk;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 283
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 1297
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->f:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float p1, p1

    aput p1, v4, v1

    const/4 p1, 0x0

    aput p1, v4, v2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 1298
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1299
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView$3;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1320
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1321
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return v2

    .line 288
    :cond_5
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->l:Z

    if-eqz v0, :cond_6

    return v2

    .line 293
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract getLayoutResId()I
.end method

.method public abstract isSwipeable()Z
.end method

.method public setOnContainerClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseSwipeView$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView$4;-><init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnSwipeListener(Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->n:Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;

    return-void
.end method
