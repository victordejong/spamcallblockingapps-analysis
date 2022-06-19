.class final Landroidx/viewpager2/widget/ViewPager2$h;
.super Landroidx/recyclerview/widget/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$h;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 1

    .line 1054
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$h;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 1761
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/viewpager2/widget/c;

    .line 2051
    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Landroidx/viewpager2/widget/e;

    .line 2383
    iget-boolean v0, v0, Landroidx/viewpager2/widget/e;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1054
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
