.class public final Landroidx/recyclerview/widget/RecyclerView$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "o"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Landroidx/recyclerview/widget/RecyclerView$n;

.field h:Landroidx/recyclerview/widget/RecyclerView$t;

.field final synthetic i:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 6078
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6079
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6080
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    .line 6082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    .line 6085
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 6087
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->e:I

    .line 6088
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->f:I

    return-void
.end method

.method private a(IZ)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 8

    .line 6839
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6843
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6844
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 6845
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    .line 6846
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_8

    .line 6852
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    .line 23206
    iget-object v3, v2, Landroidx/recyclerview/widget/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 23208
    iget-object v5, v2, Landroidx/recyclerview/widget/b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 23209
    iget-object v6, v2, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v6, v5}, Landroidx/recyclerview/widget/b$b;->b(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v6

    .line 23210
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 23211
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_3

    .line 23212
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_8

    .line 6856
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    .line 6857
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    .line 23350
    iget-object v0, p2, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v0, v5}, Landroidx/recyclerview/widget/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 23354
    iget-object v1, p2, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23357
    iget-object v1, p2, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b$a;->b(I)V

    .line 23358
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)Z

    .line 6858
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 6863
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/b;->d(I)V

    .line 6864
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->c(Landroid/view/View;)V

    const/16 p2, 0x2020

    .line 6865
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    return-object p1

    .line 6860
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6861
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23355
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "trying to unhide a view that was not hidden"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23352
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "view is not a child, cannot hide "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6872
    :cond_8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_b

    .line 6874
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6877
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_a

    .line 6878
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isAttachedToTransitionOverlay()Z

    move-result v4

    if-nez v4, :cond_a

    if-nez p2, :cond_9

    .line 6880
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    return-object v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-object v0
.end method

