.class final Landroidx/appcompat/view/menu/d;
.super Landroidx/appcompat/view/menu/k;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/d$a;
    }
.end annotation


# static fields
.field private static final g:I


# instance fields
.field private A:Landroid/widget/PopupWindow$OnDismissListener;

.field final a:Landroid/os/Handler;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/view/menu/d$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field d:Landroid/view/View;

.field e:Landroid/view/ViewTreeObserver;

.field f:Z

.field private final h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/view/menu/g;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/view/View$OnAttachStateChangeListener;

.field private final o:Landroidx/appcompat/widget/ad;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Landroidx/appcompat/view/menu/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget v0, Landroidx/appcompat/a$g;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/d;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Landroidx/appcompat/view/menu/k;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->m:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    .line 97
    new-instance v0, Landroidx/appcompat/view/menu/d$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$1;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 119
    new-instance v0, Landroidx/appcompat/view/menu/d$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$2;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View$OnAttachStateChangeListener;

    .line 137
    new-instance v0, Landroidx/appcompat/view/menu/d$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$3;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroidx/appcompat/widget/ad;

    .line 197
    iput v1, p0, Landroidx/appcompat/view/menu/d;->p:I

    .line 198
    iput v1, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 223
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->h:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    .line 225
    iput p3, p0, Landroidx/appcompat/view/menu/d;->j:I

    .line 226
    iput p4, p0, Landroidx/appcompat/view/menu/d;->k:I

    .line 227
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/d;->l:Z

    .line 229
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/d;->x:Z

    .line 230
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->k()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->s:I

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroidx/appcompat/a$d;->abc_config_prefDialogWidth:I

    .line 234
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 233
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->i:I

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->a:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method private a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/g;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 517
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 523
    :goto_1
    return-object v0

    .line 516
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 523
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroidx/appcompat/view/menu/d$a;Landroidx/appcompat/view/menu/g;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 537
    iget-object v0, p1, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/g;)Landroid/view/MenuItem;

    move-result-object v5

    .line 538
    if-nez v5, :cond_0

    move-object v0, v3

    .line 580
    :goto_0
    return-object v0

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d$a;->a()Landroid/widget/ListView;

    move-result-object v6

    .line 547
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 548
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_1

    .line 549
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 550
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 551
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/f;

    .line 559
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->getCount()I

    move-result v7

    :goto_2
    if-ge v2, v7, :cond_6

    .line 560
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/f;->a(I)Landroidx/appcompat/view/menu/i;

    move-result-object v8

    if-ne v5, v8, :cond_2

    move v0, v2

    .line 565
    :goto_3
    if-ne v0, v4, :cond_3

    move-object v0, v3

    .line 567
    goto :goto_0

    .line 554
    :cond_1
    check-cast v0, Landroidx/appcompat/view/menu/f;

    move v1, v2

    goto :goto_1

    .line 559
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 571
    :cond_3
    add-int/2addr v0, v1

    .line 574
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 575
    if-ltz v0, :cond_4

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_4
    move-object v0, v3

    .line 577
    goto :goto_0

    .line 580
    :cond_5
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_3
.end method

