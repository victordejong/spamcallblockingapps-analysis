.class public Lv0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lx0;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public f:I

.field public g:I

.field public h:I

.field public j:Ld1$a;

.field public k:Lv0$a;

.field public l:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv0;->h:I

    iput p2, p0, Lv0;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lv0;-><init>(II)V

    iput-object p1, p0, Lv0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lv0;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lv0;->k:Lv0$a;

    if-nez v0, :cond_0

    new-instance v0, Lv0$a;

    invoke-direct {v0, p0}, Lv0$a;-><init>(Lv0;)V

    iput-object v0, p0, Lv0;->k:Lv0$a;

    :cond_0
    iget-object v0, p0, Lv0;->k:Lv0$a;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)Le1;
    .locals 3

    iget-object v0, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lv0;->b:Landroid/view/LayoutInflater;

    sget v1, Ll;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object p1, p0, Lv0;->k:Lv0$a;

    if-nez p1, :cond_0

    new-instance p1, Lv0$a;

    invoke-direct {p1, p0}, Lv0$a;-><init>(Lv0;)V

    iput-object p1, p0, Lv0;->k:Lv0$a;

    :cond_0
    iget-object p1, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, Lv0;->k:Lv0$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object p1, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public collapseItemActionView(Lx0;Lz0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public expandItemActionView(Lx0;Lz0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lv0;->l:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lx0;)V
    .locals 2

    iget v0, p0, Lv0;->g:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lv0;->g:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lv0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lv0;->b:Landroid/view/LayoutInflater;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv0;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lv0;->a:Landroid/content/Context;

    iget-object v0, p0, Lv0;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p2, p0, Lv0;->c:Lx0;

    iget-object p1, p0, Lv0;->k:Lv0$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lv0$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCloseMenu(Lx0;Z)V
    .locals 1

    iget-object v0, p0, Lv0;->j:Ld1$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ld1$a;->onCloseMenu(Lx0;Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lv0;->c:Lx0;

    iget-object p2, p0, Lv0;->k:Lv0$a;

    invoke-virtual {p2, p3}, Lv0$a;->b(I)Lz0;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lx0;->performItemAction(Landroid/view/MenuItem;Ld1;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lv0;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lv0;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lv0;->d(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(Li1;)Z
    .locals 2

    invoke-virtual {p1}, Lx0;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ly0;

    invoke-direct {v0, p1}, Ly0;-><init>(Lx0;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly0;->c(Landroid/os/IBinder;)V

    iget-object v0, p0, Lv0;->j:Ld1$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ld1$a;->a(Lx0;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setCallback(Ld1$a;)V
    .locals 0

    iput-object p1, p0, Lv0;->j:Ld1$a;

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p1, p0, Lv0;->k:Lv0$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lv0$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
