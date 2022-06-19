.class public Lv3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/h$h;,
        Lv3/h$d;,
        Lv3/h$f;,
        Lv3/h$g;,
        Lv3/h$e;,
        Lv3/h$c;,
        Lv3/h$b;,
        Lv3/h$j;,
        Lv3/h$k;,
        Lv3/h$i;,
        Lv3/h$l;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/material/internal/NavigationMenuView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroidx/appcompat/view/menu/e;

.field public d:I

.field public e:Lv3/h$c;

.field public f:Landroid/view/LayoutInflater;

.field public g:I

.field public h:Landroid/content/res/ColorStateList;

.field public i:I

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public final z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv3/h;->g:I

    .line 3
    iput v0, p0, Lv3/h;->i:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lv3/h;->u:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lv3/h;->y:I

    .line 6
    new-instance v0, Lv3/h$a;

    invoke-direct {v0, p0}, Lv3/h$a;-><init>(Lv3/h;)V

    iput-object v0, p0, Lv3/h;->z:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/e;Z)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv3/h;->o:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lv3/h;->f:Landroid/view/LayoutInflater;

    .line 2
    iput-object p2, p0, Lv3/h;->c:Landroidx/appcompat/view/menu/e;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07009e

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lv3/h;->x:I

    return-void
.end method

.method public d(Landroid/os/Parcelable;)V
    .locals 8

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6
    iget-object v1, p0, Lv3/h;->e:Lv3/h$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android:menu:checked"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    .line 8
    iput-boolean v4, v1, Lv3/h$c;->e:Z

    .line 9
    iget-object v4, v1, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 10
    iget-object v6, v1, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv3/h$e;

    .line 11
    instance-of v7, v6, Lv3/h$g;

    if-eqz v7, :cond_1

    .line 12
    check-cast v6, Lv3/h$g;

    .line 13
    iget-object v6, v6, Lv3/h$g;->a:Landroidx/appcompat/view/menu/g;

    if-eqz v6, :cond_1

    .line 14
    iget v7, v6, Landroidx/appcompat/view/menu/g;->a:I

    if-ne v7, v2, :cond_1

    .line 15
    invoke-virtual {v1, v6}, Lv3/h$c;->h(Landroidx/appcompat/view/menu/g;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    iput-boolean v3, v1, Lv3/h$c;->e:Z

    .line 17
    invoke-virtual {v1}, Lv3/h$c;->g()V

    :cond_3
    const-string v2, "android:menu:action_views"

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 19
    iget-object v2, v1, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_8

    .line 20
    iget-object v4, v1, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/h$e;

    .line 21
    instance-of v5, v4, Lv3/h$g;

    if-nez v5, :cond_4

    goto :goto_3

    .line 22
    :cond_4
    check-cast v4, Lv3/h$g;

    .line 23
    iget-object v4, v4, Lv3/h$g;->a:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 25
    :cond_6
    iget v4, v4, Landroidx/appcompat/view/menu/g;->a:I

    .line 26
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/j;

    if-nez v4, :cond_7

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {v5, v4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const-string v0, "android:menu:header"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 29
    iget-object v0, p0, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_9
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/l;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/h;->e:Lv3/h$c;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, v0, Lv3/h$c;->e:Z

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lv3/h;->e:Lv3/h$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lv3/h$c;->g()V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$f;->b()V

    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/h;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Landroid/os/Parcelable;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    iget-object v2, p0, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lv3/h;->e:Lv3/h$c;

    if-eqz v1, :cond_5

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v3, v1, Lv3/h$c;->d:Landroidx/appcompat/view/menu/g;

    if-eqz v3, :cond_1

    .line 10
    iget v3, v3, Landroidx/appcompat/view/menu/g;->a:I

    const-string v4, "android:menu:checked"

    .line 11
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    .line 13
    iget-object v5, v1, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_4

    .line 14
    iget-object v6, v1, Lv3/h$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv3/h$e;

    .line 15
    instance-of v7, v6, Lv3/h$g;

    if-eqz v7, :cond_3

    .line 16
    check-cast v6, Lv3/h$g;

    .line 17
    iget-object v6, v6, Lv3/h$g;->a:Landroidx/appcompat/view/menu/g;

    if-eqz v6, :cond_2

    .line 18
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    .line 19
    new-instance v8, Lv3/j;

    invoke-direct {v8}, Lv3/j;-><init>()V

    .line 20
    invoke-virtual {v7, v8}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 21
    iget v6, v6, Landroidx/appcompat/view/menu/g;->a:I

    .line 22
    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "android:menu:action_views"

    .line 23
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v1, "android:menu:adapter"

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    :cond_5
    iget-object v1, p0, Lv3/h;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 26
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 27
    iget-object v2, p0, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_6
    return-object v0
.end method

.method public j(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lv3/h;->u:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lv3/h;->w:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
