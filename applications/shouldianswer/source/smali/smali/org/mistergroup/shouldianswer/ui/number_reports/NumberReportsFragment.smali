.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "NumberReportsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/ba;

.field private d:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

.field private e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

.field private f:Lorg/mistergroup/shouldianswer/model/NumberInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/ui/number_reports/f;
    .locals 1

    .line 29
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    if-nez p0, :cond_0

    const-string v0, "numberReviewsAdapter"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/a/ba;
    .locals 1

    .line 29
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "numberInfo"

    const-string v3, "binding.recyclerView"

    const-string v4, "activity"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 42
    :try_start_0
    move-object v6, v1

    check-cast v6, Landroidx/fragment/app/Fragment;

    invoke-static {v6}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/v;

    move-result-object v6

    const-class v7, Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    invoke-virtual {v6, v7}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object v6

    const-string v7, "ViewModelProviders.of(th\u2026ewsViewModel::class.java)"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    .line 43
    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "model"

    if-nez v6, :cond_0

    :try_start_1
    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v8, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;

    invoke-direct {v8, v1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)V

    check-cast v8, Lkotlin/e/a/b;

    invoke-virtual {v6, v8}, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a(Lkotlin/e/a/b;)V

    .line 48
    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    if-nez v6, :cond_1

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v8, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;

    invoke-direct {v8, v1, v2}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v8, Lkotlin/e/a/b;

    invoke-virtual {v6, v8}, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->b(Lkotlin/e/a/b;)V

    .line 62
    new-instance v6, Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    if-nez v8, :cond_2

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->b()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;-><init>(Ljava/util/List;)V

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    .line 63
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, "binding"

    if-nez v8, :cond_3

    :try_start_2
    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ba;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v11, "numberReviewsAdapter"

    if-nez v10, :cond_4

    :try_start_3
    invoke-static {v11}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 65
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;

    if-nez v8, :cond_5

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ba;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 67
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    if-nez v3, :cond_6

    invoke-static {v11}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a(Z)V

    .line 68
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    if-nez v3, :cond_7

    invoke-static {v11}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3, v5}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 71
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 72
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v8, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 73
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v10, "uri"

    .line 74
    invoke-static {v8, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    .line 75
    new-instance v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v10, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 78
    :cond_8
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 79
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 80
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    :try_start_5
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 87
    :cond_9
    :goto_0
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v0, :cond_a

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void

    .line 93
    :cond_a
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v0, :cond_10

    .line 94
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->b()Landroidx/appcompat/app/a;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    sget-object v12, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v12, 0x7f1001cc

    invoke-virtual {v1, v12}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getString(R.string.reports_for___)"

    invoke-static {v12, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v10

    array-length v3, v6

    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v3, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    .line 97
    :cond_b
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;

    if-nez v3, :cond_c

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ba;->d:Landroid/widget/ProgressBar;

    const-string v6, "binding.progressBar"

    invoke-static {v3, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    if-nez v3, :cond_d

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3, v0, v10}, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Z)V

    .line 99
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    if-nez v3, :cond_e

    invoke-static {v11}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    new-instance v6, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;

    invoke-direct {v6, v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v6, Lkotlin/e/a/a;

    invoke-virtual {v3, v6}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a(Lkotlin/e/a/a;)V

    .line 120
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->e:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    if-nez v0, :cond_f

    invoke-static {v11}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;

    invoke-direct {v3, v1, v2}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v3, Lkotlin/e/a/a;

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->b(Lkotlin/e/a/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 126
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_10
    :goto_1
    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ba;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d004d

    const/4 v0, 0x0

    .line 36
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ba;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;

    .line 37
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c:Lorg/mistergroup/shouldianswer/a/ba;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ba;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