.method private a(JIZ)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 6

    .line 6894
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6896
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6897
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6898
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 6899
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    .line 6900
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6909
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 23898
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    .line 6910
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$v;->setFlags(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 6919
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6920
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6921
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6927
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 6929
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6930
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6931
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    .line 6933
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 6937
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 6508
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 6509
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6510
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6511
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 6518
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 6519
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6520
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 6522
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 6523
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6524
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$v;IIJ)Z
    .locals 9

    const/4 v0, 0x0

    .line 6185
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6186
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 6187
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemViewType()I

    move-result v0

    .line 6188
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, p4, v4

    if-eqz v6, :cond_2

    .line 6189
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14959
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b(I)Landroidx/recyclerview/widget/RecyclerView$n$a;

    move-result-object v0

    iget-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView$n$a;->d:J

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    add-long/2addr v4, v1

    cmp-long v6, v4, p4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    if-nez p4, :cond_2

    return v0

    .line 6194
    :cond_2
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V

    .line 6195
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 6196
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemViewType()I

    move-result v0

    sub-long/2addr p4, v1

    .line 15948
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b(I)Landroidx/recyclerview/widget/RecyclerView$n$a;

    move-result-object p2

    .line 15949
    iget-wide v0, p2, Landroidx/recyclerview/widget/RecyclerView$n$a;->d:J

    invoke-static {v0, v1, p4, p5}, Landroidx/recyclerview/widget/RecyclerView$n;->a(JJ)J

    move-result-wide p4

    iput-wide p4, p2, Landroidx/recyclerview/widget/RecyclerView$n$a;->d:J

    .line 16480
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16481
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 16482
    invoke-static {p2}, Landroidx/core/view/v;->e(Landroid/view/View;)I

    move-result p4

    if-nez p4, :cond_3

    .line 16484
    invoke-static {p2, v3}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 16487
    :cond_3
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/l;

    if-eqz p4, :cond_5

    .line 16490
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/l;

    .line 17099
    iget-object p4, p4, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/l$a;

    .line 16491
    instance-of p5, p4, Landroidx/recyclerview/widget/l$a;

    if-eqz p5, :cond_4

    .line 16494
    move-object p5, p4

    check-cast p5, Landroidx/recyclerview/widget/l$a;

    .line 17128
    invoke-static {p2}, Landroidx/core/view/v;->b(Landroid/view/View;)Landroidx/core/view/a;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p5, :cond_4

    .line 17130
    iget-object p5, p5, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {p5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16497
    :cond_4
    invoke-static {p2, p4}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    .line 6198
    :cond_5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 17898
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-eqz p2, :cond_6

    .line 6199
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    :cond_6
    return v3
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$v;)Z
    .locals 7

    .line 6147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6152
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 13898
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    return p1

    .line 6154
    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-ltz v0, :cond_4

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6158
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 14898
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6160
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v0

    .line 6161
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 6165
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6166
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    .line 6155
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6156
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 9

    .line 6803
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 6808
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6809
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 6810
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6815
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6816
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    .line 22468
    invoke-virtual {v3, p1, v2}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result p1

    if-lez p1, :cond_4

    .line 6817
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6818
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 6820
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6821
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 6822
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 1

    .line 6502
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6503
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 3

    .line 6948
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz v0, :cond_0

    .line 6949
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 6952
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6954
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6956
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    .line 6957
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 6959
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz v0, :cond_3

    .line 6960
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->e(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_3
    return-void
.end method

.method private g()V
    .locals 1

    .line 6571
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6573
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6575
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6576
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->d:Z

    if-eqz v0, :cond_1

    .line 6577
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e$a;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 6270
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 6274
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 18898
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez v0, :cond_0

    return p1

    .line 6277
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result p1

    return p1

    .line 6271
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 6272
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(IZJ)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 17

    move-object/from16 v6, p0

    move/from16 v3, p1

    if-ltz v3, :cond_16

    .line 6323
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v0

    if-ge v3, v0, :cond_16

    .line 6331
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 19898
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 6332
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 6337
    invoke-direct {v6, v3, v8}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IZ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6339
    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c(Landroidx/recyclerview/widget/RecyclerView$v;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    .line 6344
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    .line 6345
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6346
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6347
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->d()V

    goto :goto_1

    .line 6348
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6349
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->f()V

    .line 6351
    :cond_3
    :goto_1
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :cond_5
    :goto_2
    if-nez v0, :cond_e

    .line 6360
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v4

    if-ltz v4, :cond_d

    .line 6361
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 6367
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v5

    .line 6369
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6370
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v9

    invoke-direct {v6, v9, v10, v5, v8}, Landroidx/recyclerview/widget/RecyclerView$o;->a(JIZ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6374
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    const/4 v2, 0x1

    :cond_6
    if-nez v0, :cond_9

    .line 6378
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView$o;->h:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v4, :cond_9

    .line 6382
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 6384
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6389
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 6390
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6392
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6386
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6388
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    .line 6401
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$n;->a(I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 6403
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->j()V

    .line 6404
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->a:Z

    if-eqz v4, :cond_a

    .line 6405
    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->d(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_a
    if-nez v0, :cond_e

    .line 6410
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v15

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, p3, v9

    if-eqz v0, :cond_b

    .line 6411
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    move v10, v5

    move-wide v11, v15

    move-wide/from16 v13, p3

    .line 6412
    invoke-virtual/range {v9 .. v14}, Landroidx/recyclerview/widget/RecyclerView$n;->a(IJJ)Z

    move-result v0

    if-nez v0, :cond_b

    return-object v1

    .line 6416
    :cond_b
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$a;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    .line 6417
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->d:Z

    if-eqz v1, :cond_c

    .line 6419
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 6421
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$v;->c_:Ljava/lang/ref/WeakReference;

    .line 6425
    :cond_c
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v9

    .line 6426
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    sub-long/2addr v9, v15

    invoke-virtual {v1, v5, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$n;->a(IJ)V

    goto :goto_4

    .line 6362
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 6364
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_4
    move-object v9, v0

    move v10, v2

    if-eqz v10, :cond_f

    .line 6436
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 20898
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez v0, :cond_f

    const/16 v0, 0x2000

    .line 6437
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6438
    invoke-virtual {v9, v8, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->setFlags(II)V

    .line 6439
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$s;->j:Z

    if-eqz v0, :cond_f

    .line 6441
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$f;->e(Landroidx/recyclerview/widget/RecyclerView$v;)I

    .line 6444
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$v;->getUnmodifiedPayloads()Ljava/util/List;

    .line 6443
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$v;)Landroidx/recyclerview/widget/RecyclerView$f$b;

    move-result-object v0

    .line 6445
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;)V

    .line 6450
    :cond_f
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 21898
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-eqz v0, :cond_10

    .line 6450
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$v;->isBound()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6452
    iput v3, v9, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    goto :goto_5

    .line 6453
    :cond_10
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$v;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$v;->h()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    .line 6459
    :cond_12
    :goto_6
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 6460
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;IIJ)Z

    move-result v0

    .line 6463
    :goto_7
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_13

    .line 6466
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6467
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 6468
    :cond_13
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 6469
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6470
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 6472
    :cond_14
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6474
    :goto_8
    iput-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz v10, :cond_15

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    .line 6475
    :goto_9
    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->f:Z

    return-object v9

    .line 6324
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 6325
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6326
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 1

    .line 6101
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6102
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->g()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 6541
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    .line 6542
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6543
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6545
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6546
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->d()V

    goto :goto_0

    .line 6547
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6548
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->f()V

    .line 6550
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 6565
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6566
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_3
    return-void
.end method

.method final a(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 6

    .line 6610
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 6617
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6623
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 6629
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->k()Z

    move-result v0

    .line 6630
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6632
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$v;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 6639
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_5

    .line 6640
    :cond_3
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->f:I

    if-lez v3, :cond_7

    const/16 v3, 0x20e

    .line 6641
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$v;->a(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6646
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6647
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->f:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    .line 6648
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)V

    add-int/lit8 v3, v3, -0x1

    .line 6653
    :cond_4
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->d:Z

    if-eqz v4, :cond_6

    if-lez v3, :cond_6

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    .line 6655
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/e$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_5

    .line 6659
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$v;

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    .line 6660
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/e$a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    add-int/2addr v3, v2

    .line 6667
    :cond_6
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_8

    .line 6671
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;Z)V

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v3

    goto :goto_1

    .line 6689
    :goto_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/q;->e(Landroidx/recyclerview/widget/RecyclerView$v;)V

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 6691
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6692
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    :cond_9
    return-void

    .line 6624
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6626
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6618
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6620
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6611
    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6613
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 6614
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Landroidx/recyclerview/widget/RecyclerView$v;Z)V
    .locals 4

    .line 6705
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 6706
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 6707
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6708
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/l;

    .line 22099
    iget-object v1, v1, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/l$a;

    .line 6710
    instance-of v3, v1, Landroidx/recyclerview/widget/l$a;

    if-eqz v3, :cond_0

    .line 6711
    check-cast v1, Landroidx/recyclerview/widget/l$a;

    .line 6713
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/l$a;->c(Landroid/view/View;)Landroidx/core/view/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6716
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 6719
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->e(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 6721
    :cond_2
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6722
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 6723
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method

.method final b(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    .line 6300
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    return-object p1
.end method

.method final b()V
    .locals 3

    .line 6116
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$i;->x:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6117
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->f:I

    .line 6120
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 6121
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->f:I

    if-le v1, v2, :cond_1

    .line 6122
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    .line 6732
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    const/4 v0, 0x0

    .line 6733
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->l:Landroidx/recyclerview/widget/RecyclerView$o;

    const/4 v0, 0x0

    .line 6734
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->m:Z

    .line 6735
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->f()V

    .line 6736
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method

.method final b(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 1

    .line 6775
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->m:Z

    if-eqz v0, :cond_0

    .line 6776
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6778
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 6780
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->l:Landroidx/recyclerview/widget/RecyclerView$o;

    const/4 v0, 0x0

    .line 6781
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->m:Z

    .line 6782
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->f()V

    return-void
.end method

.method final c()Landroidx/recyclerview/widget/RecyclerView$n;
    .locals 1

    .line 7058
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    if-nez v0, :cond_0

    .line 7059
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 7061
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method final c(I)V
    .locals 2

    .line 6596
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$v;

    const/4 v1, 0x1

    .line 6600
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;Z)V

    .line 6601
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 2

    .line 6749
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    const/16 v0, 0xc

    .line 6750
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6751
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$v;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6760
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 6763
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Landroidx/recyclerview/widget/RecyclerView$o;Z)V

    .line 6764
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6752
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6753
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6755
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 6757
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Landroidx/recyclerview/widget/RecyclerView$o;Z)V

    .line 6758
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()V
    .locals 4

    .line 7084
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7086
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 7088
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    const/4 v3, 0x0

    .line 7089
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7093
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7095
    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->g()V

    :cond_3
    return-void
.end method

.method final e()V
    .locals 4

    .line 7100
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7102
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 7103
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7105
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 7107
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7109
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 7112
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method final f()V
    .locals 4

    .line 7118
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7120
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 7121
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 7123
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->e:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