.method private c(Landroidx/appcompat/view/menu/g;)V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 370
    new-instance v0, Landroidx/appcompat/view/menu/f;

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/d;->l:Z

    sget v4, Landroidx/appcompat/view/menu/d;->g:I

    invoke-direct {v0, p1, v8, v3, v4}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->e()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/d;->x:Z

    if-eqz v3, :cond_2

    .line 378
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/f;->a(Z)V

    .line 385
    :cond_0
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->h:Landroid/content/Context;

    iget v4, p0, Landroidx/appcompat/view/menu/d;->i:I

    invoke-static {v0, v6, v3, v4}, Landroidx/appcompat/view/menu/d;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v9

    .line 386
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->j()Landroidx/appcompat/widget/ae;

    move-result-object v10

    .line 387
    invoke-virtual {v10, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/widget/ListAdapter;)V

    .line 388
    invoke-virtual {v10, v9}, Landroidx/appcompat/widget/ae;->h(I)V

    .line 389
    iget v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    invoke-virtual {v10, v0}, Landroidx/appcompat/widget/ae;->f(I)V

    .line 393
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 394
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 395
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/d$a;Landroidx/appcompat/view/menu/g;)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    move-object v7, v0

    .line 401
    :goto_1
    if-eqz v5, :cond_a

    .line 403
    invoke-virtual {v10, v2}, Landroidx/appcompat/widget/ae;->c(Z)V

    .line 404
    invoke-virtual {v10, v6}, Landroidx/appcompat/widget/ae;->a(Ljava/lang/Object;)V

    .line 406
    invoke-direct {p0, v9}, Landroidx/appcompat/view/menu/d;->d(I)I

    move-result v3

    .line 407
    if-ne v3, v1, :cond_4

    move v0, v1

    .line 408
    :goto_2
    iput v3, p0, Landroidx/appcompat/view/menu/d;->s:I

    .line 412
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_5

    .line 415
    invoke-virtual {v10, v5}, Landroidx/appcompat/widget/ae;->b(Landroid/view/View;)V

    move v3, v2

    move v4, v2

    .line 454
    :goto_3
    iget v11, p0, Landroidx/appcompat/view/menu/d;->q:I

    and-int/lit8 v11, v11, 0x5

    if-ne v11, v13, :cond_8

    .line 455
    if-eqz v0, :cond_7

    .line 456
    add-int v0, v4, v9

    .line 467
    :goto_4
    invoke-virtual {v10, v0}, Landroidx/appcompat/widget/ae;->b(I)V

    .line 470
    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/ae;->b(Z)V

    .line 471
    invoke-virtual {v10, v3}, Landroidx/appcompat/widget/ae;->a(I)V

    .line 483
    :goto_5
    new-instance v0, Landroidx/appcompat/view/menu/d$a;

    iget v1, p0, Landroidx/appcompat/view/menu/d;->s:I

    invoke-direct {v0, v10, p1, v1}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/widget/ae;Landroidx/appcompat/view/menu/g;I)V

    .line 484
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v10}, Landroidx/appcompat/widget/ae;->a_()V

    .line 488
    invoke-virtual {v10}, Landroidx/appcompat/widget/ae;->g()Landroid/widget/ListView;

    move-result-object v3

    .line 489
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 492
    if-nez v7, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/d;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->n()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    sget v0, Landroidx/appcompat/a$g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v8, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 495
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 496
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 497
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->n()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v3, v0, v6, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 501
    invoke-virtual {v10}, Landroidx/appcompat/widget/ae;->a_()V

    .line 503
    :cond_1
    return-void

    .line 379
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->b(Landroidx/appcompat/view/menu/g;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/f;->a(Z)V

    goto/16 :goto_0

    :cond_3
    move-object v5, v6

    move-object v7, v6

    .line 398
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 407
    goto :goto_2

    .line 428
    :cond_5
    new-array v3, v11, [I

    .line 429
    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 431
    new-array v11, v11, [I

    .line 432
    invoke-virtual {v5, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    iget v4, p0, Landroidx/appcompat/view/menu/d;->q:I

    and-int/lit8 v4, v4, 0x7

    if-ne v4, v13, :cond_6

    .line 439
    aget v4, v3, v2

    iget-object v12, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v4, v12

    aput v4, v3, v2

    .line 440
    aget v4, v11, v2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v4, v12

    aput v4, v11, v2

    .line 445
    :cond_6
    aget v4, v11, v2

    aget v12, v3, v2

    sub-int/2addr v4, v12

    .line 446
    aget v11, v11, v1

    aget v3, v3, v1

    sub-int v3, v11, v3

    goto/16 :goto_3

    .line 458
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    goto/16 :goto_4

    .line 461
    :cond_8
    if-eqz v0, :cond_9

    .line 462
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    goto/16 :goto_4

    .line 464
    :cond_9
    sub-int v0, v4, v9

    goto/16 :goto_4

    .line 473
    :cond_a
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/d;->t:Z

    if-eqz v0, :cond_b

    .line 474
    iget v0, p0, Landroidx/appcompat/view/menu/d;->v:I

    invoke-virtual {v10, v0}, Landroidx/appcompat/widget/ae;->b(I)V

    .line 476
    :cond_b
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/d;->u:Z

    if-eqz v0, :cond_c

    .line 477
    iget v0, p0, Landroidx/appcompat/view/menu/d;->w:I

    invoke-virtual {v10, v0}, Landroidx/appcompat/widget/ae;->a(I)V

    .line 479
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->i()Landroid/graphics/Rect;

    move-result-object v0

    .line 480
    invoke-virtual {v10, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_5
.end method

.method private d(I)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d$a;->a()Landroid/widget/ListView;

    move-result-object v0

    .line 331
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 332
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 334
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 335
    iget-object v5, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 337
    iget v5, p0, Landroidx/appcompat/view/menu/d;->s:I

    if-ne v5, v2, :cond_1

    .line 338
    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 339
    iget v3, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v3, :cond_0

    move v0, v1

    .line 348
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    aget v0, v3, v1

    sub-int/2addr v0, p1

    .line 345
    if-gez v0, :cond_2

    move v0, v2

    .line 346
    goto :goto_0

    :cond_2
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method private d(Landroidx/appcompat/view/menu/g;)I
    .locals 3

    .prologue
    .line 655
    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 656
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 657
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 662
    :goto_1
    return v0

    .line 655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private j()Landroidx/appcompat/widget/ae;
    .locals 5

    .prologue
    .line 245
    new-instance v0, Landroidx/appcompat/widget/ae;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->h:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/appcompat/view/menu/d;->j:I

    iget v4, p0, Landroidx/appcompat/view/menu/d;->k:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/widget/ae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 247
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->o:Landroidx/appcompat/widget/ad;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->a(Landroidx/appcompat/widget/ad;)V

    .line 248
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ae;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ae;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->b(Landroid/view/View;)V

    .line 251
    iget v1, p0, Landroidx/appcompat/view/menu/d;->q:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->f(I)V

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->a(Z)V

    .line 253
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->i(I)V

    .line 254
    return-object v0
.end method

.method private k()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 315
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    .line 316
    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Landroidx/appcompat/view/menu/d;->p:I

    if-eq v0, p1, :cond_0

    .line 741
    iput p1, p0, Landroidx/appcompat/view/menu/d;->p:I

    .line 742
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    .line 743
    invoke-static {v0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    .line 742
    invoke-static {p1, v0}, Landroidx/core/h/c;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 745
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 750
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    .line 753
    iget v0, p0, Landroidx/appcompat/view/menu/d;->p:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    .line 754
    invoke-static {v1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    .line 753
    invoke-static {v0, v1}, Landroidx/core/h/c;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 756
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/widget/PopupWindow$OnDismissListener;

    .line 761
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/d;->c(Landroidx/appcompat/view/menu/g;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 667
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/d;->d(Landroidx/appcompat/view/menu/g;)I

    move-result v1

    .line 668
    if-gez v1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 674
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 675
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 676
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->a(Z)V

    .line 680
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 681
    iget-object v1, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 682
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/d;->f:Z

    if-eqz v1, :cond_3

    .line 684
    iget-object v1, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ae;->b(Ljava/lang/Object;)V

    .line 685
    iget-object v1, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ae;->e(I)V

    .line 687
    :cond_3
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ae;->d()V

    .line 689
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 690
    if-lez v1, :cond_7

    .line 691
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    iget v0, v0, Landroidx/appcompat/view/menu/d$a;->c:I

    iput v0, p0, Landroidx/appcompat/view/menu/d;->s:I

    .line 696
    :goto_1
    if-nez v1, :cond_8

    .line 698
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->d()V

    .line 700
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/m$a;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    .line 704
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_6

    .line 705
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 708
    :cond_5
    iput-object v4, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    .line 710
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 714
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 693
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->k()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->s:I

    goto :goto_1

    .line 715
    :cond_8
    if-eqz p2, :cond_0

    .line 719
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 720
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->a(Z)V

    goto/16 :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/m$a;

    .line 624
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 617
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d$a;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/d;->a(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V

    goto :goto_0

    .line 619
    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 629
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 630
    iget-object v3, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    if-ne p1, v3, :cond_0

    .line 632
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d$a;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    move v0, v1

    .line 645
    :goto_0
    return v0

    .line 637
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/g;)V

    .line 640
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/m$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;)Z

    :cond_2
    move v0, v1

    .line 643
    goto :goto_0

    .line 645
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 265
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/d;->c(Landroidx/appcompat/view/menu/g;)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->r:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    .line 271
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 273
    :goto_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    .line 274
    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 272
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->t:Z

    .line 773
    iput p1, p0, Landroidx/appcompat/view/menu/d;->v:I

    .line 774
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->x:Z

    .line 242
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->u:Z

    .line 779
    iput p1, p0, Landroidx/appcompat/view/menu/d;->w:I

    .line 780
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 784
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->y:Z

    .line 785
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 288
    if-lez v1, :cond_1

    .line 289
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    new-array v2, v1, [Landroidx/appcompat/view/menu/d$a;

    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/d$a;

    .line 291
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 292
    aget-object v2, v0, v1

    .line 293
    iget-object v3, v2, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ae;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v2, v2, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ae;->d()V

    .line 291
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 298
    :cond_1
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    .line 767
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d$a;->a()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 598
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    .line 600
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 601
    iget-object v5, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ae;->e()Z

    move-result v5

    if-nez v5, :cond_1

    .line 609
    :goto_1
    if-eqz v0, :cond_0

    .line 610
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->a(Z)V

    .line 612
    :cond_0
    return-void

    .line 599
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->d()V

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
