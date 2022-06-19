.class final Landroidx/recyclerview/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/a$b;)V
    .locals 2

    .line 1046
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->d(II)V

    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(II)V

    return-void

    .line 1051
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(II)V

    return-void

    .line 1048
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(II)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    .line 1004
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(IZ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1010
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/b;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public final a(II)V
    .locals 2

    .line 1021
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(IIZ)V

    .line 1022
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Z

    .line 1023
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$s;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$s;->c:I

    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 8

    .line 1036
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7826
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->b()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_1

    .line 7830
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/b;->c(I)Landroid/view/View;

    move-result-object v5

    .line 7831
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7832
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7835
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-lt v7, p1, :cond_0

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-ge v7, p2, :cond_0

    .line 7838
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    .line 7839
    invoke-virtual {v6, p3}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Ljava/lang/Object;)V

    .line 7841
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->e:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7844
    :cond_1
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 8066
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_3

    .line 8068
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz v1, :cond_2

    .line 8073
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-lt v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    .line 8075
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    .line 8076
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1037
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v4, p1, Landroidx/recyclerview/widget/RecyclerView;->K:Z

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/a$b;)V
    .locals 0

    .line 1042
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->c(Landroidx/recyclerview/widget/a$b;)V

    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 1029
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(IIZ)V

    .line 1030
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Z

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/a$b;)V
    .locals 0

    .line 1065
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->c(Landroidx/recyclerview/widget/a$b;)V

    return-void
.end method

.method public final c(II)V
    .locals 8

    .line 1070
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8773
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 8775
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/b;->c(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8776
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-lt v6, p1, :cond_0

    .line 8781
    invoke-virtual {v5, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZ)V

    .line 8782
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iput-boolean v4, v5, Landroidx/recyclerview/widget/RecyclerView$s;->f:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8785
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 9001
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 9003
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz v6, :cond_2

    .line 9004
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-lt v7, p1, :cond_2

    .line 9010
    invoke-virtual {v6, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZ)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8786
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1071
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v4, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Z

    return-void
.end method

.method public final d(II)V
    .locals 11

    .line 1076
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9739
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->b()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge p1, p2, :cond_0

    move v4, p1

    move v5, p2

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    move v5, p1

    move v4, p2

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_3

    .line 9752
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/b;->c(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 9753
    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-lt v10, v4, :cond_2

    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-gt v10, v5, :cond_2

    .line 9760
    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-ne v10, p1, :cond_1

    sub-int v10, p2, p1

    .line 9761
    invoke-virtual {v9, v10, v7}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZ)V

    goto :goto_2

    .line 9763
    :cond_1
    invoke-virtual {v9, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZ)V

    .line 9766
    :goto_2
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iput-boolean v3, v9, Landroidx/recyclerview/widget/RecyclerView$s;->f:Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9768
    :cond_3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-ge p1, p2, :cond_4

    move v4, p1

    move v5, p2

    goto :goto_3

    :cond_4
    move v5, p1

    move v4, p2

    const/4 v2, 0x1

    .line 9982
    :goto_3
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_7

    .line 9984
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz v9, :cond_6

    .line 9985
    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-lt v10, v4, :cond_6

    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-gt v10, v5, :cond_6

    .line 9988
    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-ne v10, p1, :cond_5

    sub-int v10, p2, p1

    .line 9989
    invoke-virtual {v9, v10, v7}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZ)V

    goto :goto_5

    .line 9991
    :cond_5
    invoke-virtual {v9, v2, v7}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZ)V

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 9769
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1078
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v3, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Z

    return-void
.end method
