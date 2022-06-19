.class public final Lcom/google/android/material/bottomnavigation/a;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->e()V

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 54
    instance-of p2, p1, Landroidx/appcompat/view/menu/i;

    if-eqz p2, :cond_0

    .line 55
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/menu/i;

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/i;->a(Z)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->f()V

    return-object p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "BottomNavigationView does not support submenus"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
