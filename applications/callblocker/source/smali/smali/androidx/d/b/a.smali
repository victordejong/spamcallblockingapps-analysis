.class public abstract Landroidx/d/b/a;
.super Landroidx/core/h/a;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/a$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/graphics/Rect;

.field private static final l:Landroidx/d/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/d/b/b$a",
            "<",
            "Landroidx/core/h/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Landroidx/d/b/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/d/b/b$b",
            "<",
            "Landroidx/b/h",
            "<",
            "Landroidx/core/h/a/c;",
            ">;",
            "Landroidx/core/h/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:[I

.field private final h:Landroid/view/accessibility/AccessibilityManager;

.field private final i:Landroid/view/View;

.field private j:Landroidx/d/b/a$a;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/d/b/a;->c:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Landroidx/d/b/a$1;

    invoke-direct {v0}, Landroidx/d/b/a$1;-><init>()V

    sput-object v0, Landroidx/d/b/a;->l:Landroidx/d/b/b$a;

    .line 347
    new-instance v0, Landroidx/d/b/a$2;

    invoke-direct {v0}, Landroidx/d/b/a$2;-><init>()V

    sput-object v0, Landroidx/d/b/a;->m:Landroidx/d/b/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 135
    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/d/b/a;->e:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/d/b/a;->f:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/d/b/a;->g:[I

    .line 119
    iput v1, p0, Landroidx/d/b/a;->a:I

    .line 123
    iput v1, p0, Landroidx/d/b/a;->b:I

    .line 127
    iput v1, p0, Landroidx/d/b/a;->k:I

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iput-object p1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidx/d/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Landroidx/core/h/u;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-static {p1, v2}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 153
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 453
    sparse-switch p1, :sswitch_data_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :sswitch_0
    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 471
    :goto_0
    return-object p2

    .line 458
    :sswitch_1
    invoke-virtual {p2, v3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 461
    :sswitch_2
    invoke-virtual {p2, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 464
    :sswitch_3
    invoke-virtual {p2, v3, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroidx/d/b/a;->a(I)Landroidx/core/h/a/c;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p2}, Landroidx/core/h/a/c;->a(Landroid/graphics/Rect;)V

    .line 330
    return-void
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroidx/core/h/u;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 932
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return v1

    .line 937
    :cond_1
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 943
    :goto_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 944
    check-cast v0, Landroid/view/View;

    .line 945
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 948
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 952
    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .prologue
    .line 637
    packed-switch p1, :pswitch_data_0

    .line 641
    invoke-direct {p0, p1, p2}, Landroidx/d/b/a;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_0
    return-object v0

    .line 639
    :pswitch_0
    invoke-direct {p0, p2}, Landroidx/d/b/a;->f(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private b(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    .line 372
    invoke-direct {p0}, Landroidx/d/b/a;->d()Landroidx/b/h;

    move-result-object v0

    .line 374
    iget v1, p0, Landroidx/d/b/a;->b:I

    .line 375
    if-ne v1, v7, :cond_0

    const/4 v3, 0x0

    .line 379
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/h/a/c;

    move-object v3, v1

    goto :goto_0

    .line 382
    :sswitch_0
    iget-object v1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    .line 383
    invoke-static {v1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 384
    :goto_1
    sget-object v1, Landroidx/d/b/a;->m:Landroidx/d/b/b$b;

    sget-object v2, Landroidx/d/b/a;->l:Landroidx/d/b/b$a;

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/d/b/b;->a(Ljava/lang/Object;Landroidx/d/b/b$b;Landroidx/d/b/b$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/h/a/c;

    .line 416
    :goto_2
    if-nez v1, :cond_4

    move v0, v7

    .line 423
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/d/b/a;->b(I)Z

    move-result v0

    return v0

    :cond_1
    move v5, v6

    .line 383
    goto :goto_1

    .line 392
    :sswitch_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 393
    iget v1, p0, Landroidx/d/b/a;->b:I

    if-eq v1, v7, :cond_2

    .line 395
    iget v1, p0, Landroidx/d/b/a;->b:I

    invoke-direct {p0, v1, v4}, Landroidx/d/b/a;->a(ILandroid/graphics/Rect;)V

    .line 406
    :goto_4
    sget-object v1, Landroidx/d/b/a;->m:Landroidx/d/b/b$b;

    sget-object v2, Landroidx/d/b/a;->l:Landroidx/d/b/b$a;

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/d/b/b;->a(Ljava/lang/Object;Landroidx/d/b/b$b;Landroidx/d/b/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/h/a/c;

    goto :goto_2

    .line 396
    :cond_2
    if-eqz p2, :cond_3

    .line 398
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 404
    :cond_3
    iget-object v1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-static {v1, p1, v4}, Landroidx/d/b/a;->a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_4

    .line 419
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/b/h;->a(Ljava/lang/Object;)I

    move-result v1

    .line 420
    invoke-virtual {v0, v1}, Landroidx/b/h;->c(I)I

    move-result v0

    goto :goto_3

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    .prologue
    .line 677
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 678
    invoke-virtual {p0, p1}, Landroidx/d/b/a;->a(I)Landroidx/core/h/a/c;

    move-result-object v1

    .line 681
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/core/h/a/c;->q()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v1}, Landroidx/core/h/a/c;->r()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v1}, Landroidx/core/h/a/c;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 684
    invoke-virtual {v1}, Landroidx/core/h/a/c;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 685
    invoke-virtual {v1}, Landroidx/core/h/a/c;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 686
    invoke-virtual {v1}, Landroidx/core/h/a/c;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 689
    invoke-virtual {p0, p1, v0}, Landroidx/d/b/a;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 692
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    invoke-virtual {v1}, Landroidx/core/h/a/c;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/h/a/e;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 700
    iget-object v1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 702
    return-object v0
.end method

.method private c(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 908
    sparse-switch p2, :sswitch_data_0

    .line 918
    invoke-virtual {p0, p1, p2, p3}, Landroidx/d/b/a;->b(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    .line 910
    :sswitch_0
    invoke-direct {p0, p1}, Landroidx/d/b/a;->h(I)Z

    move-result v0

    goto :goto_0

    .line 912
    :sswitch_1
    invoke-direct {p0, p1}, Landroidx/d/b/a;->i(I)Z

    move-result v0

    goto :goto_0

    .line 914
    :sswitch_2
    invoke-virtual {p0, p1}, Landroidx/d/b/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 916
    :sswitch_3
    invoke-virtual {p0, p1}, Landroidx/d/b/a;->c(I)Z

    move-result v0

    goto :goto_0

    .line 908
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private static d(I)I
    .locals 1

    .prologue
    .line 309
    packed-switch p0, :pswitch_data_0

    .line 317
    :pswitch_0
    const/16 v0, 0x82

    :goto_0
    return v0

    .line 311
    :pswitch_1
    const/16 v0, 0x11

    goto :goto_0

    .line 313
    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    .line 315
    :pswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private d()Landroidx/b/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/h",
            "<",
            "Landroidx/core/h/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-virtual {p0, v1}, Landroidx/d/b/a;->a(Ljava/util/List;)V

    .line 430
    new-instance v2, Landroidx/b/h;

    invoke-direct {v2}, Landroidx/b/h;-><init>()V

    .line 431
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 432
    invoke-direct {p0, v0}, Landroidx/d/b/a;->g(I)Landroidx/core/h/a/c;

    move-result-object v3

    .line 433
    invoke-virtual {v2, v0, v3}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    return-object v2
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 612
    iget v0, p0, Landroidx/d/b/a;->k:I

    if-ne v0, p1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 616
    :cond_0
    iget v0, p0, Landroidx/d/b/a;->k:I

    .line 617
    iput p1, p0, Landroidx/d/b/a;->k:I

    .line 621
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroidx/d/b/a;->a(II)Z

    .line 622
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroidx/d/b/a;->a(II)Z

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 481
    iget v0, p0, Landroidx/d/b/a;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/d/b/a;->b:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/b/a;->b(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .prologue
    .line 653
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 654
    iget-object v1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 655
    return-object v0
.end method

.method private f()Landroidx/core/h/a/c;
    .locals 6

    .prologue
    .line 734
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/a/c;->a(Landroid/view/View;)Landroidx/core/h/a/c;

    move-result-object v2

    .line 735
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-static {v0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 738
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-virtual {p0, v3}, Landroidx/d/b/a;->a(Ljava/util/List;)V

    .line 741
    invoke-virtual {v2}, Landroidx/core/h/a/c;->c()I

    move-result v0

    .line 742
    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 743
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 747
    iget-object v5, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroidx/core/h/a/c;->b(Landroid/view/View;I)V

    .line 746
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 750
    :cond_1
    return-object v2
.end method

.method private g(I)Landroidx/core/h/a/c;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 791
    invoke-static {}, Landroidx/core/h/a/c;->b()Landroidx/core/h/a/c;

    move-result-object v3

    .line 794
    invoke-virtual {v3, v1}, Landroidx/core/h/a/c;->h(Z)V

    .line 795
    invoke-virtual {v3, v1}, Landroidx/core/h/a/c;->c(Z)V

    .line 796
    const-string/jumbo v0, "android.view.View"

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/CharSequence;)V

    .line 797
    sget-object v0, Landroidx/d/b/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->b(Landroid/graphics/Rect;)V

    .line 798
    sget-object v0, Landroidx/d/b/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->d(Landroid/graphics/Rect;)V

    .line 799
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->b(Landroid/view/View;)V

    .line 802
    invoke-virtual {p0, p1, v3}, Landroidx/d/b/a;->a(ILandroidx/core/h/a/c;)V

    .line 805
    invoke-virtual {v3}, Landroidx/core/h/a/c;->q()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroidx/core/h/a/c;->r()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    iget-object v0, p0, Landroidx/d/b/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->a(Landroid/graphics/Rect;)V

    .line 811
    iget-object v0, p0, Landroidx/d/b/a;->e:Landroid/graphics/Rect;

    sget-object v4, Landroidx/d/b/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_1
    invoke-virtual {v3}, Landroidx/core/h/a/c;->d()I

    move-result v0

    .line 817
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    .line 818
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 822
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_3
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->a(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v3, v0, p1}, Landroidx/core/h/a/c;->a(Landroid/view/View;I)V

    .line 831
    iget v0, p0, Landroidx/d/b/a;->a:I

    if-ne v0, p1, :cond_5

    .line 832
    invoke-virtual {v3, v1}, Landroidx/core/h/a/c;->f(Z)V

    .line 833
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->a(I)V

    .line 840
    :goto_0
    iget v0, p0, Landroidx/d/b/a;->b:I

    if-ne v0, p1, :cond_6

    move v0, v1

    .line 841
    :goto_1
    if-eqz v0, :cond_7

    .line 842
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/core/h/a/c;->a(I)V

    .line 846
    :cond_4
    :goto_2
    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->d(Z)V

    .line 848
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    iget-object v4, p0, Landroidx/d/b/a;->g:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 852
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->c(Landroid/graphics/Rect;)V

    .line 853
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    sget-object v4, Landroidx/d/b/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 854
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->a(Landroid/graphics/Rect;)V

    .line 857
    iget v0, v3, Landroidx/core/h/a/c;->a:I

    if-eq v0, v7, :cond_9

    .line 858
    invoke-static {}, Landroidx/core/h/a/c;->b()Landroidx/core/h/a/c;

    move-result-object v4

    .line 860
    iget v0, v3, Landroidx/core/h/a/c;->a:I

    .line 861
    :goto_3
    if-eq v0, v7, :cond_8

    .line 864
    iget-object v5, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v4, v5, v7}, Landroidx/core/h/a/c;->c(Landroid/view/View;I)V

    .line 865
    sget-object v5, Landroidx/d/b/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroidx/core/h/a/c;->b(Landroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0, v0, v4}, Landroidx/d/b/a;->a(ILandroidx/core/h/a/c;)V

    .line 868
    iget-object v0, p0, Landroidx/d/b/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroidx/core/h/a/c;->a(Landroid/graphics/Rect;)V

    .line 869
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/d/b/a;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/d/b/a;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 862
    iget v0, v4, Landroidx/core/h/a/c;->a:I

    goto :goto_3

    .line 835
    :cond_5
    invoke-virtual {v3, v2}, Landroidx/core/h/a/c;->f(Z)V

    .line 836
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->a(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 840
    goto :goto_1

    .line 843
    :cond_7
    invoke-virtual {v3}, Landroidx/core/h/a/c;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 844
    invoke-virtual {v3, v1}, Landroidx/core/h/a/c;->a(I)V

    goto :goto_2

    .line 871
    :cond_8
    invoke-virtual {v4}, Landroidx/core/h/a/c;->s()V

    .line 874
    :cond_9
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/d/b/a;->g:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroidx/d/b/a;->g:[I

    aget v5, v5, v1

    iget-object v6, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    .line 875
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    .line 874
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    :cond_a
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    iget-object v4, p0, Landroidx/d/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 879
    iget-object v0, p0, Landroidx/d/b/a;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/d/b/a;->g:[I

    aget v2, v4, v2

    iget-object v4, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroidx/d/b/a;->g:[I

    aget v4, v4, v1

    iget-object v5, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    .line 880
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 879
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/d/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 882
    if-eqz v0, :cond_b

    .line 883
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/h/a/c;->d(Landroid/graphics/Rect;)V

    .line 885
    iget-object v0, p0, Landroidx/d/b/a;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroidx/d/b/a;->a(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 886
    invoke-virtual {v3, v1}, Landroidx/core/h/a/c;->e(Z)V

    .line 891
    :cond_b
    return-object v3
.end method

.method private h(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 968
    iget-object v1, p0, Landroidx/d/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/d/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 987
    :cond_0
    :goto_0
    return v0

    .line 972
    :cond_1
    iget v1, p0, Landroidx/d/b/a;->a:I

    if-eq v1, p1, :cond_0

    .line 974
    iget v0, p0, Landroidx/d/b/a;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 975
    iget v0, p0, Landroidx/d/b/a;->a:I

    invoke-direct {p0, v0}, Landroidx/d/b/a;->i(I)Z

    .line 979
    :cond_2
    iput p1, p0, Landroidx/d/b/a;->a:I

    .line 982
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 983
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroidx/d/b/a;->a(II)Z

    .line 985
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i(I)Z
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Landroidx/d/b/a;->a:I

    if-ne v0, p1, :cond_0

    .line 999
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/d/b/a;->a:I

    .line 1000
    iget-object v0, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1001
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroidx/d/b/a;->a(II)Z

    .line 1003
    const/4 v0, 0x1

    .line 1005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(FF)I
.end method

.method a(I)Landroidx/core/h/a/c;
    .locals 1

    .prologue
    .line 719
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 720
    invoke-direct {p0}, Landroidx/d/b/a;->f()Landroidx/core/h/a/c;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/d/b/a;->g(I)Landroidx/core/h/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Landroidx/core/h/a/d;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroidx/d/b/a;->j:Landroidx/d/b/a$a;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroidx/d/b/a$a;

    invoke-direct {v0, p0}, Landroidx/d/b/a$a;-><init>(Landroidx/d/b/a;)V

    iput-object v0, p0, Landroidx/d/b/a;->j:Landroidx/d/b/a$a;

    .line 160
    :cond_0
    iget-object v0, p0, Landroidx/d/b/a;->j:Landroidx/d/b/a$a;

    return-object v0
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1116
    return-void
.end method

.method protected abstract a(ILandroidx/core/h/a/c;)V
.end method

.method protected a(IZ)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 0

    .prologue
    .line 755
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 758
    invoke-virtual {p0, p2}, Landroidx/d/b/a;->a(Landroidx/core/h/a/c;)V

    .line 759
    return-void
.end method

.method protected a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1128
    return-void
.end method

.method protected a(Landroidx/core/h/a/c;)V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(ZILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Landroidx/d/b/a;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 276
    iget v0, p0, Landroidx/d/b/a;->b:I

    invoke-virtual {p0, v0}, Landroidx/d/b/a;->c(I)Z

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0, p2, p3}, Landroidx/d/b/a;->b(ILandroid/graphics/Rect;)Z

    .line 282
    :cond_1
    return-void
.end method

.method public final a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 505
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroidx/d/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    iget-object v1, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_0

    .line 514
    invoke-direct {p0, p1, p2}, Landroidx/d/b/a;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 515
    iget-object v2, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 895
    packed-switch p1, :pswitch_data_0

    .line 899
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/b/a;->c(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    .line 897
    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroidx/d/b/a;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 216
    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 219
    if-eq v0, v2, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 221
    sparse-switch v0, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 257
    :cond_1
    :goto_0
    return v0

    .line 226
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-static {v0}, Landroidx/d/b/a;->d(I)I

    move-result v4

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v3, v1

    move v0, v1

    .line 229
    :goto_1
    if-ge v3, v5, :cond_1

    .line 230
    invoke-direct {p0, v4, v6}, Landroidx/d/b/a;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v0, v2

    goto :goto_1

    .line 240
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Landroidx/d/b/a;->e()Z

    move v0, v2

    .line 243
    goto :goto_0

    .line 248
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const/4 v0, 0x2

    invoke-direct {p0, v0, v6}, Landroidx/d/b/a;->b(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v2, v6}, Landroidx/d/b/a;->b(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    .line 182
    iget-object v2, p0, Landroidx/d/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/d/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/d/b/a;->a(FF)I

    move-result v2

    .line 190
    invoke-direct {p0, v2}, Landroidx/d/b/a;->e(I)V

    .line 191
    if-eq v2, v4, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 193
    :pswitch_2
    iget v2, p0, Landroidx/d/b/a;->k:I

    if-eq v2, v4, :cond_0

    .line 194
    invoke-direct {p0, v4}, Landroidx/d/b/a;->e(I)V

    move v1, v0

    .line 195
    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroidx/d/b/a;->a:I

    return v0
.end method

.method public final b(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1016
    iget-object v2, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/d/b/a;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return v0

    .line 1021
    :cond_1
    iget v2, p0, Landroidx/d/b/a;->b:I

    if-eq v2, p1, :cond_0

    .line 1026
    iget v0, p0, Landroidx/d/b/a;->b:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    .line 1027
    iget v0, p0, Landroidx/d/b/a;->b:I

    invoke-virtual {p0, v0}, Landroidx/d/b/a;->c(I)Z

    .line 1030
    :cond_2
    iput p1, p0, Landroidx/d/b/a;->b:I

    .line 1032
    invoke-virtual {p0, p1, v1}, Landroidx/d/b/a;->a(IZ)V

    .line 1033
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/d/b/a;->a(II)Z

    move v0, v1

    .line 1035
    goto :goto_0
.end method

.method protected abstract b(IILandroid/os/Bundle;)Z
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Landroidx/d/b/a;->b:I

    return v0
.end method

.method public final c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1046
    iget v1, p0, Landroidx/d/b/a;->b:I

    if-eq v1, p1, :cond_0

    .line 1056
    :goto_0
    return v0

    .line 1051
    :cond_0
    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/d/b/a;->b:I

    .line 1053
    invoke-virtual {p0, p1, v0}, Landroidx/d/b/a;->a(IZ)V

    .line 1054
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/d/b/a;->a(II)Z

    .line 1056
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    invoke-virtual {p0, p2}, Landroidx/d/b/a;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 664
    return-void
.end method
