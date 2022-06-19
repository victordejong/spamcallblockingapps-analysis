.class public final Lorg/mistergroup/shouldianswer/ui/main/c/m;
.super Lorg/mistergroup/shouldianswer/ui/main/d;
.source "LogsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/m$b;,
        Lorg/mistergroup/shouldianswer/ui/main/c/m$a;
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/a/aa;

.field private b:Lorg/mistergroup/shouldianswer/ui/main/a;

.field private c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/ui/main/MainFragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/mistergroup/shouldianswer/ui/main/c/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Ljava/lang/ref/WeakReference;
    .locals 1

    .line 41
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->e:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const-string v0, "homeFragment"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;
    .locals 1

    .line 41
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    if-nez p0, :cond_0

    const-string v0, "layoutManager"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/c/h;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/a;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 9

    const-string v0, "binding.listCallHistory"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a:Lorg/mistergroup/shouldianswer/a/aa;

    if-nez v3, :cond_1

    .line 104
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "LogsFragment.init mainActivity is null!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    if-nez v4, :cond_2

    .line 108
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "LogsFragment.init binding is null,skipping!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 111
    :cond_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "LogsFragment.init"

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 112
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->m()Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v5

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    .line 113
    sget-object v5, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a()Ljava/lang/ref/WeakReference;

    move-result-object v5

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->e:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;-><init>()V

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    .line 115
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/h;-><init>()V

    .line 116
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->g()Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

    move-result-object v6

    new-instance v7, Lorg/mistergroup/shouldianswer/ui/main/c/m$c;

    invoke-direct {v7, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V

    check-cast v7, Ljava/util/Observer;

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/ui/main/c/h$b;->addObserver(Ljava/util/Observer;)V

    .line 126
    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    .line 127
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/aa;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 128
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/aa;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "layoutManager"

    if-nez v7, :cond_3

    :try_start_1
    invoke-static {v8}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 129
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/aa;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;

    invoke-direct {v7, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 130
    iget-object v6, v4, Lorg/mistergroup/shouldianswer/a/aa;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 133
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/aa;->e:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->registerForContextMenu(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    if-nez v0, :cond_4

    invoke-static {v8}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    new-instance v6, Lorg/mistergroup/shouldianswer/ui/main/c/m$d;

    invoke-direct {v6, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V

    check-cast v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;

    invoke-virtual {v0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;)V

    .line 142
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/m$e;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$e;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V

    check-cast v0, Lkotlin/e/a/b;

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lkotlin/e/a/b;)V

    .line 143
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V

    check-cast v0, Lkotlin/e/a/m;

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lkotlin/e/a/m;)V

    .line 165
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/aa;->d:Landroid/widget/Button;

    new-instance v6, Lorg/mistergroup/shouldianswer/ui/main/c/m$g;

    invoke-direct {v6, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/m$g;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/a/aa;->c:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/m$h;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$h;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    if-nez v3, :cond_5

    invoke-static {v8}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v5, v0, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;)V

    .line 181
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d()V

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 192
    :try_start_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a:Lorg/mistergroup/shouldianswer/a/aa;

    if-eqz v2, :cond_a

    .line 193
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    .line 194
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 196
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->getItemCount()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 197
    :goto_0
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->l()Z

    move-result v7

    .line 199
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/o;->f()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    iget-boolean v9, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d:Z

    if-eqz v9, :cond_3

    .line 201
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v10, "LogsFragment.updateUI - invalidating LogsLiveData due fixed permissions"

    invoke-static {v9, v10, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 202
    iget-object v9, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-eqz v9, :cond_1

    sget-object v10, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    .line 203
    :cond_1
    sget-object v9, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/ab;->a()[Lorg/mistergroup/shouldianswer/ui/main/c/j;

    move-result-object v9

    sget-object v10, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a()I

    move-result v10

    move-object v11, v1

    check-cast v11, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    aput-object v11, v9, v10

    .line 204
    iget-object v9, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-eqz v9, :cond_3

    sget-object v10, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    iget-object v11, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    if-nez v11, :cond_2

    const-string v12, "layoutManager"

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v9, v10, v11}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;)V

    :cond_3
    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    .line 207
    :goto_1
    iput-boolean v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d:Z

    .line 209
    iget-object v5, v2, Lorg/mistergroup/shouldianswer/a/aa;->f:Landroid/widget/LinearLayout;

    const-string v9, "binding.llLoadingData"

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x8

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v9

    :goto_2
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v5, v2, Lorg/mistergroup/shouldianswer/a/aa;->h:Landroid/widget/FrameLayout;

    const-string v10, "binding.llNoItems"

    invoke-static {v5, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_6

    if-eqz v3, :cond_6

    move v10, v6

    goto :goto_3

    :cond_6
    move v10, v9

    :goto_3
    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    iget-object v5, v2, Lorg/mistergroup/shouldianswer/a/aa;->k:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v10, "binding.tvEmptyListInfo"

    invoke-static {v5, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    move-result-object v10

    sget-object v11, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-eq v10, v11, :cond_7

    move v10, v6

    goto :goto_4

    :cond_7
    move v10, v9

    :goto_4
    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 214
    iget-object v5, v2, Lorg/mistergroup/shouldianswer/a/aa;->j:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v10, "binding.tvEmptyBlockListInfo"

    invoke-static {v5, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    move-result-object v3

    sget-object v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v3, v4, :cond_8

    move v3, v6

    goto :goto_5

    :cond_8
    move v3, v9

    :goto_5
    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 215
    iget-object v3, v2, Lorg/mistergroup/shouldianswer/a/aa;->g:Landroid/widget/LinearLayout;

    const-string v4, "binding.llNoDefaultPhoneApp"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/aa;->i:Landroid/widget/LinearLayout;

    const-string v3, "binding.llNoPermissions"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    move v6, v9

    :goto_6
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_a
    return-void

    :catch_0
    move-exception v2

    .line 219
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "LogsFragment.onActivityCreated"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->b()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->onAttach(Landroid/content/Context;)V

    .line 88
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "LogsFragment.onAttach"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 89
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getUserVisibleHint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 227
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/a;->h()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 228
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->values()[Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    aget-object v5, v5, v6

    sget-object v6, Lorg/mistergroup/shouldianswer/ui/main/c/n;->a:[I

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result v5

    aget v5, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "activity!!"

    packed-switch v5, :pswitch_data_0

    .line 262
    :try_start_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    goto/16 :goto_0

    .line 259
    :pswitch_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->g()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.permission.WRITE_CALL_LOG"

    .line 260
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->requestPermissions([Ljava/lang/String;I)V

    .line 262
    :cond_1
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/ad;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;

    invoke-direct {v1, v2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;-><init>(Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/main/c/m;Landroid/view/MenuItem;)V

    move-object v6, v1

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 250
    :pswitch_1
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/contact"

    .line 251
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    .line 252
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 255
    :try_start_3
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, p1, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    goto/16 :goto_1

    .line 246
    :pswitch_2
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1, v4}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :pswitch_3
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 237
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 235
    :pswitch_5
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    const-string v3, "context!!"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    goto :goto_1

    .line 231
    :pswitch_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/y;->a()Landroid/content/ClipboardManager;

    move-result-object p1

    const-string v1, "phone number"

    .line 232
    check-cast v1, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 233
    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1

    .line 262
    :goto_0
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 294
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, p1, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x7f0e0000

    const/4 v1, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a003d

    .line 319
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f0a003e

    .line 320
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const v3, 0x7f0a0039

    .line 322
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 323
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    sget-object v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v0, v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 325
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/c/m$j;

    invoke-direct {v5, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    check-cast v5, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    const v3, 0x7f0a003b

    .line 332
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 333
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    sget-object v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v0, v5, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 335
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/c/m$k;

    invoke-direct {v5, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$k;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    check-cast v5, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    const v3, 0x7f0a003c

    .line 342
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 343
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    sget-object v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->d:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v0, v5, :cond_7

    move v5, v4

    goto :goto_3

    :cond_7
    move v5, v2

    :goto_3
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 345
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/c/m$l;

    invoke-direct {v5, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$l;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    check-cast v5, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_8
    const v3, 0x7f0a003a

    .line 352
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 353
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    sget-object v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v0, v5, :cond_9

    move v2, v4

    :cond_9
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 355
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;

    invoke-direct {v2, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    check-cast v2, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 365
    :cond_a
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 367
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "LogsFragment.onCreateView"

    const/4 v2, 0x2

    invoke-static {p3, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const p3, 0x7f0d0038

    const/4 v1, 0x0

    .line 76
    invoke-static {p1, p3, p2, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/aa;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a:Lorg/mistergroup/shouldianswer/a/aa;

    .line 77
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a:Lorg/mistergroup/shouldianswer/a/aa;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/aa;->d()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 303
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;->onPause()V

    .line 304
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->j()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 309
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/main/d;->onResume()V

    .line 310
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m;->f:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->i()V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .line 93
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogsFragment.setUserVisibleHint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 94
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/d;->setUserVisibleHint(Z)V

    .line 95
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c()V

    :cond_0
    return-void
.end method
