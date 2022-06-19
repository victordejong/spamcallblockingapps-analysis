.class public final Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field b:Z

.field c:I

.field private d:Landroidx/appcompat/view/menu/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 52
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:Landroidx/appcompat/view/menu/g;

    .line 53
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 1143
    iput-object p2, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 7

    .line 120
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 4650
    iget-object v2, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4652
    iget-object v5, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 4653
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 4654
    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    .line 4655
    iput v4, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    const/4 v0, 0x1

    .line 4656
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 123
    invoke-static {v0, p1}, Lcom/google/android/material/badge/a;->a(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 4667
    iput-object p1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    .line 4668
    iget-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v1, :cond_2

    .line 4669
    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 4670
    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v2, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Lcom/google/android/material/badge/BadgeDrawable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 6

    .line 63
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b()V

    return-void

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 1596
    iget-object v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1600
    :cond_2
    iget-object v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    .line 1601
    iget-object v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 1603
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b()V

    return-void

    .line 1607
    :cond_3
    iget v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 1610
    iget-object v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1611
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1612
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    .line 1613
    iput v3, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1616
    :cond_5
    iget v3, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    if-eq v1, v3, :cond_6

    .line 1618
    iget-object v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a:Landroidx/transition/TransitionSet;

    invoke-static {p1, v1}, Landroidx/transition/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1621
    :cond_6
    iget v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    iget-object v3, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 1623
    iget-object v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v5, 0x1

    .line 2130
    iput-boolean v5, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    .line 1624
    iget-object v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 1625
    iget-object v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 1626
    iget-object v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroidx/appcompat/view/menu/i;)V

    .line 1627
    iget-object v4, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 3130
    iput-boolean v2, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:I

    return v0
.end method

.method public final b(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()Landroid/os/Parcelable;
    .locals 2

    .line 111
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3640
    iget v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    .line 112
    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 113
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 3663
    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/util/SparseArray;

    .line 114
    invoke-static {v1}, Lcom/google/android/material/badge/a;->a(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method
