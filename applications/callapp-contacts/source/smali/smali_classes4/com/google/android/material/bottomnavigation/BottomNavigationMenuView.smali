.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field private A:I

.field private B:[I

.field final a:Landroidx/transition/TransitionSet;

.field b:Z

.field c:I

.field d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

.field e:I

.field f:I

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field j:Landroidx/appcompat/view/menu/g;

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/content/res/ColorStateList;

.field private v:I

.field private w:Landroid/content/res/ColorStateList;

.field private final x:Landroid/content/res/ColorStateList;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 64
    sput-object v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 65
    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Landroidx/core/e/c$c;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroidx/core/e/c$c;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->s:Landroidx/core/e/c$a;

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    .line 85
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_item_max_width:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    .line 110
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_item_min_width:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    .line 112
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_active_item_max_width:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o:I

    .line 114
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_active_item_min_width:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->p:I

    .line 116
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:I

    .line 117
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/content/res/ColorStateList;

    .line 119
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a:Landroidx/transition/TransitionSet;

    .line 120
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->a(I)Landroidx/transition/TransitionSet;

    const-wide/16 v1, 0x73

    .line 121
    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->c(J)Landroidx/transition/TransitionSet;

    .line 122
    new-instance p1, Landroidx/g/a/a/b;

    invoke-direct {p1}, Landroidx/g/a/a/b;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->b(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    .line 123
    new-instance p1, Lcom/google/android/material/internal/j;

    invoke-direct {p1}, Lcom/google/android/material/internal/j;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 125
    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->r:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    .line 136
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    const/4 p1, 0x1

    .line 138
    invoke-static {p0, p1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-object p0
.end method

.method static a(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    const/4 p0, 0x3

    if-le p1, p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/res/ColorStateList;
    .locals 11

    .line 514
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010038

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 520
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroidx/appcompat/a$a;->colorPrimary:I

    .line 521
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    .line 524
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 525
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 526
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    new-array v6, v5, [[I

    sget-object v7, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[I

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v9, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:[I

    aput-object v9, v6, v3

    sget-object v9, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    const/4 v10, 0x2

    aput-object v9, v6, v10

    new-array v5, v5, [I

    .line 529
    invoke-virtual {v1, v7, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    aput v1, v5, v8

    aput v0, v5, v3

    aput v2, v5, v10

    invoke-direct {v4, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public final b()V
    .locals 9

    .line 539
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->removeAllViews()V

    .line 540
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 541
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    if-eqz v6, :cond_1

    .line 543
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->s:Landroidx/core/e/c$a;

    invoke-interface {v7, v6}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z

    .line 1485
    iget-object v7, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    .line 1515
    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    .line 1520
    invoke-virtual {v6, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipChildren(Z)V

    .line 1521
    invoke-virtual {v6, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipToPadding(Z)V

    .line 1523
    iget-object v8, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-static {v8, v7}, Lcom/google/android/material/badge/a;->a(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    .line 1525
    :cond_0
    iput-object v1, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 550
    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    .line 551
    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    .line 552
    iput-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    return-void

    .line 1728
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1730
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1731
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1734
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1735
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1736
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1737
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 557
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 558
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a(II)Z

    move-result v0

    const/4 v1, 0x0

    .line 559
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 560
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 2130
    iput-boolean v3, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    .line 561
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 562
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 3130
    iput-boolean v2, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    .line 3632
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->s:Landroidx/core/e/c$a;

    invoke-interface {v4}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v4, :cond_7

    .line 3634
    new-instance v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 564
    :cond_7
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aput-object v4, v5, v1

    .line 565
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->v:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    .line 568
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 569
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 570
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 571
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 572
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 573
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 575
    :cond_8
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->A:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    .line 577
    :goto_4
    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 578
    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 579
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/i;

    .line 580
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroidx/appcompat/view/menu/i;)V

    .line 581
    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemPosition(I)V

    .line 582
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v5

    .line 583
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    if-eqz v6, :cond_9

    if-ne v5, v6, :cond_9

    .line 586
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    .line 3715
    :cond_9
    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_b

    .line 3721
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v5, :cond_b

    .line 3723
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 589
    :cond_b
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 591
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    .line 592
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 252
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/a/c$b;->a(IIZI)Landroidx/core/view/a/c$b;

    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 231
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 235
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sub-int v2, p4, v0

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 238
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 240
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 150
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v0

    .line 154
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 156
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    invoke-static {v3, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b:Z

    if-eqz v3, :cond_6

    .line 157
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 158
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->p:I

    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 162
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o:I

    const/high16 v9, -0x80000000

    .line 163
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 162
    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 166
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr p2, v3

    .line 167
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    mul-int v3, v3, p2

    sub-int v3, p1, v3

    .line 168
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o:I

    .line 169
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, p2

    .line 170
    :goto_1
    div-int v7, p1, v7

    .line 172
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int p2, p2, v7

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v0, :cond_a

    .line 176
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_4

    .line 177
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    if-ne p2, v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    aput v9, v8, p2

    if-lez p1, :cond_5

    .line 182
    aget v9, v8, p2

    add-int/2addr v9, v5

    aput v9, v8, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 186
    :cond_4
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    aput v6, v8, p2

    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    move v3, p2

    .line 190
    :goto_5
    div-int v3, p1, v3

    .line 191
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int p2, p2, v3

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_6
    if-ge p2, v0, :cond_a

    .line 194
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 195
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    aput v3, v7, p2

    if-lez p1, :cond_9

    .line 197
    aget v8, v7, p2

    add-int/2addr v8, v5

    aput v8, v7, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 201
    :cond_8
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    aput v6, v7, p2

    :cond_9
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_8
    if-ge p1, v0, :cond_c

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_b

    .line 212
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    aget v5, v5, p1

    .line 213
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 212
    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    .line 214
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 215
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 220
    :cond_c
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 219
    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:I

    .line 221
    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 267
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->u:Landroid/content/res/ColorStateList;

    .line 268
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 269
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 270
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 419
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 421
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 422
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 394
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->A:I

    .line 395
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 396
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 397
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    .line 293
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->v:I

    .line 294
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 295
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 296
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 5

    if-nez p2, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_2

    .line 504
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1193
    iget-object v4, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    .line 505
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 506
    invoke-virtual {v3, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 365
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:I

    .line 366
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 367
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 368
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 371
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 336
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:I

    .line 337
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 338
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 339
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 342
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 313
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:Landroid/content/res/ColorStateList;

    .line 314
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 315
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 316
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-void
.end method
