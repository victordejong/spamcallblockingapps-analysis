.class public final Lorg/mistergroup/shouldianswer/ui/main/b/c;
.super Lorg/mistergroup/shouldianswer/ui/main/d;
.source "FavoritesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/b/c$a;
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/a/u;

.field private b:Lorg/mistergroup/shouldianswer/ui/main/b/b;

.field private c:Lcom/a/a/a/a/c/l;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;-><init>()V

    .line 43
    new-instance v0, Lcom/a/a/a/a/c/l;

    invoke-direct {v0}, Lcom/a/a/a/a/c/l;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->d:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/b/c;)Lorg/mistergroup/shouldianswer/ui/main/b/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->b:Lorg/mistergroup/shouldianswer/ui/main/b/b;

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/b/c;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->d:Z

    return-void
.end method


# virtual methods
.method public c()V
    .locals 11

    const-string v0, "binding.listView"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a:Lorg/mistergroup/shouldianswer/a/u;

    if-nez v3, :cond_1

    .line 78
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "FavoritesFragment.init mainActivity is null!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    if-nez v4, :cond_2

    .line 82
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "FavoritesFragment.init binding is null,skipping!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 85
    :cond_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "FavoritesFragment.init"

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 86
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->m()Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v3

    .line 87
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/b/b;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/a;->e()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/mistergroup/shouldianswer/ui/main/b/b;-><init>(Ljava/util/List;)V

    .line 88
    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->b:Lorg/mistergroup/shouldianswer/ui/main/b/b;

    .line 89
    sget-object v6, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/ai;->J()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Z)V

    .line 90
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a()Lorg/mistergroup/shouldianswer/ui/main/b/b$a;

    move-result-object v6

    new-instance v7, Lorg/mistergroup/shouldianswer/ui/main/b/c$b;

    invoke-direct {v7, p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c$b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V

    check-cast v7, Ljava/util/Observer;

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/ui/main/b/b$a;->addObserver(Ljava/util/Observer;)V

    .line 93
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    .line 94
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    const v8, 0x7f08005f

    invoke-static {v7, v8}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 93
    invoke-virtual {v6, v7}, Lcom/a/a/a/a/c/l;->a(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 97
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/a/a/a/a/c/l;->b(Z)V

    .line 98
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    invoke-virtual {v6, v7}, Lcom/a/a/a/a/c/l;->c(Z)V

    .line 99
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/a/a/a/a/c/l;->a(Z)V

    .line 100
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const/16 v8, 0x1c2

    invoke-virtual {v6, v8}, Lcom/a/a/a/a/c/l;->a(I)V

    .line 101
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    invoke-virtual {v6, v7}, Lcom/a/a/a/a/c/l;->d(Z)V

    .line 104
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const/16 v8, 0xfa

    invoke-virtual {v6, v8}, Lcom/a/a/a/a/c/l;->b(I)V

    .line 105
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v8}, Lcom/a/a/a/a/c/l;->c(F)V

    .line 106
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const v8, 0x3f99999a    # 1.2f

    invoke-virtual {v6, v8}, Lcom/a/a/a/a/c/l;->a(F)V

    .line 107
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/a/a/a/a/c/l;->b(F)V

    .line 109
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    move-object v8, v5

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v6, v8}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView$a;)Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v6

    .line 110
    new-instance v8, Lcom/a/a/a/a/b/b;

    invoke-direct {v8}, Lcom/a/a/a/a/b/b;-><init>()V

    .line 112
    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 113
    iget-object v10, v4, Lorg/mistergroup/shouldianswer/a/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v10, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 114
    iget-object v9, v4, Lorg/mistergroup/shouldianswer/a/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 115
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->registerForContextMenu(Landroid/view/View;)V

    .line 116
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, p0

    check-cast v9, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 117
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 119
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 120
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->J()Z

    move-result v0

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Z)V

    .line 121
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$c;

    invoke-direct {v0, v3}, Lorg/mistergroup/shouldianswer/ui/main/b/c$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/a;)V

    check-cast v0, Lkotlin/e/a/m;

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Lkotlin/e/a/m;)V

    .line 131
    sget-object v0, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    move-object v6, p0

    check-cast v6, Landroidx/lifecycle/k;

    new-instance v8, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;

    invoke-direct {v8, p0, v3, v5}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;Lorg/mistergroup/shouldianswer/ui/main/a;Lorg/mistergroup/shouldianswer/ui/main/b/b;)V

    check-cast v8, Landroidx/lifecycle/q;

    invoke-virtual {v0, v6, v8}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 179
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$e;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c$e;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V

    check-cast v0, Lkotlin/e/a/b;

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Lkotlin/e/a/b;)V

    .line 186
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/u;->c:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/b/c$f;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0, v7}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 7

    .line 198
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->m()Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/a;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 199
    :goto_1
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v2

    .line 200
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ad;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 201
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "ContactsFragment.updateUI - invalidating ContactsLiveData due fixed permissions"

    invoke-static {v3, v6, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 202
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ad;->d()V

    .line 204
    :cond_2
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a:Lorg/mistergroup/shouldianswer/a/u;

    if-eqz v3, :cond_5

    .line 206
    iget-object v4, v3, Lorg/mistergroup/shouldianswer/a/u;->f:Landroid/widget/LinearLayout;

    const-string v5, "binding.llNoItems"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/a/u;->g:Landroid/widget/LinearLayout;

    const-string v3, "binding.llNoPermissions"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "FavoritesFragment.onActivityCreated"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->b()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->b()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->onAttach(Landroid/content/Context;)V

    .line 61
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "FavoritesFragment.onAttach"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->m()Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/a;->f()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 216
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 217
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->values()[Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    aget-object p1, v5, p1

    sget-object v5, Lorg/mistergroup/shouldianswer/ui/main/b/d;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->ordinal()I

    move-result p1

    aget p1, v5, p1

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    const-string v4, "activity!!"

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v3, p1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 226
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :cond_4
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    const-string v5, "context!!"

    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    goto :goto_0

    .line 220
    :cond_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/y;->a()Landroid/content/ClipboardManager;

    move-result-object p1

    const-string v3, "phone number"

    .line 221
    check-cast v3, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 222
    invoke-virtual {p1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    :goto_0
    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x7f0e0000

    .line 252
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a003d

    .line 253
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 254
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->J()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 256
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$g;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c$g;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f0a003e

    .line 267
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0a0039

    .line 268
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0a003b

    .line 269
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f0a003c

    .line 270
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f0a003a

    .line 271
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "FavoritesFragment.onCreateView"

    const/4 v2, 0x2

    invoke-static {p3, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const p3, 0x7f0d0035

    const/4 v1, 0x0

    .line 49
    invoke-static {p1, p3, p2, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/u;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a:Lorg/mistergroup/shouldianswer/a/u;

    .line 50
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a:Lorg/mistergroup/shouldianswer/a/u;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/u;->d()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c:Lcom/a/a/a/a/c/l;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->d()V

    .line 243
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 247
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;->onResume()V

    .line 248
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->d()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .line 67
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FavoritesFragment.setUserVisibleHint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 68
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->setUserVisibleHint(Z)V

    .line 69
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->c()V

    :cond_0
    return-void
.end method
