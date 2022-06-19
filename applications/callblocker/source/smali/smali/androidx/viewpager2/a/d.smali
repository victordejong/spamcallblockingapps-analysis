.class final Landroidx/viewpager2/a/d;
.super Landroidx/viewpager2/a/f$b;
.source "PageTransformerAdapter.java"


# instance fields
.field private final a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private b:Landroidx/viewpager2/a/f$c;


# virtual methods
.method a()Landroidx/viewpager2/a/f$c;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/f$c;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public a(IFI)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/f$c;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 62
    :cond_1
    neg-float v2, p2

    move v0, v1

    .line 63
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/a/d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 64
    iget-object v3, p0, Landroidx/viewpager2/a/d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 65
    if-nez v3, :cond_2

    .line 66
    new-instance v2, Ljava/lang/IllegalStateException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/viewpager2/a/d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 66
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_2
    iget-object v4, p0, Landroidx/viewpager2/a/d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    .line 71
    sub-int/2addr v4, p1

    int-to-float v4, v4

    add-float/2addr v4, v2

    .line 72
    iget-object v5, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/f$c;

    invoke-interface {v5, v3, v4}, Landroidx/viewpager2/a/f$c;->a(Landroid/view/View;F)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Landroidx/viewpager2/a/f$c;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/f$c;

    .line 54
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
