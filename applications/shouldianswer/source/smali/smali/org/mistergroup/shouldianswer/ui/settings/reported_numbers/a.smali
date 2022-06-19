.class public final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "ReportsAdapter.kt"


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
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;",
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

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;

    iget v3, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;

    invoke-direct {v2, v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;Lkotlin/c/c;)V

    :goto_0
    iget-object v1, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 17
    iget v4, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->j:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    iget-object v7, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->h:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v8, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->e:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 55
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v7, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->d:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sget-object v1, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->d:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->e:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->f:Ljava/lang/Object;

    iput v6, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->b:I

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/model/aa;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v8, v0

    .line 17
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v7

    move-object v11, v8

    move-object v7, v9

    move-object v8, v1

    move-object v9, v4

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 21
    move-object v4, v10

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    if-lez v12, :cond_5

    move v12, v6

    goto :goto_3

    :cond_5
    move v12, v13

    :goto_3
    if-eqz v12, :cond_7

    .line 22
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    check-cast v12, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-static {v12, v4, v13, v5, v14}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_9

    .line 25
    :cond_7
    new-instance v4, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    sget-object v12, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;->a()I

    move-result v12

    invoke-direct {v4, v12}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;-><init>(I)V

    .line 26
    invoke-virtual {v4, v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    .line 27
    sget-object v12, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a(Ljava/lang/String;)V

    .line 28
    sget-object v12, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/m$a;->a()[Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v12

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 29
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->o()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 32
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_8

    move v14, v6

    goto :goto_4

    :cond_8
    move v14, v13

    :goto_4
    const-string v15, ""

    if-eqz v14, :cond_9

    .line 33
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a()Ljava/lang/String;

    move-result-object v15

    const-string v14, ", "

    goto :goto_5

    :cond_9
    move-object v14, v15

    .line 36
    :goto_5
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d()Ljava/lang/String;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-lez v16, :cond_a

    move/from16 v16, v6

    goto :goto_6

    :cond_a
    move/from16 v16, v13

    :goto_6
    if-eqz v16, :cond_b

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 39
    :cond_b
    invoke-virtual {v4, v15}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->b(Ljava/lang/String;)V

    goto :goto_7

    .line 42
    :cond_c
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->b(Ljava/lang/String;)V

    .line 44
    :cond_d
    :goto_7
    new-instance v6, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_e

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_e
    sget-object v15, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    invoke-direct {v6, v12, v14, v15, v13}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    invoke-virtual {v4, v6}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    .line 45
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->c()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    if-nez v6, :cond_f

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_f
    iput-object v11, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->d:Ljava/lang/Object;

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->e:Ljava/lang/Object;

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->f:Ljava/lang/Object;

    iput-object v8, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->g:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->h:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->i:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->j:Ljava/lang/Object;

    iput v5, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a;->b:I

    invoke-virtual {v6, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    return-object v3

    .line 46
    :cond_10
    :goto_8
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_11
    return-object v9
.end method

.method public final a()Lkotlin/e/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/b<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->a:Lkotlin/e/a/b;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->b:Ljava/util/List;

    .line 90
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onItemClickCallback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->a:Lkotlin/e/a/b;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->b:Ljava/util/List;

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

    .line 85
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a()I

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

    .line 74
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 75
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    if-eqz v0, :cond_2

    .line 76
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007c

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ek;

    .line 66
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;-><init>(Lorg/mistergroup/shouldianswer/a/ek;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
