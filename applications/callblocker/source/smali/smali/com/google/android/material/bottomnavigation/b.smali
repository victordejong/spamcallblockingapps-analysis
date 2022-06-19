.class public final Lcom/google/android/material/bottomnavigation/b;
.super Landroidx/appcompat/view/menu/g;
.source "BottomNavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->h()V

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 54
    instance-of v0, v1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 55
    check-cast v0, Landroidx/appcompat/view/menu/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/i;->a(Z)V

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->i()V

    .line 58
    return-object v1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "BottomNavigationView does not support submenus"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
