.class public final Lcom/google/android/material/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/e$g;,
        Lcom/google/android/material/internal/e$c;,
        Lcom/google/android/material/internal/e$e;,
        Lcom/google/android/material/internal/e$f;,
        Lcom/google/android/material/internal/e$d;,
        Lcom/google/android/material/internal/e$b;,
        Lcom/google/android/material/internal/e$a;,
        Lcom/google/android/material/internal/e$i;,
        Lcom/google/android/material/internal/e$j;,
        Lcom/google/android/material/internal/e$h;,
        Lcom/google/android/material/internal/e$k;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/material/internal/NavigationMenuView;

.field public b:Landroid/widget/LinearLayout;

.field c:Landroidx/appcompat/view/menu/g;

.field public d:I

.field public e:Lcom/google/android/material/internal/e$b;

.field public f:Landroid/view/LayoutInflater;

.field g:I

.field h:Z

.field i:Landroid/content/res/ColorStateList;

.field j:Landroid/content/res/ColorStateList;

.field k:Landroid/graphics/drawable/Drawable;

.field l:I

.field m:I

.field n:I

.field o:Z

.field public p:Z

.field q:I

.field public r:I

.field s:I

.field public t:I

.field final u:Landroid/view/View$OnClickListener;

.field private v:Landroidx/appcompat/view/menu/m$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/google/android/material/internal/e;->p:Z

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/google/android/material/internal/e;->t:I

    .line 408
    new-instance v0, Lcom/google/android/material/internal/e$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/e$1;-><init>(Lcom/google/android/material/internal/e;)V

    iput-object v0, p0, Lcom/google/android/material/internal/e;->u:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/google/android/material/internal/e;->g:I

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/google/android/material/internal/e;->h:Z

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/e;->f:Landroid/view/LayoutInflater;

    .line 98
    iput-object p2, p0, Lcom/google/android/material/internal/e;->c:Landroidx/appcompat/view/menu/g;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 100
    sget p2, Lcom/google/android/material/a$d;->design_navigation_separator_vertical_padding:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/e;->s:I

    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/internal/e;->j:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/android/material/internal/e;->k:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 8

    .line 195
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 196
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v1, p0, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    const-string v2, "android:menu:checked"

    const/4 v3, 0x0

    .line 1670
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    .line 1672
    iput-boolean v4, v1, Lcom/google/android/material/internal/e$b;->b:Z

    .line 1673
    iget-object v4, v1, Lcom/google/android/material/internal/e$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 1674
    iget-object v6, v1, Lcom/google/android/material/internal/e$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/e$d;

    .line 1675
    instance-of v7, v6, Lcom/google/android/material/internal/e$f;

    if-eqz v7, :cond_1

    .line 1676
    check-cast v6, Lcom/google/android/material/internal/e$f;

    .line 1743
    iget-object v6, v6, Lcom/google/android/material/internal/e$f;->a:Landroidx/appcompat/view/menu/i;

    if-eqz v6, :cond_1

    .line 1677
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 1678
    invoke-virtual {v1, v6}, Lcom/google/android/material/internal/e$b;->a(Landroidx/appcompat/view/menu/i;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1683
    :cond_2
    :goto_1
    iput-boolean v3, v1, Lcom/google/android/material/internal/e$b;->b:Z

    .line 1684
    invoke-virtual {v1}, Lcom/google/android/material/internal/e$b;->b()V

    :cond_3
    const-string v2, "android:menu:action_views"

    .line 1688
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1690
    iget-object v2, v1, Lcom/google/android/material/internal/e$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_5

    .line 1691
    iget-object v4, v1, Lcom/google/android/material/internal/e$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/e$d;

    .line 1692
    instance-of v5, v4, Lcom/google/android/material/internal/e$f;

    if-eqz v5, :cond_4

    .line 1695
    check-cast v4, Lcom/google/android/material/internal/e$f;

    .line 2743
    iget-object v4, v4, Lcom/google/android/material/internal/e$f;->a:Landroidx/appcompat/view/menu/i;

    if-eqz v4, :cond_4

    .line 1699
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1703
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-eqz v4, :cond_4

    .line 1707
    invoke-virtual {v5, v4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "android:menu:header"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_6
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/material/internal/e;->v:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/i;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e$b;->a(Landroidx/appcompat/view/menu/i;)V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/google/android/material/internal/e;->v:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    if-eqz p1, :cond_0

    .line 1546
    invoke-virtual {p1}, Lcom/google/android/material/internal/e$b;->b()V

    .line 1547
    invoke-virtual {p1}, Lcom/google/android/material/internal/e$b;->notifyDataSetChanged()V

    :cond_0
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

    .line 166
    iget v0, p0, Lcom/google/android/material/internal/e;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/google/android/material/internal/e;->l:I

    const/4 p1, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/android/material/internal/e;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    if-eqz v0, :cond_0

    .line 3713
    iput-boolean p1, v0, Lcom/google/android/material/internal/e$b;->b:Z

    :cond_0
    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/e;->p:Z

    if-eqz v0, :cond_0

    .line 342
    iget v0, p0, Lcom/google/android/material/internal/e;->r:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/google/android/material/internal/e;->m:I

    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/google/android/material/internal/e;->q:I

    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 312
    iget v0, p0, Lcom/google/android/material/internal/e;->n:I

    if-eq v0, p1, :cond_0

    .line 313
    iput p1, p0, Lcom/google/android/material/internal/e;->n:I

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/google/android/material/internal/e;->o:Z

    const/4 p1, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public final f()Landroid/os/Parcelable;
    .locals 3

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1}, Lcom/google/android/material/internal/e$b;->c()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 187
    iget-object v2, p0, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public final f(I)V
    .locals 1

    .line 362
    iput p1, p0, Lcom/google/android/material/internal/e;->t:I

    .line 363
    iget-object v0, p0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuView;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method
