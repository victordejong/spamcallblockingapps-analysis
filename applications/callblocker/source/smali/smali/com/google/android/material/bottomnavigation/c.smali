.class public Lcom/google/android/material/bottomnavigation/c;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private A:Landroidx/appcompat/view/menu/g;

.field private final c:Landroidx/j/q;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/google/android/material/bottomnavigation/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:[Lcom/google/android/material/bottomnavigation/a;

.field private n:I

.field private o:I

.field private p:Landroid/content/res/ColorStateList;

.field private q:I

.field private r:Landroid/content/res/ColorStateList;

.field private final s:Landroid/content/res/ColorStateList;

.field private t:I

.field private u:I

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:I

.field private x:[I

.field private y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/material/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/google/android/material/bottomnavigation/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/bottomnavigation/c;->a:[I

    .line 61
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/bottomnavigation/c;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Landroidx/core/g/e$c;

    invoke-direct {v0, v4}, Landroidx/core/g/e$c;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->j:Landroidx/core/g/e$a;

    .line 77
    iput v2, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    .line 78
    iput v2, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_item_max_width:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/c;->d:I

    .line 103
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_item_min_width:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/c;->e:I

    .line 105
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_active_item_max_width:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/c;->f:I

    .line 107
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_active_item_min_width:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/c;->g:I

    .line 109
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/c;->h:I

    .line 110
    const v0, 0x1010038

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/c;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->s:Landroid/content/res/ColorStateList;

    .line 112
    new-instance v0, Landroidx/j/b;

    invoke-direct {v0}, Landroidx/j/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->c:Landroidx/j/q;

    .line 113
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->c:Landroidx/j/q;

    invoke-virtual {v0, v2}, Landroidx/j/q;->a(I)Landroidx/j/q;

    .line 114
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->c:Landroidx/j/q;

    const-wide/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroidx/j/q;->c(J)Landroidx/j/q;

    .line 115
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->c:Landroidx/j/q;

    new-instance v1, Landroidx/e/a/a/b;

    invoke-direct {v1}, Landroidx/e/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/j/q;->b(Landroid/animation/TimeInterpolator;)Landroidx/j/q;

    .line 116
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->c:Landroidx/j/q;

    new-instance v1, Lcom/google/android/material/internal/h;

    invoke-direct {v1}, Lcom/google/android/material/internal/h;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 118
    new-instance v0, Lcom/google/android/material/bottomnavigation/c$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomnavigation/c$1;-><init>(Lcom/google/android/material/bottomnavigation/c;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->i:Landroid/view/View$OnClickListener;

    .line 129
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/c;)Lcom/google/android/material/bottomnavigation/d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->z:Lcom/google/android/material/bottomnavigation/d;

    return-object v0
.end method

.method private a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/material/bottomnavigation/c;)Landroidx/appcompat/view/menu/g;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 712
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 683
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 685
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 686
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 691
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 692
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 689
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 695
    :cond_2
    return-void
.end method

.method private getNewItem()Lcom/google/android/material/bottomnavigation/a;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->j:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/a;

    .line 588
    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/google/android/material/bottomnavigation/a;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomnavigation/a;-><init>(Landroid/content/Context;)V

    .line 591
    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/a;)V
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/a;->getId()I

    move-result v0

    .line 671
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/c;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/b/a;

    .line 677
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/a;->setBadge(Lcom/google/android/material/b/a;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 473
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-object v0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 479
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/a$a;->colorPrimary:I

    .line 480
    invoke-virtual {v3, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 484
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 485
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v6, [[I

    sget-object v5, Lcom/google/android/material/bottomnavigation/c;->b:[I

    aput-object v5, v4, v8

    sget-object v5, Lcom/google/android/material/bottomnavigation/c;->a:[I

    aput-object v5, v4, v7

    sget-object v5, Lcom/google/android/material/bottomnavigation/c;->EMPTY_STATE_SET:[I

    aput-object v5, v4, v9

    new-array v5, v6, [I

    sget-object v6, Lcom/google/android/material/bottomnavigation/c;->b:[I

    .line 488
    invoke-virtual {v2, v6, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v5, v8

    aput v1, v5, v7

    aput v3, v5, v9

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    .line 135
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/c;->k:Z

    return v0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->removeAllViews()V

    .line 498
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_1

    .line 499
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 500
    if-eqz v4, :cond_0

    .line 501
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/c;->j:Landroidx/core/g/e$a;

    invoke-interface {v5, v4}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/a;->b()V

    .line 499
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 508
    iput v2, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    .line 509
    iput v2, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    .line 548
    :goto_1
    return-void

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/c;->d()V

    .line 515
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/bottomnavigation/a;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    .line 516
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomnavigation/c;->a(II)Z

    move-result v3

    move v1, v2

    .line 517
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->z:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v0, v6}, Lcom/google/android/material/bottomnavigation/d;->b(Z)V

    .line 519
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 520
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->z:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/d;->b(Z)V

    .line 521
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/c;->getNewItem()Lcom/google/android/material/bottomnavigation/a;

    move-result-object v4

    .line 522
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    aput-object v4, v0, v1

    .line 523
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 524
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->q:I

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setIconSize(I)V

    .line 526
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 527
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->t:I

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setTextAppearanceInactive(I)V

    .line 528
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->u:I

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setTextAppearanceActive(I)V

    .line 529
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 530
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 531
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 535
    :goto_3
    invoke-virtual {v4, v3}, Lcom/google/android/material/bottomnavigation/a;->setShifting(Z)V

    .line 536
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setLabelVisibilityMode(I)V

    .line 537
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/material/bottomnavigation/a;->a(Landroidx/appcompat/view/menu/i;I)V

    .line 538
    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/a;->setItemPosition(I)V

    .line 539
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v5, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    if-ne v0, v5, :cond_3

    .line 541
    iput v1, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    .line 543
    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/material/bottomnavigation/c;->setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/a;)V

    .line 544
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomnavigation/c;->addView(Landroid/view/View;)V

    .line 517
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 533
    :cond_4
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->w:I

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setItemBackground(I)V

    goto :goto_3

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    .line 547
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method b(I)V
    .locals 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v1

    .line 606
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 607
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 608
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 609
    iput p1, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    .line 610
    iput v0, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    .line 611
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 615
    :cond_0
    return-void

    .line 606
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v3

    .line 556
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v0, v0

    if-eq v3, v0, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->b()V

    goto :goto_0

    .line 562
    :cond_2
    iget v1, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    move v0, v2

    .line 564
    :goto_1
    if-ge v0, v3, :cond_4

    .line 565
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 566
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 567
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    .line 568
    iput v0, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    .line 564
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_4
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    if-eq v1, v0, :cond_5

    .line 573
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->c:Landroidx/j/q;

    invoke-static {p0, v0}, Landroidx/j/o;->a(Landroid/view/ViewGroup;Landroidx/j/m;)V

    .line 576
    :cond_5
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomnavigation/c;->a(II)Z

    move-result v4

    move v1, v2

    .line 577
    :goto_2
    if-ge v1, v3, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->z:Lcom/google/android/material/bottomnavigation/d;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomnavigation/d;->b(Z)V

    .line 579
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    aget-object v0, v0, v1

    iget v5, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomnavigation/a;->setLabelVisibilityMode(I)V

    .line 580
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomnavigation/a;->setShifting(Z)V

    .line 581
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    aget-object v5, v0, v1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v5, v0, v2}, Lcom/google/android/material/bottomnavigation/a;->a(Landroidx/appcompat/view/menu/i;I)V

    .line 582
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->z:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/d;->b(Z)V

    .line 577
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/material/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->w:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->q:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->u:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->t:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->n:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getChildCount()I

    move-result v3

    .line 218
    sub-int v4, p4, p2

    .line 219
    sub-int v5, p5, p3

    move v1, v2

    move v0, v2

    .line 221
    :goto_0
    if-ge v1, v3, :cond_2

    .line 222
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 223
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 221
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 227
    sub-int v7, v4, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v4, v0

    invoke-virtual {v6, v7, v2, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 231
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v6, v0, v2, v7, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 233
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/16 v10, 0x8

    const/4 v3, 0x0

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 141
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->A:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/c;->getChildCount()I

    move-result v6

    .line 145
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->h:I

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 147
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    invoke-direct {p0, v0, v4}, Lcom/google/android/material/bottomnavigation/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/c;->k:Z

    if-eqz v0, :cond_6

    .line 148
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 149
    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->g:I

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 153
    iget v8, p0, Lcom/google/android/material/bottomnavigation/c;->f:I

    const/high16 v9, -0x80000000

    .line 154
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 153
    invoke-virtual {v1, v8, v7}, Landroid/view/View;->measure(II)V

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_1

    move v1, v2

    :goto_0
    sub-int v1, v4, v1

    .line 158
    iget v4, p0, Lcom/google/android/material/bottomnavigation/c;->e:I

    mul-int/2addr v4, v1

    sub-int v4, v5, v4

    .line 159
    iget v8, p0, Lcom/google/android/material/bottomnavigation/c;->f:I

    .line 160
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 161
    sub-int v0, v5, v4

    if-nez v1, :cond_2

    :goto_1
    div-int/2addr v0, v2

    .line 163
    iget v2, p0, Lcom/google/android/material/bottomnavigation/c;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 164
    sub-int v0, v5, v4

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    move v5, v3

    .line 166
    :goto_2
    if-ge v5, v6, :cond_a

    .line 167
    invoke-virtual {p0, v5}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 168
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    iget v0, p0, Lcom/google/android/material/bottomnavigation/c;->o:I

    if-ne v5, v0, :cond_3

    move v0, v4

    :goto_3
    aput v0, v8, v5

    .line 172
    if-lez v1, :cond_5

    .line 173
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    aget v8, v0, v5

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v5

    .line 174
    add-int/lit8 v0, v1, -0x1

    .line 166
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v1, v3

    .line 157
    goto :goto_0

    :cond_2
    move v2, v1

    .line 161
    goto :goto_1

    :cond_3
    move v0, v2

    .line 168
    goto :goto_3

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    aput v3, v0, v5

    :cond_5
    move v0, v1

    goto :goto_4

    .line 181
    :cond_6
    if-nez v4, :cond_8

    :goto_5
    div-int v0, v5, v2

    .line 182
    iget v1, p0, Lcom/google/android/material/bottomnavigation/c;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 183
    mul-int v0, v2, v4

    sub-int v0, v5, v0

    move v1, v3

    .line 184
    :goto_6
    if-ge v1, v6, :cond_a

    .line 185
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_9

    .line 186
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    aput v2, v4, v1

    .line 187
    if-lez v0, :cond_7

    .line 188
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 189
    add-int/lit8 v0, v0, -0x1

    .line 184
    :cond_7
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move v2, v4

    .line 181
    goto :goto_5

    .line 192
    :cond_9
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    aput v3, v4, v1

    goto :goto_7

    :cond_a
    move v1, v3

    move v0, v3

    .line 198
    :goto_8
    if-ge v1, v6, :cond_c

    .line 199
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v10, :cond_b

    .line 198
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 203
    :cond_b
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->x:[I

    aget v4, v4, v1

    .line 204
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 203
    invoke-virtual {v2, v4, v7}, Landroid/view/View;->measure(II)V

    .line 205
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 206
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_9

    .line 211
    :cond_c
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 210
    invoke-static {v0, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomnavigation/c;->h:I

    .line 212
    invoke-static {v1, v7, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/bottomnavigation/c;->setMeasuredDimension(II)V

    .line 213
    return-void
.end method

.method setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/material/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c;->y:Landroid/util/SparseArray;

    .line 623
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    .line 624
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 625
    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/a;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/b/a;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/a;->setBadge(Lcom/google/android/material/b/a;)V

    .line 624
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 628
    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c;->p:Landroid/content/res/ColorStateList;

    .line 247
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 249
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c;->v:Landroid/graphics/drawable/Drawable;

    .line 399
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 401
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .prologue
    .line 373
    iput p1, p0, Lcom/google/android/material/bottomnavigation/c;->w:I

    .line 374
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 376
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setItemBackground(I)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/c;->k:Z

    .line 458
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    .prologue
    .line 272
    iput p1, p0, Lcom/google/android/material/bottomnavigation/c;->q:I

    .line 273
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 275
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setIconSize(I)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .prologue
    .line 344
    iput p1, p0, Lcom/google/android/material/bottomnavigation/c;->u:I

    .line 345
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_1

    .line 346
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 347
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setTextAppearanceActive(I)V

    .line 350
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .prologue
    .line 315
    iput p1, p0, Lcom/google/android/material/bottomnavigation/c;->t:I

    .line 316
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 318
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setTextAppearanceInactive(I)V

    .line 321
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c;->r:Landroid/content/res/ColorStateList;

    .line 293
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c;->m:[Lcom/google/android/material/bottomnavigation/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 295
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .prologue
    .line 436
    iput p1, p0, Lcom/google/android/material/bottomnavigation/c;->l:I

    .line 437
    return-void
.end method

.method public setPresenter(Lcom/google/android/material/bottomnavigation/d;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c;->z:Lcom/google/android/material/bottomnavigation/d;

    .line 494
    return-void
.end method
