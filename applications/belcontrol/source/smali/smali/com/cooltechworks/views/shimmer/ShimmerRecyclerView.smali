.class public Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$g;

.field public b:Lhi0;

.field public c:Landroidx/recyclerview/widget/RecyclerView$o;

.field public d:Landroidx/recyclerview/widget/RecyclerView$o;

.field public f:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

.field public g:Z

.field public h:I

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->g:Z

    return p0
.end method


# virtual methods
.method public final b(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->g:Z

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->d:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p0, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    new-instance v0, Lhi0;

    invoke-direct {v0}, Lhi0;-><init>()V

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    sget-object v0, Lgi0;->ShimmerRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lgi0;->ShimmerRecyclerView_shimmer_demo_layout:I

    sget v0, Lfi0;->layout_sample_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoLayoutReference(I)V

    sget p2, Lgi0;->ShimmerRecyclerView_shimmer_demo_child_count:I

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoChildCount(I)V

    sget p2, Lgi0;->ShimmerRecyclerView_shimmer_demo_grid_child_count:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setGridChildCount(I)V

    sget p2, Lgi0;->ShimmerRecyclerView_shimmer_demo_layout_manager_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->c:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoLayoutManager(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;)V

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "This value for layout manager is not valid!"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object p2, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->b:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->a:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    goto :goto_0

    :goto_1
    sget p2, Lgi0;->ShimmerRecyclerView_shimmer_demo_angle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    sget v0, Lgi0;->ShimmerRecyclerView_shimmer_demo_shimmer_color:I

    sget v2, Lei0;->default_shimmer_color:I

    invoke-virtual {p0, v2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v2, Lgi0;->ShimmerRecyclerView_shimmer_demo_view_holder_item_background:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lgi0;->ShimmerRecyclerView_shimmer_demo_duration:I

    const/16 v4, 0x5dc

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    sget v4, Lgi0;->ShimmerRecyclerView_shimmer_demo_reverse_animation:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p1, p2}, Lhi0;->i(I)V

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p1, v0}, Lhi0;->j(I)V

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p1, v2}, Lhi0;->l(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p1, v3}, Lhi0;->k(I)V

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p1, v1}, Lhi0;->f(Z)V

    invoke-virtual {p0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->g()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final f()V
    .locals 3

    sget-object v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$d;->a:[I

    iget-object v1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->f:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->j:I

    invoke-direct {v0, p0, v1, v2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$c;-><init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$b;-><init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$a;-><init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    :goto_1
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->g:Z

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->f()V

    :cond_0
    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p0, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p0, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public getActualAdapter()Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    return-object v0
.end method

.method public getLayoutReference()I
    .locals 1

    iget v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->h:I

    return v0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public setDemoChildCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {v0, p1}, Lhi0;->h(I)V

    return-void
.end method

.method public setDemoLayoutManager(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->f:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    return-void
.end method

.method public setDemoLayoutReference(I)V
    .locals 1

    iput p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->h:I

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {p0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->getLayoutReference()I

    move-result v0

    invoke-virtual {p1, v0}, Lhi0;->g(I)V

    return-void
.end method

.method public setDemoShimmerDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->b:Lhi0;

    invoke-virtual {v0, p1}, Lhi0;->k(I)V

    return-void
.end method

.method public setGridChildCount(I)V
    .locals 0

    iput p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->j:I

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->d:Landroidx/recyclerview/widget/RecyclerView$o;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->d:Landroidx/recyclerview/widget/RecyclerView$o;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method
