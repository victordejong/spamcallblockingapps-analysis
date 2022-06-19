.class public final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;,
        Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/cu;

.field private d:Lorg/mistergroup/shouldianswer/ui/search/a;

.field private e:Ljava/lang/String;

.field private f:Lorg/mistergroup/shouldianswer/ui/main/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)Lorg/mistergroup/shouldianswer/ui/main/a;
    .locals 1

    .line 42
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-nez p0, :cond_0

    const-string v0, "model"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)Lorg/mistergroup/shouldianswer/ui/search/a;
    .locals 1

    .line 42
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    if-nez p0, :cond_0

    const-string v0, "searchAdapter"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->e()V

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method

.method private final e()V
    .locals 3

    .line 294
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cu;->d:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v1, "binding.editSearchText"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    if-nez v1, :cond_1

    const-string v2, "searchAdapter"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 9

    const-string p2, "text"

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->b()Landroidx/appcompat/app/a;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/v;

    move-result-object v0

    const-class v2, Lorg/mistergroup/shouldianswer/ui/main/a;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object v0

    const-string v2, "ViewModelProviders.of(th\u2026ityViewModel::class.java)"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/a;

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v2, "uri"

    .line 66
    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "uri.pathSegments[1]"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v2, "it"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 77
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    invoke-static {v2, p2, v0, v3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 80
    :cond_3
    :goto_1
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/ui/search/a;-><init>()V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    .line 81
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    const-string v2, "searchAdapter"

    if-nez p2, :cond_4

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V

    check-cast v3, Lkotlin/e/a/m;

    invoke-virtual {p2, v3}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lkotlin/e/a/m;)V

    .line 108
    sget-object p2, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/k;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$d;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V

    check-cast v4, Landroidx/lifecycle/q;

    invoke-virtual {p2, v3, v4}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 114
    sget-object p2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, p2

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lkotlin/c/f;

    const/4 v5, 0x0

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

    invoke-direct {p2, p0, v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;Lkotlin/c/c;)V

    move-object v6, p2

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 148
    new-instance p2, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;-><init>()V

    .line 149
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    const-string v3, "binding"

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cu;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "binding.listView"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 150
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cu;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    if-nez v4, :cond_7

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 152
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cu;->e:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 154
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$f;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;)V

    .line 162
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    if-nez p2, :cond_9

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Lkotlin/e/a/b;

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lkotlin/e/a/b;)V

    .line 198
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cu;->e:Landroidx/recyclerview/widget/RecyclerView;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 199
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez p1, :cond_b

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cu;->d:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez p1, :cond_c

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cu;->d:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$h;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$i;

    invoke-direct {p1, p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V

    .line 212
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez p2, :cond_d

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cu;->d:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez p1, :cond_e

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cu;->d:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->requestFocusFromTouch()Z

    .line 216
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->e()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cu;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 232
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/a;

    if-nez v3, :cond_0

    const-string v4, "model"

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/a;->g()Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 233
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 234
    move-object v5, v2

    check-cast v5, Lorg/mistergroup/shouldianswer/model/ac;

    .line 235
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/search/d;->a()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 236
    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/ac;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 237
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v5, v6

    .line 243
    :cond_2
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v5

    :cond_3
    if-eqz v4, :cond_b

    .line 249
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->values()[Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    aget-object p1, v3, p1

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/search/c;->b:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->ordinal()I

    move-result p1

    aget p1, v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p1, v0, :cond_a

    const-string v3, "context!!"

    if-eq p1, v1, :cond_8

    const/4 v6, 0x3

    if-eq p1, v6, :cond_7

    const/4 v6, 0x4

    if-eq p1, v6, :cond_5

    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    .line 268
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.dir/contact"

    .line 269
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone"

    .line 270
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 273
    :try_start_2
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    goto :goto_0

    .line 267
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    if-eqz v5, :cond_b

    .line 264
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 259
    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
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

    .line 261
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :cond_8
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_9
    invoke-static {v5, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v4, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    goto :goto_0

    .line 251
    :cond_a
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/y;->a()Landroid/content/ClipboardManager;

    move-result-object p1

    const-string v3, "phone number"

    .line 252
    check-cast v3, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 253
    invoke-virtual {p1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 281
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b
    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 300
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0064

    const/4 v0, 0x0

    .line 52
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/cu;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    .line 53
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c:Lorg/mistergroup/shouldianswer/a/cu;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/cu;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 288
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onDestroy()V

    .line 289
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    if-nez v0, :cond_0

    const-string v1, "searchAdapter"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->d()V

    .line 226
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    return-void
.end method
