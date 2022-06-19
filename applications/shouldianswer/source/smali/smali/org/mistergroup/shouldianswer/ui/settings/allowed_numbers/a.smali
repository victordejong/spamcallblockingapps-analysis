.class public final Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "ExceptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-boolean v1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->f:Z

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    .line 21
    sget-object v2, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->d:Ljava/lang/Object;

    iput-boolean p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->f:Z

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->e:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->b:I

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/model/g;->c(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 19
    :cond_4
    :goto_2
    check-cast p1, Ljava/util/List;

    goto :goto_3

    :cond_5
    sget-object v2, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->d:Ljava/lang/Object;

    iput-boolean p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->f:Z

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a$a;->b:I

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/model/g;->d(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 22
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/d;

    .line 23
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;

    invoke-direct {v1, v0, v2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;-><init>(Lorg/mistergroup/shouldianswer/model/d;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;)V

    .line 24
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object p2
.end method

.method public final a()Lkotlin/e/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/b<",
            "Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->a:Lkotlin/e/a/b;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->b:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onItemClickCallback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->a:Lkotlin/e/a/b;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;->b()Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;->ordinal()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 46
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007c

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ek;

    .line 37
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;-><init>(Lorg/mistergroup/shouldianswer/a/ek;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
