.class public Lcom/mglab/scm/visual/FragmentBlackList;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# static fields
.field public static f:Lo8/b;


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo8/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/github/clans/fab/FloatingActionButton;

.field public d:Lcom/github/clans/fab/FloatingActionMenu;

.field public final e:Lea/b;

.field public emptyTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mList:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/mglab/scm/visual/FragmentBlackList$a;

    invoke-direct {v0, p0}, Lcom/mglab/scm/visual/FragmentBlackList$a;-><init>(Lcom/mglab/scm/visual/FragmentBlackList;)V

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->e:Lea/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo8/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/mglab/scm/visual/BWLItem;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mglab/scm/visual/BWLItem;

    .line 4
    iget-boolean v2, v2, Lcom/mglab/scm/visual/BWLItem;->d:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo8/a;",
            ">;)",
            "Ljava/util/List<",
            "Lo8/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    new-array v0, v0, [Lx8/a;

    .line 2
    new-instance v1, Lw8/o;

    invoke-direct {v1, v0}, Lw8/o;-><init>([Lx8/a;)V

    .line 3
    const-class v0, Lh8/c;

    .line 4
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 5
    sget-object v0, Lh8/d;->j:Lx8/b;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v2, v0, v1}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v0

    sget-object v2, Lh8/d;->h:Lx8/b;

    invoke-virtual {v0, v2, v1}, Lw8/r;->o(Lx8/a;Z)Lw8/r;

    invoke-virtual {v0}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, -0x3039

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/c;

    .line 8
    iget v3, v2, Lh8/c;->f:I

    if-eq v1, v3, :cond_0

    .line 9
    new-instance v1, Lcom/mglab/scm/visual/BWLHeader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Ln8/d;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mglab/scm/visual/BWLHeader;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 10
    :cond_0
    new-instance v3, Lcom/mglab/scm/visual/BWLItem;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/mglab/scm/visual/BWLItem;-><init>(Lh8/c;Lh8/w;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "IntentReset"
        }
    .end annotation

    const p3, 0x7f0c0057

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090160

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->d:Lcom/github/clans/fab/FloatingActionMenu;

    const p2, 0x7f090157

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/clans/fab/FloatingActionButton;

    const p3, 0x7f09015a

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f090158

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->c:Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f09015f

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f090161

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    .line 8
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->d:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 9
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->d:Lcom/github/clans/fab/FloatingActionMenu;

    new-instance v5, Ly2/p;

    invoke-direct {v5, p0}, Ly2/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Lcom/github/clans/fab/FloatingActionMenu;->setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$c;)V

    .line 10
    new-instance v3, Lo8/m;

    invoke-direct {v3, p0, v0}, Lo8/m;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lo8/n;

    invoke-direct {v1, p0, v0}, Lo8/n;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v2, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Lo8/o;

    invoke-direct {v1, p0, v0}, Lo8/o;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p2, Ll8/q;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Ll8/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p2}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->c:Lcom/github/clans/fab/FloatingActionButton;

    new-instance p3, Ll8/p;

    invoke-direct {p3, p0, v4}, Ll8/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->a:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onFabClearSelectedClick()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBlackList;->a()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lh8/d;->f:Lx8/b;

    .line 3
    iget-object v1, v1, Lx8/b;->b:Lw8/j;

    .line 4
    new-instance v2, Lw8/k;

    invoke-direct {v2, v1}, Lw8/k;-><init>(Lw8/j;)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lw8/k;->j(Ljava/lang/Object;[Ljava/lang/Object;)Lw8/k$b;

    move-result-object v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo8/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/mglab/scm/visual/BWLItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mglab/scm/visual/BWLItem;

    .line 9
    iget-boolean v3, v3, Lcom/mglab/scm/visual/BWLItem;->d:Z

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mglab/scm/visual/BWLItem;

    invoke-virtual {v3}, Lcom/mglab/scm/visual/BWLItem;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    iget-object v4, v2, Lw8/k$b;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Lcom/mglab/scm/visual/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Lcom/mglab/scm/visual/c;->i(IILw8/k$b;)V

    :cond_2
    return-void
.end method

.method public onListItemClick(Landroid/view/View;I)V
    .locals 9
    .annotation runtime Lbutterknife/OnItemClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mglab/scm/visual/BWLItem;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p2, Lcom/mglab/scm/visual/BWLItem;->d:Z

    xor-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lcom/mglab/scm/visual/BWLItem;->f(Z)V

    .line 5
    sget-object p1, Lcom/mglab/scm/visual/FragmentBlackList;->f:Lo8/b;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBlackList;->a()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 7
    :cond_1
    new-instance v0, Lcom/cocosw/bottomsheet/h$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cocosw/bottomsheet/h$c;-><init>(Landroid/app/Activity;)V

    const v3, 0x7f090398

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/cocosw/bottomsheet/h$c;->d:Ljava/lang/CharSequence;

    .line 10
    new-instance p1, Lo8/l;

    invoke-direct {p1, p0, p2}, Lo8/l;-><init>(Lcom/mglab/scm/visual/FragmentBlackList;Lcom/mglab/scm/visual/BWLItem;)V

    .line 11
    iput-object p1, v0, Lcom/cocosw/bottomsheet/h$c;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f0800fd

    sget-object v4, Ld0/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p1, v3}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7f11003e

    .line 15
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v1, p1, v3}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    .line 17
    invoke-virtual {p2}, Lcom/mglab/scm/visual/BWLItem;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    new-instance p1, Lo8/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 19
    iget-object v1, p2, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_2

    iget-object p2, v1, Lh8/c;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object p2, p2, Lh8/w;->e:Ljava/lang/String;

    :goto_0
    move-object v5, p2

    const/4 v6, 0x1

    const/16 v7, 0x64

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f060059

    invoke-static {p2, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lo8/k;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual {p1}, Lo8/k;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 21
    iput-object p1, v0, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x6

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0800eb

    .line 23
    invoke-static {p2, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 24
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f110041

    .line 25
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, p2, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    goto :goto_1

    :cond_3
    const p1, 0x7f0800f8

    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/4 p1, 0x7

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0800fc

    .line 29
    invoke-static {p2, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 30
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f11003d

    .line 31
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, p1, p2, v1}, Lcom/cocosw/bottomsheet/h$c;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/h$c;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f12011c

    .line 34
    iput p1, v0, Lcom/cocosw/bottomsheet/h$c;->c:I

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/h$c;->b()Lcom/cocosw/bottomsheet/h;

    :goto_2
    return-void
.end method

.method public onListItemLongClick(I)V
    .locals 4
    .annotation runtime Lbutterknife/OnItemLongClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->r0(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mglab/scm/visual/BWLItem;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/mglab/scm/visual/BWLItem;->f(Z)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo8/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/mglab/scm/visual/BWLItem;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mglab/scm/visual/BWLItem;

    invoke-virtual {v0, v1}, Lcom/mglab/scm/visual/BWLItem;->f(Z)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBlackList;->a()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 9
    new-instance p1, Lo8/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-direct {p1, v0, v3}, Lo8/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object p1, Lcom/mglab/scm/visual/FragmentBlackList;->f:Lo8/b;

    .line 10
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->emptyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBlackList;->a()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public onMessageEvent(Lk8/a;)V
    .locals 3
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mglab/scm/visual/FragmentBlackList;->c(Ljava/util/List;)Ljava/util/List;

    .line 2
    sget-object p1, Lcom/mglab/scm/visual/FragmentBlackList;->f:Lo8/b;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->emptyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->r0(Landroid/content/Context;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBlackList;->a()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

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
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "bwlmultiselectenabled"

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    const p2, 0x7f11001e

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    .line 7
    :cond_0
    new-instance p1, Lo8/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/mglab/scm/visual/FragmentBlackList;->c(Ljava/util/List;)Ljava/util/List;

    invoke-direct {p1, p2, v1}, Lo8/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object p1, Lcom/mglab/scm/visual/FragmentBlackList;->f:Lo8/b;

    .line 8
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->emptyTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result p2

    const/16 v1, 0x8

    if-lez p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentBlackList;->a()I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 11
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/t;

    invoke-direct {p2}, Lk8/t;-><init>()V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method
