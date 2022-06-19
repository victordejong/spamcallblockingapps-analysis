.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/f;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "NumberReviewsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/e/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/a<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/e/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/a<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->d:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/e/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/a<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a:Lkotlin/e/a/a;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->d:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Lkotlin/e/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/a<",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a:Lkotlin/e/a/a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->c:Z

    return-void
.end method

.method public final b()Lkotlin/e/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/a<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->b:Lkotlin/e/a/a;

    return-object v0
.end method

.method public final b(Lkotlin/e/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/a<",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->b:Lkotlin/e/a/a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->c()Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    if-eqz p2, :cond_2

    const-string v0, "items[position] ?: return"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/ui/number_reports/e;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a(Lorg/mistergroup/shouldianswer/ui/number_reports/a;)V

    .line 88
    :cond_0
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/ui/number_reports/c;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/number_reports/c;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/c;->a(Lorg/mistergroup/shouldianswer/ui/number_reports/a;)V

    .line 91
    :cond_1
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/ui/number_reports/b;

    if-eqz v0, :cond_2

    .line 92
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_reports/b;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/b;->a(Lorg/mistergroup/shouldianswer/ui/number_reports/a;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->values()[Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    move-result-object v0

    aget-object p2, v0, p2

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_reports/g;->a:[I

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    const-string v2, "binding"

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004c

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ay;

    .line 74
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/number_reports/b;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/b;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/f;Lorg/mistergroup/shouldianswer/a/ay;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0050

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/bg;

    .line 70
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/number_reports/e;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/e;-><init>(Lorg/mistergroup/shouldianswer/a/bg;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004f

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/be;

    .line 66
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/number_reports/d;

    const-string v0, "bindingMoreInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/d;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/f;Lorg/mistergroup/shouldianswer/a/be;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004e

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/bc;

    .line 62
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/number_reports/c;

    const-string v0, "bindingInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/c;-><init>(Lorg/mistergroup/shouldianswer/a/bc;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2
.end method
