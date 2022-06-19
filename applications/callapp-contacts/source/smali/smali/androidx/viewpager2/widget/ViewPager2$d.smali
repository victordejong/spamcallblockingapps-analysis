.class final Landroidx/viewpager2/widget/ViewPager2$d;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 1002
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/core/view/a/c;)V
    .locals 0

    .line 1017
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/core/view/a/c;)V

    .line 1018
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroidx/core/view/a/c;)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$s;[I)V
    .locals 2

    .line 1024
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 1850
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$s;[I)V

    return-void

    .line 1030
    :cond_0
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->b()I

    move-result p1

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 1031
    aput p1, p2, v0

    const/4 v0, 0x1

    .line 1032
    aput p1, p2, v0

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1008
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0, p3}, Landroidx/viewpager2/widget/ViewPager2$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/ViewPager2$a;->d(I)Z

    move-result p1

    return p1

    .line 1011
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
