.class public Lii0;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# instance fields
.field public a:Lio/supercharge/shimmerlayout/ShimmerLayout;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 2

    sget v0, Lfi0;->viewholder_shimmer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p2, Lio/supercharge/shimmerlayout/ShimmerLayout;

    iput-object p2, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->n()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setAnimationReversed(Z)V

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAnimationDuration(I)V

    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lii0;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerColor(I)V

    return-void
.end method

.method public h(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lii0;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
