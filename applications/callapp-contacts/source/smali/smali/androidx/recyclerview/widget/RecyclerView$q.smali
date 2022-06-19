.class final Landroidx/recyclerview/widget/RecyclerView$q;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 5696
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 5743
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_0

    .line 5744
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 5746
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    .line 5747
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 5701
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5702
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Z

    .line 5704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->c(Z)V

    .line 5705
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5706
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4

    .line 5712
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5713
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    const/4 v1, 0x1

    if-lez p2, :cond_0

    .line 6507
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, p2, p3}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6508
    iget p1, v0, Landroidx/recyclerview/widget/a;->g:I

    or-int/2addr p1, v3

    iput p1, v0, Landroidx/recyclerview/widget/a;->g:I

    .line 6509
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5714
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;->a()V

    :cond_1
    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    .line 5720
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5721
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    const/4 v2, 0x1

    if-lez p2, :cond_0

    .line 6519
    iget-object v3, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6520
    iget p1, v0, Landroidx/recyclerview/widget/a;->g:I

    or-int/2addr p1, v2

    iput p1, v0, Landroidx/recyclerview/widget/a;->g:I

    .line 6521
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5722
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;->a()V

    :cond_1
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 4

    .line 5736
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5737
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    const/4 v2, 0x1

    if-eq p1, p2, :cond_1

    if-ne p3, v2, :cond_0

    .line 6546
    iget-object p3, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, p1, p2, v1}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6547
    iget p1, v0, Landroidx/recyclerview/widget/a;->g:I

    or-int/2addr p1, v3

    iput p1, v0, Landroidx/recyclerview/widget/a;->g:I

    .line 6548
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 6544
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 5738
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;->a()V

    :cond_2
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 5

    .line 5728
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5729
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a;

    const/4 v2, 0x1

    if-lez p2, :cond_0

    .line 6531
    iget-object v3, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1, p2, v1}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6532
    iget p1, v0, Landroidx/recyclerview/widget/a;->g:I

    or-int/2addr p1, v4

    iput p1, v0, Landroidx/recyclerview/widget/a;->g:I

    .line 6533
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5730
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;->a()V

    :cond_1
    return-void
.end method

.method public final onStateRestorationPolicyChanged()V
    .locals 1

    .line 5753
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 5759
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    .line 5760
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5761
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method
