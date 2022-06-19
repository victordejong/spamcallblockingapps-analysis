.class public Lcom/mglab/scm/visual/FragmentStat;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mglab/scm/visual/FragmentStat$b;,
        Lcom/mglab/scm/visual/FragmentStat$a;
    }
.end annotation


# static fields
.field public static g:Lo8/e;

.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo8/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public b:Z

.field public c:J

.field public d:I

.field public e:Z

.field public f:Lf8/j;

.field public fab_clear:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public filterImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mList:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public progress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_blocked:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_checked:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_empty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/visual/FragmentStat;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mglab/scm/visual/FragmentStat;->b:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/mglab/scm/visual/FragmentStat;->d:I

    .line 4
    iput-boolean v0, p0, Lcom/mglab/scm/visual/FragmentStat;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->c()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lf8/g;->G(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->tv_blocked:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->tv_checked:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->g(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->h(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->e()V

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->mList:Landroid/widget/ListView;

    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->tv_empty:Landroid/widget/TextView;

    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->fab_clear:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/h;->M(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 10
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    const v1, 0x7f11002f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object v0

    check-cast v0, Lf/j;

    invoke-virtual {v0}, Lf/j;->s()Lf/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lf/a;->p(I)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    new-instance v0, Lo8/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    .line 5
    const-class v5, Lh8/l;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lf8/h;->a0(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eq v6, v8, :cond_1

    if-eq v6, v7, :cond_0

    new-array v2, v1, [Lx8/a;

    .line 8
    new-instance v6, Lw8/o;

    invoke-direct {v6, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 9
    new-instance v2, Lw8/g;

    invoke-direct {v2, v6, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v5, v8, [Lw8/n;

    .line 10
    sget-object v6, Lh8/m;->n:Lx8/b;

    invoke-virtual {v6, v9}, Lx8/b;->j(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v5, v1

    .line 11
    new-instance v6, Lw8/r;

    invoke-direct {v6, v2, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 12
    sget-object v2, Lh8/m;->j:Lx8/c;

    invoke-virtual {v6, v2, v1}, Lw8/r;->o(Lx8/a;Z)Lw8/r;

    invoke-virtual {v6}, Lw8/r;->l()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v6, v1, [Lx8/a;

    .line 13
    new-instance v10, Lw8/o;

    invoke-direct {v10, v6}, Lw8/o;-><init>([Lx8/a;)V

    .line 14
    new-instance v6, Lw8/g;

    invoke-direct {v6, v10, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v5, v7, [Lw8/n;

    .line 15
    sget-object v10, Lh8/m;->i:Lx8/b;

    invoke-virtual {v10, v2}, Lx8/b;->i(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v5, v1

    sget-object v2, Lh8/m;->n:Lx8/b;

    invoke-virtual {v2, v9}, Lx8/b;->j(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v5, v8

    .line 16
    new-instance v2, Lw8/r;

    invoke-direct {v2, v6, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 17
    sget-object v5, Lh8/m;->j:Lx8/c;

    invoke-virtual {v2, v5, v1}, Lw8/r;->o(Lx8/a;Z)Lw8/r;

    invoke-virtual {v2}, Lw8/r;->l()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-array v6, v1, [Lx8/a;

    .line 18
    new-instance v10, Lw8/o;

    invoke-direct {v10, v6}, Lw8/o;-><init>([Lx8/a;)V

    .line 19
    new-instance v6, Lw8/g;

    invoke-direct {v6, v10, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v5, v7, [Lw8/n;

    .line 20
    sget-object v10, Lh8/m;->i:Lx8/b;

    invoke-virtual {v10, v2}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v5, v1

    sget-object v2, Lh8/m;->n:Lx8/b;

    invoke-virtual {v2, v9}, Lx8/b;->j(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v5, v8

    .line 21
    new-instance v2, Lw8/r;

    invoke-direct {v2, v6, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 22
    sget-object v5, Lh8/m;->j:Lx8/c;

    invoke-virtual {v2, v5, v1}, Lw8/r;->o(Lx8/a;Z)Lw8/r;

    invoke-virtual {v2}, Lw8/r;->l()Ljava/util/List;

    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    .line 24
    iget-object v6, v5, Lh8/l;->g:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 25
    iget-object v6, v5, Lh8/l;->j:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, v5, Lh8/l;->e:Ljava/sql/Date;

    invoke-static {v6, v8}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v5, Lh8/l;->e:Ljava/sql/Date;

    invoke-static {v2, v6}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 28
    iget-object v6, v5, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/sql/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 29
    new-instance v6, Lo8/f;

    const v8, 0x7f110208

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lo8/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_3
    iget-object v6, v5, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/sql/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 31
    new-instance v6, Lo8/f;

    const v8, 0x7f110212

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lo8/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_4
    new-instance v6, Lo8/f;

    invoke-direct {v6, v2}, Lo8/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_5
    :goto_2
    new-instance v6, Lcom/mglab/scm/visual/CallItem;

    invoke-direct {v6, v5}, Lcom/mglab/scm/visual/CallItem;-><init>(Lh8/l;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 35
    invoke-direct {v0, v3, v4}, Lo8/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 36
    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentStat;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->a()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->a0(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->filterImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->filterImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->filterImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public filterClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lf8/h;->a0(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "show_filter"

    invoke-static {p1, v3, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->e()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->a0(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const p1, 0x7f1100d5

    goto :goto_0

    :cond_1
    const p1, 0x7f1100d4

    goto :goto_0

    :cond_2
    const p1, 0x7f1100d3

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lf8/g;->K(Landroid/content/Context;Landroid/view/View;I)V

    .line 7
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->d()V

    return-void
.end method

.method public onBlockedTextViewClick()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/mglab/scm/visual/FragmentStat;->c:J

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_2

    .line 3
    iget v1, p0, Lcom/mglab/scm/visual/FragmentStat;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mglab/scm/visual/FragmentStat;->d:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_3

    .line 4
    iget-boolean v1, p0, Lcom/mglab/scm/visual/FragmentStat;->e:Z

    if-nez v1, :cond_3

    .line 5
    iput-boolean v2, p0, Lcom/mglab/scm/visual/FragmentStat;->e:Z

    .line 6
    new-instance v1, Le2/g$a;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const-string v2, "Debug code entry"

    .line 8
    iput-object v2, v1, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v2, 0x7f06005b

    .line 9
    invoke-virtual {v1, v2}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v0, :cond_0

    const v3, 0x7f060091

    goto :goto_0

    :cond_0
    const v3, 0x7f06005e

    .line 10
    :goto_0
    invoke-virtual {v1, v3}, Le2/g$a;->a(I)Le2/g$a;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08010f

    .line 12
    invoke-static {v3, v4}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v4

    .line 14
    invoke-static {v3, v4}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 15
    iput-object v3, v1, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const v0, 0x7f06005b

    goto :goto_1

    :cond_1
    const v0, 0x7f060033

    .line 16
    :goto_1
    invoke-virtual {v1, v0}, Le2/g$a;->f(I)Le2/g$a;

    .line 17
    invoke-virtual {v1, v2}, Le2/g$a;->c(I)Le2/g$a;

    .line 18
    iput-boolean v5, v1, Le2/g$a;->y:Z

    .line 19
    iput-boolean v5, v1, Le2/g$a;->z:Z

    const v0, 0x7f0c0052

    .line 20
    invoke-virtual {v1, v0, v5}, Le2/g$a;->d(IZ)Le2/g$a;

    const v0, 0x7f11018f

    .line 21
    invoke-virtual {v1, v0}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v0, Lo8/v;

    invoke-direct {v0, p0, v5}, Lo8/v;-><init>(Lcom/mglab/scm/visual/FragmentStat;I)V

    .line 22
    iput-object v0, v1, Le2/g$a;->u:Le2/g$c;

    .line 23
    sget-object v0, Ls2/c;->h:Ls2/c;

    .line 24
    iput-object v0, v1, Le2/g$a;->v:Le2/g$c;

    const v0, 0x7f11006e

    .line 25
    invoke-virtual {v1, v0}, Le2/g$a;->g(I)Le2/g$a;

    invoke-virtual {v1}, Le2/g$a;->j()Le2/g;

    move-result-object v0

    .line 26
    iget-object v1, v0, Le2/g;->c:Le2/g$a;

    iget-object v1, v1, Le2/g$a;->o:Landroid/view/View;

    .line 27
    sget-object v2, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    const v2, 0x7f090299

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 29
    new-instance v2, Lcom/mglab/scm/visual/FragmentStat$b;

    invoke-direct {v2, v0}, Lcom/mglab/scm/visual/FragmentStat$b;-><init>(Le2/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 30
    :cond_2
    iput v5, p0, Lcom/mglab/scm/visual/FragmentStat;->d:I

    .line 31
    iput-boolean v5, p0, Lcom/mglab/scm/visual/FragmentStat;->e:Z

    .line 32
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mglab/scm/visual/FragmentStat;->c:J

    return-void
.end method

.method public onClearClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lcom/mglab/scm/visual/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mglab/scm/visual/c;->h(I)V

    return-void
.end method

.method public onClearStatClick()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 2
    new-instance v1, Le2/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11002e

    .line 3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iput-object v2, v1, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v2, 0x7f06005b

    .line 5
    invoke-virtual {v1, v2}, Le2/g$a;->l(I)Le2/g$a;

    const v2, 0x7f06005e

    if-eqz v0, :cond_0

    const v3, 0x7f060091

    goto :goto_0

    :cond_0
    const v3, 0x7f06005e

    .line 6
    :goto_0
    invoke-virtual {v1, v3}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f060033

    .line 7
    :goto_1
    invoke-virtual {v1, v2}, Le2/g$a;->c(I)Le2/g$a;

    const v0, 0x7f0800e6

    .line 8
    invoke-virtual {v1, v0}, Le2/g$a;->e(I)Le2/g$a;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, v1, Le2/g$a;->y:Z

    .line 10
    iput-boolean v0, v1, Le2/g$a;->z:Z

    const v0, 0x7f11018f

    .line 11
    invoke-virtual {v1, v0}, Le2/g$a;->i(I)Le2/g$a;

    const v0, 0x7f11006e

    .line 12
    invoke-virtual {v1, v0}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v0

    new-instance v1, Ly2/p;

    invoke-direct {v1, p0}, Ly2/p;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v1, v0, Le2/g$a;->u:Le2/g$c;

    .line 14
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    :cond_0
    const p3, 0x7f0c0061

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentStat;->a:Lbutterknife/Unbinder;

    .line 4
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentStat;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    .line 5
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentStat;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p3, 0x4

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 6
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/b;->k(Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-boolean p2, p0, Lcom/mglab/scm/visual/FragmentStat;->b:Z

    if-eqz p2, :cond_2

    .line 10
    new-instance p2, Lcom/mglab/scm/visual/FragmentStat$a;

    invoke-direct {p2, p0}, Lcom/mglab/scm/visual/FragmentStat$a;-><init>(Lcom/mglab/scm/visual/FragmentStat;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Integer;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    iput-boolean v0, p0, Lcom/mglab/scm/visual/FragmentStat;->b:Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->d()V

    .line 14
    :goto_0
    new-instance p2, Lf8/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object p3

    invoke-direct {p2, p3}, Lf8/j;-><init>(Landroidx/fragment/app/o;)V

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentStat;->f:Lf8/j;

    .line 15
    sget-object v0, Lbutterknife/ButterKnife;->a:Ljava/util/Map;

    .line 16
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-static {p3, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p3

    .line 18
    iput-object p3, p2, Lf8/j;->d:Lbutterknife/Unbinder;

    .line 19
    :try_start_0
    invoke-virtual {p2}, Lf8/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p1

    :array_0
    .array-data 4
        0x7f06005b
        0x7f06005b
        0x7f06005b
        0x7f06005b
    .end array-data
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat;->f:Lf8/j;

    .line 6
    iget-object v1, v0, Lf8/j;->d:Lbutterknife/Unbinder;

    invoke-interface {v1}, Lbutterknife/Unbinder;->a()V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lf8/j;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 9
    .annotation runtime Lbutterknife/OnItemClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mglab/scm/visual/CallItem;

    .line 3
    invoke-static {v6}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v7

    .line 4
    new-instance v8, Lcom/cocosw/bottomsheet/h$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/cocosw/bottomsheet/h$c;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f090398

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 6
    iput-object p1, v8, Lcom/cocosw/bottomsheet/h$c;->d:Ljava/lang/CharSequence;

    .line 7
    new-instance p1, Lo8/k;

    .line 8
    iget-object v0, p2, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p2, Lcom/mglab/scm/visual/CallItem;->k:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lh8/l;->v:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x64

    const v0, 0x7f060059

    .line 11
    invoke-static {v6, v0}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v5

    move-object v0, p1

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lo8/k;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual {p1}, Lo8/k;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 12
    iput-object p1, v8, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    .line 13
    new-instance p1, Lo8/s;

    invoke-direct {p1, p0, p2, v6}, Lo8/s;-><init>(Lcom/mglab/scm/visual/FragmentStat;Lcom/mglab/scm/visual/CallItem;Landroid/content/Context;)V

    .line 14
    iput-object p1, v8, Lcom/cocosw/bottomsheet/h$c;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 15
    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    const v0, 0x7f080124

    .line 16
    invoke-static {v6, v0}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11003a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, p1, v0, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    const/4 p1, 0x6

    const v0, 0x7f0800eb

    .line 18
    invoke-static {v6, v0}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f110041

    .line 20
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v8, p1, v0, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    .line 22
    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_1

    const p1, 0x7f0800ca

    .line 23
    invoke-static {v6, p1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f110037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, p1, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    goto :goto_1

    :cond_1
    const p1, 0x7f0800cb

    .line 25
    invoke-static {v6, p1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f11003f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, p1, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    .line 27
    :goto_1
    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x3

    if-nez p1, :cond_2

    const p1, 0x7f080127

    .line 28
    invoke-static {v6, p1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f110038

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, p1, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    goto :goto_2

    :cond_2
    const p1, 0x7f080128

    .line 30
    invoke-static {v6, p1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f110040

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, p1, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    :cond_3
    :goto_2
    const/16 p1, 0x8

    const v0, 0x7f080129

    .line 32
    invoke-static {v6, v0}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f11003b

    .line 34
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v8, p1, v0, v2}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    .line 36
    invoke-static {v6}, Lf8/h;->J(Landroid/content/Context;)Z

    move-result p1

    .line 37
    invoke-static {v6}, Lf8/h;->I(Landroid/content/Context;)Z

    move-result v0

    .line 38
    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result p2

    const v2, 0x7f06005b

    if-nez p2, :cond_5

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 p2, 0x4

    const v0, 0x7f080111

    .line 39
    invoke-static {v6, v0}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    invoke-static {v6, v2}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v3

    .line 41
    invoke-static {v0, v3}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "Debug: "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 42
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v8, p2, v0, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    :cond_5
    if-eqz p1, :cond_6

    const/4 p1, 0x5

    const p2, 0x1080040

    .line 44
    invoke-static {v6, p2}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 45
    invoke-static {v6, v2}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 46
    invoke-static {p2, v0}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "Dev: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f11003c

    .line 47
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v8, p1, p2, v0}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    :cond_6
    const/4 p1, 0x7

    const p2, 0x7f0800fc

    .line 49
    invoke-static {v6, p2}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f11003d

    .line 51
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v8, p1, p2, v0}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    if-eqz v7, :cond_7

    const p1, 0x7f12011c

    .line 53
    iput p1, v8, Lcom/cocosw/bottomsheet/h$c;->c:I

    .line 54
    :cond_7
    invoke-virtual {v8}, Lcom/cocosw/bottomsheet/h$c;->b()Lcom/cocosw/bottomsheet/h;

    return-void
.end method

.method public onItemLongClick(I)Z
    .locals 3
    .annotation runtime Lbutterknife/OnItemLongClick;
    .end annotation

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mglab/scm/visual/CallItem;

    .line 2
    iget-boolean v0, p1, Lcom/mglab/scm/visual/CallItem;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mglab/scm/visual/CallItem;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v0, v0, Lh8/l;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p1

    const-string v2, "clipboard"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v2, 0x0

    .line 5
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110185

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method public onMessageEventCheckNumber(Lk8/c;)V
    .locals 4
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lk8/c;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x7f12012e

    goto :goto_0

    :cond_0
    const v0, 0x7f12000a

    .line 4
    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f11003c

    .line 5
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "android:drawable/ic_menu_help"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lo8/u;->a:Lo8/u;

    const-string v2, "Ok"

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onMessageEventFragmentRefresh(Lk8/k;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public onMessageEventFragmentStatAddCall(Lk8/i;)V
    .locals 4
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Lk8/i;->a:Lcom/mglab/scm/visual/CallItem;

    .line 2
    iget-object v1, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v1, v1, Lh8/l;->b:I

    .line 3
    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f110208

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo8/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lo8/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo8/f;

    .line 7
    iget-object v0, v0, Lo8/f;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    :cond_0
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    new-instance v3, Lo8/f;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lo8/f;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :cond_1
    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    const/4 v1, 0x1

    iget-object v2, p1, Lk8/i;->a:Lcom/mglab/scm/visual/CallItem;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p1, Lk8/i;->a:Lcom/mglab/scm/visual/CallItem;

    .line 12
    iget-boolean p1, p1, Lcom/mglab/scm/visual/CallItem;->b:Z

    .line 13
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->a()V

    return-void
.end method

.method public onMessageEventFragmentStatDeleteCall(Lk8/j;)V
    .locals 4
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-class v0, Lo8/f;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    sget-object v2, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo8/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mglab/scm/visual/CallItem;

    .line 4
    iget-object v2, v2, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v2, v2, Lh8/l;->b:I

    .line 5
    iget-object v3, p1, Lk8/j;->a:Lcom/mglab/scm/visual/CallItem;

    .line 6
    iget-object v3, v3, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v3, v3, Lh8/l;->b:I

    if-ne v2, v3, :cond_1

    .line 7
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo8/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v1, p1, :cond_0

    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo8/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    :cond_0
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 11
    :cond_2
    :goto_1
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onMessageEventFragmentStatUpdateCall(Lk8/m;)V
    .locals 3
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo8/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mglab/scm/visual/CallItem;

    .line 4
    iget-object v1, v1, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v1, v1, Lh8/l;->b:I

    .line 5
    iget-object v2, p1, Lk8/m;->a:Lcom/mglab/scm/visual/CallItem;

    .line 6
    iget-object v2, v2, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v2, v2, Lh8/l;->b:I

    if-ne v1, v2, :cond_0

    .line 7
    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    iget-object p1, p1, Lk8/m;->a:Lcom/mglab/scm/visual/CallItem;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onMessageEventFragmentStatUpdateCalls(Lk8/n;)V
    .locals 6
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->h:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo8/d;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/mglab/scm/visual/CallItem;

    const/4 v1, 0x0

    new-array v2, v1, [Lx8/a;

    .line 5
    new-instance v3, Lw8/o;

    invoke-direct {v3, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 6
    const-class v2, Lh8/l;

    .line 7
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lw8/n;

    .line 8
    sget-object v3, Lh8/m;->g:Lx8/b;

    .line 9
    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v5, v5, Lh8/l;->b:I

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v2, v1

    .line 11
    new-instance v1, Lw8/r;

    invoke-direct {v1, v4, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 12
    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/l;

    if-eqz v1, :cond_0

    .line 13
    iget-object v2, v1, Lh8/l;->h:Ljava/lang/String;

    .line 14
    iget-boolean v3, v0, Lcom/mglab/scm/visual/CallItem;->f:Z

    if-eqz v3, :cond_1

    .line 15
    iput-object v2, v0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_1
    iget-object v3, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iput-object v2, v3, Lh8/l;->h:Ljava/lang/String;

    .line 17
    :goto_1
    iget-object v1, v1, Lh8/l;->v:Ljava/lang/String;

    .line 18
    iget-object v2, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    if-eqz v2, :cond_2

    .line 19
    iput-object v1, v2, Lh8/l;->v:Ljava/lang/String;

    .line 20
    :cond_2
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->k:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_3
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->a()V

    return-void
.end method

.method public onMessageEventSimIconColorChanged(Lk8/u;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onMessageEventragmentStatReloadCalls(Lk8/l;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lk8/l;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->d()V

    return-void
.end method

.method public onResume()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    const-class v0, Lh8/l;

    invoke-super/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->y(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v9, 0x7f060091

    const v10, 0x7f06005e

    const/16 v11, 0xa

    const v12, 0x7f06005b

    const v13, 0x7f0800ee

    if-eq v3, v11, :cond_a

    const/16 v11, 0x64

    const v14, 0x7f11018f

    if-eq v3, v11, :cond_7

    const/16 v11, 0x3e8

    if-eq v3, v11, :cond_4

    const/16 v11, 0x1a0a

    if-eq v3, v11, :cond_0

    goto/16 :goto_8

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->e0(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v3

    .line 7
    new-instance v11, Le2/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v11, v15}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v15, 0x7f11002a

    .line 8
    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 9
    iput-object v15, v11, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v11, v12}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v4, :cond_1

    const v15, 0x7f060091

    goto :goto_0

    :cond_1
    const v15, 0x7f06005e

    .line 11
    :goto_0
    invoke-virtual {v11, v15}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v4, :cond_2

    const v4, 0x7f06005e

    goto :goto_1

    :cond_2
    const v4, 0x7f060033

    .line 12
    :goto_1
    invoke-virtual {v11, v4}, Le2/g$a;->c(I)Le2/g$a;

    .line 13
    invoke-virtual {v11, v13}, Le2/g$a;->e(I)Le2/g$a;

    const v4, 0x7f11002b

    new-array v15, v5, [Ljava/lang/Object;

    if-nez v3, :cond_3

    const-string v3, "null"

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lf8/h;->e0(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v8

    invoke-static {v3, v8}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v15, v6

    .line 15
    invoke-virtual {v1, v4, v15}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 16
    iput-boolean v6, v11, Le2/g$a;->y:Z

    .line 17
    iput-boolean v6, v11, Le2/g$a;->z:Z

    .line 18
    invoke-virtual {v11, v14}, Le2/g$a;->i(I)Le2/g$a;

    sget-object v3, Lz2/l;->j:Lz2/l;

    .line 19
    iput-object v3, v11, Le2/g$a;->u:Le2/g$c;

    .line 20
    invoke-virtual {v11}, Le2/g$a;->j()Le2/g;

    goto :goto_5

    .line 21
    :cond_4
    new-instance v3, Le2/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v8, 0x7f11002c

    .line 22
    invoke-virtual {v1, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 23
    iput-object v8, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v3, v12}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v4, :cond_5

    const v8, 0x7f060091

    goto :goto_3

    :cond_5
    const v8, 0x7f06005e

    .line 25
    :goto_3
    invoke-virtual {v3, v8}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v4, :cond_6

    const v4, 0x7f06005e

    goto :goto_4

    :cond_6
    const v4, 0x7f060033

    .line 26
    :goto_4
    invoke-virtual {v3, v4}, Le2/g$a;->c(I)Le2/g$a;

    .line 27
    invoke-virtual {v3, v13}, Le2/g$a;->e(I)Le2/g$a;

    const v4, 0x7f11002d

    .line 28
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 29
    iput-boolean v6, v3, Le2/g$a;->y:Z

    .line 30
    iput-boolean v6, v3, Le2/g$a;->z:Z

    .line 31
    invoke-virtual {v3, v14}, Le2/g$a;->i(I)Le2/g$a;

    sget-object v4, Ls2/c;->i:Ls2/c;

    .line 32
    iput-object v4, v3, Le2/g$a;->u:Le2/g$c;

    .line 33
    invoke-virtual {v3}, Le2/g$a;->j()Le2/g;

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 34
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "lastudsd"

    .line 35
    invoke-static {v3, v8}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v15

    const-wide/32 v17, 0x5265c00

    add-long v15, v15, v17

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v3, v15, v17

    if-gez v3, :cond_b

    .line 37
    new-instance v3, Le2/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v11, 0x7f110032

    .line 38
    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 39
    iput-object v11, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {v3, v12}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v4, :cond_8

    const v11, 0x7f060091

    goto :goto_6

    :cond_8
    const v11, 0x7f06005e

    .line 41
    :goto_6
    invoke-virtual {v3, v11}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v4, :cond_9

    const v4, 0x7f06005e

    goto :goto_7

    :cond_9
    const v4, 0x7f060033

    .line 42
    :goto_7
    invoke-virtual {v3, v4}, Le2/g$a;->c(I)Le2/g$a;

    .line 43
    invoke-virtual {v3, v13}, Le2/g$a;->e(I)Le2/g$a;

    const v4, 0x7f110033

    .line 44
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 45
    iput-boolean v6, v3, Le2/g$a;->y:Z

    .line 46
    iput-boolean v6, v3, Le2/g$a;->z:Z

    .line 47
    invoke-virtual {v3, v14}, Le2/g$a;->i(I)Le2/g$a;

    .line 48
    invoke-virtual {v3}, Le2/g$a;->j()Le2/g;

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 50
    invoke-static {v3, v8, v14, v15}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_8

    .line 51
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "lastntfsd"

    .line 52
    invoke-static {v3, v4}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v17, 0x240c8400

    add-long v14, v14, v17

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v3, v14, v17

    if-gez v3, :cond_b

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mglab/scm/visual/MGNotification;->c(Landroid/content/Context;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 56
    invoke-static {v3, v4, v14, v15}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_b
    :goto_8
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_18

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "psbb"

    .line 58
    invoke-static {v3, v4, v7}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-static {v3}, Lf8/g;->I(Landroid/content/Context;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/g;->N(Landroid/content/Context;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "abmsuggest"

    .line 62
    invoke-static {v3, v4, v6}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const v4, 0x7f11006e

    const v8, 0x7f11009f

    if-nez v3, :cond_13

    new-array v3, v6, [Lx8/a;

    .line 63
    new-instance v11, Lw8/o;

    invoke-direct {v11, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 64
    new-instance v3, Lw8/g;

    invoke-direct {v3, v11, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v11, 0x2

    new-array v11, v11, [Lw8/n;

    .line 65
    sget-object v14, Lh8/m;->v:Lx8/b;

    .line 66
    invoke-virtual {v14, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    aput-object v7, v11, v6

    sget-object v7, Lh8/m;->i:Lx8/b;

    const/16 v14, -0x29a

    .line 67
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    aput-object v7, v11, v5

    .line 68
    new-instance v7, Lw8/r;

    invoke-direct {v7, v3, v11}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 69
    invoke-virtual {v7}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/l;

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_12

    .line 70
    invoke-static {}, Lh8/q;->d()Z

    move-result v3

    if-nez v3, :cond_12

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    const v11, 0x7f1100c8

    if-lt v3, v7, :cond_f

    const/16 v7, 0x1c

    if-ge v3, v7, :cond_f

    .line 72
    new-instance v3, Le2/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    iput-object v7, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {v3, v12}, Le2/g$a;->l(I)Le2/g$a;

    .line 76
    invoke-virtual {v3, v13}, Le2/g$a;->e(I)Le2/g$a;

    if-eqz v2, :cond_d

    const v7, 0x7f060091

    goto :goto_b

    :cond_d
    const v7, 0x7f06005e

    .line 77
    :goto_b
    invoke-virtual {v3, v7}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v2, :cond_e

    const v7, 0x7f06005e

    goto :goto_c

    :cond_e
    const v7, 0x7f060033

    .line 78
    :goto_c
    invoke-virtual {v3, v7}, Le2/g$a;->c(I)Le2/g$a;

    const v7, 0x7f1100c7

    .line 79
    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 80
    iput-boolean v6, v3, Le2/g$a;->y:Z

    .line 81
    iput-boolean v6, v3, Le2/g$a;->z:Z

    .line 82
    invoke-virtual {v3, v8}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v7, Ly2/l;

    const/16 v11, 0xc

    invoke-direct {v7, v1, v11}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 83
    iput-object v7, v3, Le2/g$a;->u:Le2/g$c;

    .line 84
    invoke-virtual {v3, v4}, Le2/g$a;->g(I)Le2/g$a;

    .line 85
    invoke-virtual {v3}, Le2/g$a;->j()Le2/g;

    goto :goto_f

    .line 86
    :cond_f
    new-instance v3, Le2/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    iput-object v7, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v3, v12}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v2, :cond_10

    const v7, 0x7f060091

    goto :goto_d

    :cond_10
    const v7, 0x7f06005e

    .line 90
    :goto_d
    invoke-virtual {v3, v7}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v2, :cond_11

    const v7, 0x7f06005e

    goto :goto_e

    :cond_11
    const v7, 0x7f060033

    .line 91
    :goto_e
    invoke-virtual {v3, v7}, Le2/g$a;->c(I)Le2/g$a;

    .line 92
    invoke-virtual {v3, v13}, Le2/g$a;->e(I)Le2/g$a;

    const v7, 0x7f1100c6

    .line 93
    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 94
    iput-boolean v6, v3, Le2/g$a;->y:Z

    .line 95
    iput-boolean v6, v3, Le2/g$a;->z:Z

    .line 96
    invoke-virtual {v3, v8}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v7, Lz2/k;

    const/16 v11, 0x8

    invoke-direct {v7, v1, v11}, Lz2/k;-><init>(Ljava/lang/Object;I)V

    .line 97
    iput-object v7, v3, Le2/g$a;->u:Le2/g$c;

    .line 98
    invoke-virtual {v3, v4}, Le2/g$a;->g(I)Le2/g$a;

    .line 99
    invoke-virtual {v3}, Le2/g$a;->j()Le2/g;

    goto :goto_f

    .line 100
    :cond_12
    invoke-static {}, Lh8/q;->d()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->p0(Landroid/content/Context;)V

    .line 102
    :cond_13
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "preventunloadsuggest"

    .line 103
    invoke-static {v3, v7, v6}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    new-array v3, v6, [Lx8/a;

    .line 104
    new-instance v7, Lw8/o;

    invoke-direct {v7, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 105
    new-instance v3, Lw8/g;

    invoke-direct {v3, v7, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 106
    sget-object v0, Lh8/m;->g:Lx8/b;

    .line 107
    invoke-virtual {v3, v0, v6}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/l;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_11

    .line 109
    :cond_14
    iget-object v0, v0, Lh8/l;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    :goto_10
    xor-int/2addr v0, v5

    :goto_11
    if-eqz v0, :cond_18

    .line 110
    invoke-static {}, Lh8/q;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "preventunloadsuggestlastreminded"

    .line 112
    invoke-static {v0, v3}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v17

    const-wide/32 v19, 0xa4cb80

    add-long v17, v17, v19

    cmp-long v0, v14, v17

    if-lez v0, :cond_18

    .line 113
    new-instance v0, Le2/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1100c1

    .line 114
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    iput-object v3, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v0, v12}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v2, :cond_16

    goto :goto_12

    :cond_16
    const v9, 0x7f06005e

    .line 117
    :goto_12
    invoke-virtual {v0, v9}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v2, :cond_17

    goto :goto_13

    :cond_17
    const v10, 0x7f060033

    .line 118
    :goto_13
    invoke-virtual {v0, v10}, Le2/g$a;->c(I)Le2/g$a;

    .line 119
    invoke-virtual {v0, v13}, Le2/g$a;->e(I)Le2/g$a;

    const v2, 0x7f1100c0

    .line 120
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 121
    iput-boolean v6, v0, Le2/g$a;->y:Z

    .line 122
    iput-boolean v6, v0, Le2/g$a;->z:Z

    const v2, 0x7f1100b3

    .line 123
    invoke-virtual {v0, v2}, Le2/g$a;->i(I)Le2/g$a;

    sget-object v2, Lz2/o;->h:Lz2/o;

    .line 124
    iput-object v2, v0, Le2/g$a;->u:Le2/g$c;

    .line 125
    invoke-virtual {v0, v8}, Le2/g$a;->h(I)Le2/g$a;

    new-instance v2, Lo8/v;

    invoke-direct {v2, v1, v5}, Lo8/v;-><init>(Lcom/mglab/scm/visual/FragmentStat;I)V

    .line 126
    iput-object v2, v0, Le2/g$a;->w:Le2/g$c;

    .line 127
    invoke-virtual {v0, v4}, Le2/g$a;->g(I)Le2/g$a;

    .line 128
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    .line 129
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/mglab/scm/visual/FragmentStat;->a()V

    .line 130
    iget-object v0, v1, Lcom/mglab/scm/visual/FragmentStat;->f:Lf8/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :try_start_0
    iget-object v2, v0, Lf8/j;->a:Li4/b;

    .line 132
    invoke-interface {v2}, Li4/b;->d()Lr4/o;

    move-result-object v2

    new-instance v3, Lz2/k;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lz2/k;-><init>(Ljava/lang/Object;I)V

    .line 133
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lr4/c;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0, v3}, Lr4/o;->a(Ljava/util/concurrent/Executor;Lr4/b;)Lr4/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentStat;->c()V

    return-void
.end method
