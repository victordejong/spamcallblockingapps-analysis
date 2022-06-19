.class public final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsReportedNumbersFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/ei;

.field private d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

.field private e:Ljava/util/Observer;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->b:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->f:Z

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;)Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;)Lorg/mistergroup/shouldianswer/a/ei;
    .locals 1

    .line 25
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()V
    .locals 7

    .line 83
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ei;->g:Landroid/widget/LinearLayout;

    const-string v1, "binding.panelSyncing"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    const/4 v3, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$e;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "binding.lisReviews"

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :try_start_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    .line 43
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$b;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;)V

    check-cast v1, Lkotlin/e/a/b;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->a(Lkotlin/e/a/b;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "binding"

    if-nez v0, :cond_2

    :try_start_1
    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ei;->f:Landroid/widget/LinearLayout;

    const-string v2, "binding.llNoItems"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ei;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 48
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ei;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 50
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$c;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;)V

    check-cast p2, Ljava/util/Observer;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->e:Ljava/util/Observer;

    .line 53
    sget-object p2, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->e:Ljava/util/Observer;

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/aa;->addObserver(Ljava/util/Observer;)V

    .line 54
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d()V

    .line 56
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez p2, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ei;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ei;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0002

    .line 106
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d007b

    const/4 v0, 0x0

    .line 36
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ei;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    .line 37
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->c:Lorg/mistergroup/shouldianswer/a/ei;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ei;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0031

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f10013c

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.help_url_settings_lists)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 2

    .line 122
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onStart()V

    .line 123
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->d()V

    .line 124
    sget-object v0, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->e:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/aa;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 128
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onStop()V

    .line 129
    sget-object v0, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->e:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/aa;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method
