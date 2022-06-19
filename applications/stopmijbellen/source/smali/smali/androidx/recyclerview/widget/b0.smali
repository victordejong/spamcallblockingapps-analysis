.class public abstract Landroidx/recyclerview/widget/b0;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Landroidx/recyclerview/widget/RecyclerView$q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/b0$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/b0$a;-><init>(Landroidx/recyclerview/widget/b0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)[I
.end method

.method public b()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b0;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    move-object v1, p0

    check-cast v1, Landroidx/recyclerview/widget/v;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/v;->f(Landroidx/recyclerview/widget/RecyclerView$m;)Landroidx/recyclerview/widget/t;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/v;->d(Landroidx/recyclerview/widget/RecyclerView$m;Landroidx/recyclerview/widget/t;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/v;->e(Landroidx/recyclerview/widget/RecyclerView$m;)Landroidx/recyclerview/widget/t;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/v;->d(Landroidx/recyclerview/widget/RecyclerView$m;Landroidx/recyclerview/widget/t;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/b0;->a(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_5

    aget v2, v0, v3

    if-eqz v2, :cond_6

    .line 10
    :cond_5
    iget-object v4, p0, Landroidx/recyclerview/widget/b0;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v5, v0, v1

    aget v6, v0, v3

    const/4 v9, 0x0

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    .line 11
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->g0(IILandroid/view/animation/Interpolator;IZ)V

    :cond_6
    return-void
.end method
