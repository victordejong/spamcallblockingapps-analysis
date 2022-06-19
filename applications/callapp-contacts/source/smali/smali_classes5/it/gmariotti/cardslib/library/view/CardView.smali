.class public Lit/gmariotti/cardslib/library/view/CardView;
.super Lit/gmariotti/cardslib/library/view/BaseCardView;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/CardView$a;,
        Lit/gmariotti/cardslib/library/view/CardView$b;,
        Lit/gmariotti/cardslib/library/view/CardView$d;,
        Lit/gmariotti/cardslib/library/view/CardView$c;
    }
.end annotation


# instance fields
.field protected k:Lit/gmariotti/cardslib/library/a/i;

.field protected l:Lit/gmariotti/cardslib/library/a/j;

.field protected m:Lit/gmariotti/cardslib/library/a/e;

.field protected n:Landroid/view/View;

.field protected o:Landroid/view/View;

.field protected p:Landroid/view/View;

.field protected q:Landroid/view/View;

.field protected r:Landroid/view/View;

.field protected s:Landroid/animation/Animator;

.field protected t:Lit/gmariotti/cardslib/library/view/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/view/BaseCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/view/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(I)Landroid/view/View;
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-gez p1, :cond_0

    if-le p1, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 599
    :cond_1
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->o:Landroid/view/View;

    goto :goto_0

    .line 593
    :cond_2
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    goto :goto_0

    .line 596
    :cond_3
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method private k()V
    .locals 2

    .line 333
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->k:Lit/gmariotti/cardslib/library/a/i;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setRecycle(Z)V

    .line 340
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setForceReplaceInnerLayout(Z)V

    .line 342
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->k:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(Lit/gmariotti/cardslib/library/a/i;)V

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(Lit/gmariotti/cardslib/library/a/i;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    .line 363
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 367
    :try_start_0
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->setRecycle(Z)V

    .line 374
    :goto_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getInnerLayout()I

    move-result v0

    if-ltz v0, :cond_3

    .line 384
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->p:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/b;->setupInnerViewElements(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_2

    .line 376
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->p:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 377
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    :cond_2
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->o:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/b;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->p:Landroid/view/View;

    :cond_3
    :goto_2
    return-void
.end method

.method private m()V
    .locals 2

    .line 394
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->l:Lit/gmariotti/cardslib/library/a/j;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setRecycle(Z)V

    .line 398
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setForceReplaceInnerLayout(Z)V

    .line 399
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->l:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Lit/gmariotti/cardslib/library/a/j;)V

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 1

    .line 412
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->a(I)V

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 1

    .line 422
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->setupSupplementalActions()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 433
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->k:Lit/gmariotti/cardslib/library/a/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 434
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 437
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lit/gmariotti/cardslib/library/view/CardView$1;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/CardView$1;-><init>(Lit/gmariotti/cardslib/library/view/CardView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 456
    :cond_2
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->s()V

    return-void
.end method

.method private q()V
    .locals 7

    .line 467
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/d;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    new-instance v2, Lit/gmariotti/cardslib/library/view/CardView$2;

    invoke-direct {v2, p0}, Lit/gmariotti/cardslib/library/view/CardView$2;-><init>(Lit/gmariotti/cardslib/library/view/CardView;)V

    invoke-direct {v0, p0, v1, v2}, Lit/gmariotti/cardslib/library/view/listener/d;-><init>(Lit/gmariotti/cardslib/library/view/a/a;Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/view/listener/d$a;)V

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    :goto_0
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->r()V

    .line 492
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isMultiChoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 495
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    new-instance v0, Lit/gmariotti/cardslib/library/view/CardView$3;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/CardView$3;-><init>(Lit/gmariotti/cardslib/library/view/CardView;)V

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 510
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getMultipleOnClickListener()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 511
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 513
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 514
    invoke-direct {p0, v3}, Lit/gmariotti/cardslib/library/view/CardView;->b(I)Landroid/view/View;

    move-result-object v4

    .line 515
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lit/gmariotti/cardslib/library/a/b$a;

    if-eqz v4, :cond_2

    .line 518
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardView$4;

    invoke-direct {v6, p0, v5}, Lit/gmariotti/cardslib/library/view/CardView$4;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Lit/gmariotti/cardslib/library/a/b$a;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v3, :cond_2

    .line 529
    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardView;->j:Lit/gmariotti/cardslib/library/view/b/a;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lit/gmariotti/cardslib/library/a$b;->card_selector:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lit/gmariotti/cardslib/library/view/b/a;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/view/CardView;->setClickable(Z)V

    goto :goto_2

    .line 541
    :cond_4
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/view/CardView;->setClickable(Z)V

    .line 545
    :cond_5
    :goto_2
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    new-instance v0, Lit/gmariotti/cardslib/library/view/CardView$5;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/CardView$5;-><init>(Lit/gmariotti/cardslib/library/view/CardView;)V

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 555
    :cond_6
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/view/CardView;->setLongClickable(Z)V

    return-void
.end method

.method private r()V
    .locals 2

    const/4 v0, 0x2

    .line 563
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 567
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const/16 v0, 0xa

    .line 571
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    return-void
.end method

.method private s()V
    .locals 13

    .line 615
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    .line 616
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->k:Lit/gmariotti/cardslib/library/a/i;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {}, Lit/gmariotti/cardslib/library/a/k;->a()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    iget-object v5, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    .line 625
    invoke-virtual {v5}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v0, v5}, Lit/gmariotti/cardslib/library/a/k;->a(Landroid/view/View;)Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->b()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_1

    .line 629
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v0, :cond_b

    .line 636
    new-instance v12, Lit/gmariotti/cardslib/library/view/CardView$c;

    iget-object v8, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    iget-object v9, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->d()Z

    move-result v10

    const/4 v11, 0x0

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lit/gmariotti/cardslib/library/view/CardView$c;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V

    .line 642
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->c()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_8

    .line 649
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 650
    new-instance v5, Lit/gmariotti/cardslib/library/view/CardView$d;

    invoke-direct {v5, p0, v12, v3}, Lit/gmariotti/cardslib/library/view/CardView$d;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Lit/gmariotti/cardslib/library/view/CardView$c;Lit/gmariotti/cardslib/library/view/CardView$1;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 652
    :cond_2
    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 656
    :cond_3
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->e()Lit/gmariotti/cardslib/library/a/k$a;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 658
    sget-object v7, Lit/gmariotti/cardslib/library/view/CardView$6;->a:[I

    invoke-virtual {v5}, Lit/gmariotti/cardslib/library/a/k$a;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v2, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    goto :goto_2

    .line 2009
    :cond_4
    iget-object v6, p0, Lit/gmariotti/cardslib/library/view/CardView;->o:Landroid/view/View;

    goto :goto_2

    .line 666
    :cond_5
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->d()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    move-result-object v6

    goto :goto_2

    .line 663
    :cond_6
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->c()Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    move-result-object v6

    goto :goto_2

    :cond_7
    move-object v6, p0

    :goto_2
    if-eqz v6, :cond_9

    .line 673
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 674
    new-instance v5, Lit/gmariotti/cardslib/library/view/CardView$d;

    invoke-direct {v5, p0, v12, v3}, Lit/gmariotti/cardslib/library/view/CardView$d;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Lit/gmariotti/cardslib/library/view/CardView$c;Lit/gmariotti/cardslib/library/view/CardView$1;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 676
    :cond_8
    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    :cond_9
    :goto_3
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->u()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 684
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_b

    .line 686
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 687
    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 691
    :cond_a
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_b

    .line 693
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 694
    invoke-virtual {v6, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_b
    return-void
.end method

.method private t()V
    .locals 3

    .line 706
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->m:Lit/gmariotti/cardslib/library/a/e;

    if-eqz v0, :cond_4

    .line 710
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->m:Lit/gmariotti/cardslib/library/a/e;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/e;->getInnerLayout()I

    move-result v0

    if-ltz v0, :cond_3

    .line 720
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->m:Lit/gmariotti/cardslib/library/a/e;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->r:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/e;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_1

    .line 712
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->r:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 713
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 715
    :cond_2
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->m:Lit/gmariotti/cardslib/library/a/e;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/e;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->r:Landroid/view/View;

    .line 723
    :cond_3
    :goto_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 724
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 725
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private u()Z
    .locals 1

    .line 1026
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isExpanded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 274
    invoke-super {p0}, Lit/gmariotti/cardslib/library/view/BaseCardView;->a()V

    .line 276
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0, p0}, Lit/gmariotti/cardslib/library/a/b;->setCardView(Lit/gmariotti/cardslib/library/view/a/a;)V

    .line 279
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->k()V

    .line 282
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->l()V

    .line 285
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->m()V

    .line 288
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->t()V

    .line 291
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->o()V

    .line 294
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->q()V

    .line 297
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->p()V

    .line 300
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/CardView;->n()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1066
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1080
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->j:Lit/gmariotti/cardslib/library/view/b/a;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardView;->n:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lit/gmariotti/cardslib/library/view/b/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 195
    sget v0, Lit/gmariotti/cardslib/library/a$e;->card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->c:I

    .line 197
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 201
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->c:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/CardView;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->h:Z

    .line 252
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardView;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/CardView;->h:Z

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 310
    invoke-super {p0}, Lit/gmariotti/cardslib/library/view/BaseCardView;->b()V

    .line 313
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_main_layout:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->n:Landroid/view/View;

    .line 316
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_header_layout:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    .line 319
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_content_expand_layout:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    .line 322
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_main_content_layout:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->o:Landroid/view/View;

    .line 325
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_thumbnail_layout:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 210
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/BaseCardView;->drawableHotspotChanged(FF)V

    .line 211
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lit/gmariotti/cardslib/library/view/ForegroundLinearLayout;

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 7

    .line 731
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 732
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardView$b;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardView$b;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V

    .line 734
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 736
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardView$a;->a(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    return-void

    .line 738
    :cond_1
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardView$a;->b(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    :cond_2
    return-void
.end method

.method public getInternalMainCardLayout()Landroid/view/View;
    .locals 1

    .line 1055
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->n:Landroid/view/View;

    return-object v0
.end method

.method public final h()V
    .locals 7

    .line 745
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 746
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardView$b;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardView$b;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V

    .line 748
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 750
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardView$a;->b(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 7

    .line 757
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 758
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardView$b;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardView$b;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V

    .line 760
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 762
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardView$a;->a(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    :cond_1
    return-void
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lit/gmariotti/cardslib/library/view/a/a$a;
    .locals 1

    .line 956
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->t:Lit/gmariotti/cardslib/library/view/a/a$a;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 840
    invoke-super {p0, p1, p2, p3, p4}, Lit/gmariotti/cardslib/library/view/BaseCardView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCard(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    .line 229
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/view/BaseCardView;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->k:Lit/gmariotti/cardslib/library/a/i;

    .line 232
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->l:Lit/gmariotti/cardslib/library/a/j;

    .line 233
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView;->m:Lit/gmariotti/cardslib/library/a/e;

    .line 237
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 238
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->b()V

    .line 242
    :cond_1
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardView;->a()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0, p1}, Lit/gmariotti/cardslib/library/a/b;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public setOnExpandListAnimatorListener(Lit/gmariotti/cardslib/library/view/a/a$a;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView;->t:Lit/gmariotti/cardslib/library/view/a/a$a;

    return-void
.end method
