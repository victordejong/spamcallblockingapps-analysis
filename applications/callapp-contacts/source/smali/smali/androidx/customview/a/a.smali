.class public abstract Landroidx/customview/a/a;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/a/a$a;
    }
.end annotation


# static fields
.field private static final e:Landroid/graphics/Rect;

.field private static final m:Landroidx/customview/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/a/b$a<",
            "Landroidx/core/view/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Landroidx/customview/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/a/b$b<",
            "Landroidx/b/h<",
            "Landroidx/core/view/a/c;",
            ">;",
            "Landroidx/core/view/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:[I

.field private final j:Landroid/view/accessibility/AccessibilityManager;

.field private final k:Landroid/view/View;

.field private l:Landroidx/customview/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/customview/a/a;->e:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Landroidx/customview/a/a$1;

    invoke-direct {v0}, Landroidx/customview/a/a$1;-><init>()V

    sput-object v0, Landroidx/customview/a/a;->m:Landroidx/customview/a/b$a;

    .line 347
    new-instance v0, Landroidx/customview/a/a$2;

    invoke-direct {v0}, Landroidx/customview/a/a$2;-><init>()V

    sput-object v0, Landroidx/customview/a/a;->n:Landroidx/customview/a/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/a/a;->g:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/a/a;->h:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    iput-object v0, p0, Landroidx/customview/a/a;->i:[I

    const/high16 v0, -0x80000000

    .line 119
    iput v0, p0, Landroidx/customview/a/a;->b:I

    .line 123
    iput v0, p0, Landroidx/customview/a/a;->c:I

    .line 127
    iput v0, p0, Landroidx/customview/a/a;->d:I

    if-eqz p1, :cond_1

    .line 140
    iput-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Landroidx/core/view/v;->e(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {p1, v0}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_1

    const/16 p0, 0x82

    if-ne p1, p0, :cond_0

    .line 464
    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 467
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_1
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object p2
.end method

.method private a()Landroidx/b/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/h<",
            "Landroidx/core/view/a/c;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-virtual {p0, v0}, Landroidx/customview/a/a;->a(Ljava/util/List;)V

    .line 430
    new-instance v1, Landroidx/b/h;

    invoke-direct {v1}, Landroidx/b/h;-><init>()V

    const/4 v2, 0x0

    .line 431
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 432
    invoke-direct {p0, v2}, Landroidx/customview/a/a;->g(I)Landroidx/core/view/a/c;

    move-result-object v3

    .line 433
    invoke-virtual {v1, v2, v3}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->c(I)Landroidx/core/view/a/c;

    move-result-object p1

    .line 329
    invoke-virtual {p1, p2}, Landroidx/core/view/a/c;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 932
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 937
    :cond_0
    iget-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 942
    :cond_1
    iget-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 943
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 944
    check-cast p1, Landroid/view/View;

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 948
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0
.end method

.method private b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 641
    invoke-direct {p0, p1, p2}, Landroidx/customview/a/a;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 639
    :cond_0
    invoke-direct {p0, p2}, Landroidx/customview/a/a;->f(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private b()Landroidx/core/view/a/c;
    .locals 6

    .line 734
    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/a/c;->a(Landroid/view/View;)Landroidx/core/view/a/c;

    move-result-object v0

    .line 735
    iget-object v1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-virtual {p0, v1}, Landroidx/customview/a/a;->a(Ljava/util/List;)V

    .line 8814
    iget-object v2, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 742
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 746
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 747
    iget-object v4, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroidx/core/view/a/c;->b(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private b(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 372
    invoke-direct {p0}, Landroidx/customview/a/a;->a()Landroidx/b/h;

    move-result-object v6

    .line 374
    iget v0, p0, Landroidx/customview/a/a;->c:I

    const/4 v1, 0x0

    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 4109
    :cond_0
    invoke-virtual {v6, v0, v1}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    check-cast v0, Landroidx/core/view/a/c;

    move-object v3, v0

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_2
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 393
    iget v0, p0, Landroidx/customview/a/a;->c:I

    if-eq v0, v7, :cond_3

    .line 395
    invoke-direct {p0, v0, v4}, Landroidx/customview/a/a;->a(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 398
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 404
    :cond_4
    iget-object p2, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {p2, p1, v4}, Landroidx/customview/a/a;->a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 406
    :goto_2
    sget-object v1, Landroidx/customview/a/a;->n:Landroidx/customview/a/b$b;

    sget-object v2, Landroidx/customview/a/a;->m:Landroidx/customview/a/b$a;

    move-object v0, v6

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/customview/a/b;->a(Ljava/lang/Object;Landroidx/customview/a/b$b;Landroidx/customview/a/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/a/c;

    goto :goto_4

    .line 382
    :cond_5
    iget-object p2, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    .line 383
    invoke-static {p2}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result p2

    if-ne p2, v0, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    const/4 v5, 0x0

    .line 384
    :goto_3
    sget-object v1, Landroidx/customview/a/a;->n:Landroidx/customview/a/b$b;

    sget-object v2, Landroidx/customview/a/a;->m:Landroidx/customview/a/b$a;

    move-object v0, v6

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroidx/customview/a/b;->a(Ljava/lang/Object;Landroidx/customview/a/b$b;Landroidx/customview/a/b$a;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/a/c;

    :goto_4
    if-nez p1, :cond_7

    goto :goto_5

    .line 419
    :cond_7
    invoke-virtual {v6, p1}, Landroidx/b/h;->a(Ljava/lang/Object;)I

    move-result p1

    .line 420
    invoke-virtual {v6, p1}, Landroidx/b/h;->a(I)I

    move-result v7

    .line 423
    :goto_5
    invoke-virtual {p0, v7}, Landroidx/customview/a/a;->d(I)Z

    move-result p1

    return p1
.end method

.method private c(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 677
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 678
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->c(I)Landroidx/core/view/a/c;

    move-result-object v0

    .line 681
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/core/view/a/c;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4739
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 682
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5498
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    .line 683
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 6474
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    .line 684
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 7450
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    .line 685
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 8244
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    .line 686
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 692
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8579
    :cond_1
    :goto_0
    iget-object v0, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 698
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {p2, v0, p1}, Landroidx/core/view/a/e;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 700
    iget-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private f(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 653
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 654
    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private g(I)Landroidx/core/view/a/c;
    .locals 7

    .line 791
    invoke-static {}, Landroidx/core/view/a/c;->a()Landroidx/core/view/a/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 794
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->i(Z)V

    .line 795
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->b(Z)V

    const-string v2, "android.view.View"

    .line 796
    invoke-virtual {v0, v2}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    .line 797
    sget-object v2, Landroidx/customview/a/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/core/view/a/c;->b(Landroid/graphics/Rect;)V

    .line 798
    invoke-virtual {v0, v2}, Landroidx/core/view/a/c;->d(Landroid/graphics/Rect;)V

    .line 799
    iget-object v3, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/core/view/a/c;->d(Landroid/view/View;)V

    .line 802
    invoke-virtual {p0, p1, v0}, Landroidx/customview/a/a;->a(ILandroidx/core/view/a/c;)V

    .line 805
    invoke-virtual {v0}, Landroidx/core/view/a/c;->d()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    .line 9739
    iget-object v3, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/customview/a/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroidx/core/view/a/c;->a(Landroid/graphics/Rect;)V

    .line 811
    iget-object v3, p0, Landroidx/customview/a/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 9919
    iget-object v3, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v3

    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_b

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_a

    .line 827
    iget-object v3, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/view/a/c;->a(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v3, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0, v3, p1}, Landroidx/core/view/a/c;->a(Landroid/view/View;I)V

    .line 831
    iget v3, p0, Landroidx/customview/a/a;->b:I

    const/4 v5, 0x0

    if-ne v3, p1, :cond_2

    .line 832
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->e(Z)V

    .line 833
    invoke-virtual {v0, v4}, Landroidx/core/view/a/c;->a(I)V

    goto :goto_1

    .line 835
    :cond_2
    invoke-virtual {v0, v5}, Landroidx/core/view/a/c;->e(Z)V

    const/16 v3, 0x40

    .line 836
    invoke-virtual {v0, v3}, Landroidx/core/view/a/c;->a(I)V

    .line 840
    :goto_1
    iget v3, p0, Landroidx/customview/a/a;->c:I

    if-ne v3, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    const/4 v3, 0x2

    .line 842
    invoke-virtual {v0, v3}, Landroidx/core/view/a/c;->a(I)V

    goto :goto_3

    .line 10268
    :cond_4
    iget-object v3, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 844
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->a(I)V

    .line 846
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroidx/core/view/a/c;->c(Z)V

    .line 848
    iget-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    iget-object v3, p0, Landroidx/customview/a/a;->i:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 852
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/a/c;->c(Landroid/graphics/Rect;)V

    .line 853
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 854
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/a/c;->a(Landroid/graphics/Rect;)V

    .line 857
    iget p1, v0, Landroidx/core/view/a/c;->b:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    .line 858
    invoke-static {}, Landroidx/core/view/a/c;->a()Landroidx/core/view/a/c;

    move-result-object p1

    .line 860
    iget v3, v0, Landroidx/core/view/a/c;->b:I

    :goto_4
    if-eq v3, v2, :cond_6

    .line 864
    iget-object v4, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroidx/core/view/a/c;->e(Landroid/view/View;)V

    .line 865
    sget-object v4, Landroidx/customview/a/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroidx/core/view/a/c;->b(Landroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0, v3, p1}, Landroidx/customview/a/a;->a(ILandroidx/core/view/a/c;)V

    .line 868
    iget-object v3, p0, Landroidx/customview/a/a;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroidx/core/view/a/c;->a(Landroid/graphics/Rect;)V

    .line 869
    iget-object v3, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/customview/a/a;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/customview/a/a;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 862
    iget v3, p1, Landroidx/core/view/a/c;->b:I

    goto :goto_4

    .line 10765
    :cond_6
    iget-object p1, p1, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 874
    :cond_7
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/a/a;->i:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/customview/a/a;->i:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    .line 875
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 874
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    :cond_8
    iget-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    iget-object v2, p0, Landroidx/customview/a/a;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 879
    iget-object p1, p0, Landroidx/customview/a/a;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/a/a;->i:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/customview/a/a;->i:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    .line 880
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 879
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/a/a;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 883
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/a/c;->d(Landroid/graphics/Rect;)V

    .line 885
    iget-object p1, p0, Landroidx/customview/a/a;->f:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroidx/customview/a/a;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 886
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->d(Z)V

    :cond_9
    return-object v0

    .line 822
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 818
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 812
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(I)Z
    .locals 1

    .line 998
    iget v0, p0, Landroidx/customview/a/a;->b:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    .line 999
    iput v0, p0, Landroidx/customview/a/a;->b:I

    .line 1000
    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 1001
    invoke-virtual {p0, p1, v0}, Landroidx/customview/a/a;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract a(FF)I
.end method

.method public final a(Landroid/view/View;)Landroidx/core/view/a/d;
    .locals 0

    .line 157
    iget-object p1, p0, Landroidx/customview/a/a;->l:Landroidx/customview/a/a$a;

    if-nez p1, :cond_0

    .line 158
    new-instance p1, Landroidx/customview/a/a$a;

    invoke-direct {p1, p0}, Landroidx/customview/a/a$a;-><init>(Landroidx/customview/a/a;)V

    iput-object p1, p0, Landroidx/customview/a/a;->l:Landroidx/customview/a/a$a;

    .line 160
    :cond_0
    iget-object p1, p0, Landroidx/customview/a/a;->l:Landroidx/customview/a/a$a;

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 4566
    iget-object v0, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4567
    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 4570
    invoke-direct {p0, p1, v1}, Landroidx/customview/a/a;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v1, 0x0

    .line 4572
    invoke-static {p1, v1}, Landroidx/core/view/a/b;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 4573
    iget-object v1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method protected abstract a(ILandroidx/core/view/a/c;)V
.end method

.method protected a(IZ)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 0

    .line 755
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 758
    invoke-virtual {p0, p2}, Landroidx/customview/a/a;->a(Landroidx/core/view/a/c;)V

    return-void
.end method

.method protected a(Landroidx/core/view/a/c;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 275
    iget v0, p0, Landroidx/customview/a/a;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Landroidx/customview/a/a;->e(I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0, p2, p3}, Landroidx/customview/a/a;->b(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final a(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    .line 505
    iget-object v1, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 514
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/customview/a/a;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 515
    iget-object p2, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {v1, p2, p1}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method final a(IILandroid/os/Bundle;)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/16 v1, 0x40

    if-eq p2, v1, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 10918
    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/a/a;->b(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 10912
    :cond_0
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->h(I)Z

    move-result p1

    return p1

    .line 10968
    :cond_1
    iget-object p2, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 10972
    :cond_2
    iget p2, p0, Landroidx/customview/a/a;->b:I

    if-eq p2, p1, :cond_4

    const/high16 p3, -0x80000000

    if-eq p2, p3, :cond_3

    .line 10975
    invoke-direct {p0, p2}, Landroidx/customview/a/a;->h(I)Z

    .line 10979
    :cond_3
    iput p1, p0, Landroidx/customview/a/a;->b:I

    .line 10982
    iget-object p2, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    .line 10983
    invoke-virtual {p0, p1, p2}, Landroidx/customview/a/a;->a(II)Z

    return v0

    :cond_4
    :goto_0
    return p3

    .line 10916
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->e(I)Z

    move-result p1

    return p1

    .line 10914
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->d(I)Z

    move-result p1

    return p1

    .line 10904
    :cond_7
    iget-object p1, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroidx/core/view/v;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    const/16 v3, 0x42

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 226
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x13

    if-eq v0, v5, :cond_1

    const/16 v5, 0x15

    if-eq v0, v5, :cond_0

    const/16 v5, 0x16

    if-eq v0, v5, :cond_2

    const/16 v3, 0x82

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    goto :goto_0

    :cond_1
    const/16 v3, 0x21

    .line 228
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 230
    invoke-direct {p0, v3, v4}, Landroidx/customview/a/a;->b(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    .line 240
    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    .line 3481
    iget p1, p0, Landroidx/customview/a/a;->c:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v4}, Landroidx/customview/a/a;->b(IILandroid/os/Bundle;)Z

    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 248
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x2

    .line 249
    invoke-direct {p0, p1, v4}, Landroidx/customview/a/a;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2

    .line 250
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 251
    invoke-direct {p0, v2, v4}, Landroidx/customview/a/a;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_8
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 182
    iget-object v0, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/customview/a/a;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    .line 193
    :cond_1
    iget p1, p0, Landroidx/customview/a/a;->d:I

    if-eq p1, v4, :cond_2

    .line 194
    invoke-virtual {p0, v4}, Landroidx/customview/a/a;->b(I)V

    return v3

    :cond_2
    return v1

    .line 189
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/customview/a/a;->a(FF)I

    move-result p1

    .line 190
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->b(I)V

    if-eq p1, v4, :cond_4

    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method public b(I)V
    .locals 2

    .line 612
    iget v0, p0, Landroidx/customview/a/a;->d:I

    if-ne v0, p1, :cond_0

    return-void

    .line 617
    :cond_0
    iput p1, p0, Landroidx/customview/a/a;->d:I

    const/16 v1, 0x80

    .line 621
    invoke-virtual {p0, p1, v1}, Landroidx/customview/a/a;->a(II)Z

    const/16 p1, 0x100

    .line 622
    invoke-virtual {p0, v0, p1}, Landroidx/customview/a/a;->a(II)Z

    return-void
.end method

.method protected abstract b(IILandroid/os/Bundle;)Z
.end method

.method final c(I)Landroidx/core/view/a/c;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 720
    invoke-direct {p0}, Landroidx/customview/a/a;->b()Landroidx/core/view/a/c;

    move-result-object p1

    return-object p1

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->g(I)Landroidx/core/view/a/c;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 660
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final d(I)Z
    .locals 2

    .line 1016
    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/customview/a/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1021
    :cond_0
    iget v0, p0, Landroidx/customview/a/a;->c:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 1027
    invoke-virtual {p0, v0}, Landroidx/customview/a/a;->e(I)Z

    .line 1030
    :cond_2
    iput p1, p0, Landroidx/customview/a/a;->c:I

    const/4 v0, 0x1

    .line 1032
    invoke-virtual {p0, p1, v0}, Landroidx/customview/a/a;->a(IZ)V

    const/16 v1, 0x8

    .line 1033
    invoke-virtual {p0, p1, v1}, Landroidx/customview/a/a;->a(II)Z

    return v0
.end method

.method public final e(I)Z
    .locals 2

    .line 1046
    iget v0, p0, Landroidx/customview/a/a;->c:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 1051
    iput v0, p0, Landroidx/customview/a/a;->c:I

    .line 1053
    invoke-virtual {p0, p1, v1}, Landroidx/customview/a/a;->a(IZ)V

    const/16 v0, 0x8

    .line 1054
    invoke-virtual {p0, p1, v0}, Landroidx/customview/a/a;->a(II)Z

    const/4 p1, 0x1

    return p1
.end method
