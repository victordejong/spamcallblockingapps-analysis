.class public final Lorg/mistergroup/shouldianswer/ui/main/b/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "FavoritesAdapter.kt"

# interfaces
.implements Lcom/a/a/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lorg/mistergroup/shouldianswer/ui/main/b/a;",
        ">;",
        "Lcom/a/a/a/a/c/d<",
        "Lorg/mistergroup/shouldianswer/ui/main/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/main/b/b$a;

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
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
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contactItems"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->h:Ljava/util/List;

    .line 26
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/b/b$a;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/b$a;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a:Lorg/mistergroup/shouldianswer/ui/main/b/b$a;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->b:Z

    .line 28
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->c:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroidx/recyclerview/widget/RecyclerView$w;I)Lcom/a/a/a/a/c/j;
    .locals 0

    .line 24
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->b(Lorg/mistergroup/shouldianswer/ui/main/b/a;I)Lcom/a/a/a/a/c/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/ui/main/b/a;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0036

    const/4 v1, 0x0

    .line 101
    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/w;

    const-string v0, "bindingInfo"

    .line 102
    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/a/w;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "bindingInfo.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-direct {p1, p2, p0}, Lorg/mistergroup/shouldianswer/ui/main/b/a;-><init>(Lorg/mistergroup/shouldianswer/a/w;Lorg/mistergroup/shouldianswer/ui/main/b/b;)V

    return-object p1
.end method

.method public final a()Lorg/mistergroup/shouldianswer/ui/main/b/b$a;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a:Lorg/mistergroup/shouldianswer/ui/main/b/b$a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->notifyDataSetChanged()V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "items.removeAt(fromPosition)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 145
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Iterable;

    .line 160
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 148
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    sget-object p2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contactItems"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->N()Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 50
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x2710

    .line 51
    :cond_1
    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/components/a/a;->a(I)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b/b$b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/main/b/b$b;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/a/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    :cond_3
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->h:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->g:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d()V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->b:Z

    .line 58
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a:Lorg/mistergroup/shouldianswer/ui/main/b/b$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/b$a;->notifyObservers()V

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->f:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Lkotlin/e/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->e:Lkotlin/e/a/m;

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/ui/main/b/a;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items[position]"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/a;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->c:Z

    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$w;III)Z
    .locals 0

    .line 24
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b/a;III)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/mistergroup/shouldianswer/ui/main/b/a;III)Z
    .locals 0

    const-string p3, "holder"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->c()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lorg/mistergroup/shouldianswer/ui/main/b/a;I)Lcom/a/a/a/a/c/j;
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lkotlin/e/a/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/m<",
            "Landroid/view/ContextMenu;",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->e:Lkotlin/e/a/m;

    return-object v0
.end method

.method public b(II)Z
    .locals 0

    .line 132
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->c()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Lkotlin/e/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/b<",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->f:Lkotlin/e/a/b;

    return-object v0
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 62
    :try_start_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->h:Ljava/util/List;

    .line 64
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FavoritesAdapter.updateData items count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 66
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->g:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 74
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->c:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 78
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 79
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_3
    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    .line 85
    :cond_4
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    if-lez v3, :cond_5

    .line 86
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    rem-int/2addr v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 87
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    :cond_5
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "FavoritesAdapter.updateData notifyChanges"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 95
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 24
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b/a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/ui/main/b/a;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p1
.end method
