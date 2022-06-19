.class public abstract Landroidx/recyclerview/widget/p;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "SnapHelper.java"


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/Scroller;

.field private final c:Landroidx/recyclerview/widget/RecyclerView$n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 42
    new-instance v0, Landroidx/recyclerview/widget/p$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/p$1;-><init>(Landroidx/recyclerview/widget/p;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 116
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 117
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$i;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 157
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView$t$b;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$i;II)I

    move-result v2

    .line 167
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 171
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(I)V

    .line 172
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 124
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 125
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I

    move-result-object v0

    .line 194
    aget v1, v0, v2

    if-nez v1, :cond_2

    aget v1, v0, v3

    if-eqz v1, :cond_0

    .line 195
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->c()V

    .line 99
    :cond_2
    iput-object p1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->b()V

    .line 102
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->b:Landroid/widget/Scroller;

    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->a()V

    goto :goto_0
.end method

.method public a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    .line 66
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    .line 74
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_0

    .line 75
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/RecyclerView$i;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/h;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$b;

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/p$2;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/p$2;-><init>(Landroidx/recyclerview/widget/p;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public b(II)[I
    .locals 10

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 138
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Landroid/widget/Scroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 140
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    aput v0, v9, v1

    .line 141
    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    aput v1, v9, v0

    .line 142
    return-object v9
.end method

.method protected c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/RecyclerView$t;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/h;

    move-result-object v0

    return-object v0
.end method
