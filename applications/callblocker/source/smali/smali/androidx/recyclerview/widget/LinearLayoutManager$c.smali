.class Landroidx/recyclerview/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:I

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field m:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 2253
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 2260
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 2267
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->j:Z

    .line 2279
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 5

    .prologue
    .line 2316
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2317
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 2318
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 2319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 2320
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2317
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2323
    :cond_1
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 2324
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    move-object v0, v1

    .line 2328
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2300
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2301
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b()Landroid/view/View;

    move-result-object v0

    .line 2305
    :goto_0
    return-object v0

    .line 2303
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2304
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 2332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    .line 2333
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2336
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2337
    if-nez v0, :cond_0

    .line 2338
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 2343
    :goto_0
    return-void

    .line 2340
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 2341
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    goto :goto_0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;)Z
    .locals 2

    .prologue
    .line 2290
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .prologue
    .line 2346
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 2347
    const/4 v2, 0x0

    .line 2348
    const v1, 0x7fffffff

    .line 2352
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_4

    .line 2353
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 2354
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 2355
    if-eq v3, p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 2352
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v1, v0

    goto :goto_0

    .line 2358
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result v0

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    mul-int/2addr v0, v6

    .line 2360
    if-gez v0, :cond_1

    move v0, v1

    .line 2361
    goto :goto_1

    .line 2363
    :cond_1
    if-ge v0, v1, :cond_3

    .line 2366
    if-nez v0, :cond_2

    .line 2371
    :goto_2
    return-object v3

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v3, v2

    goto :goto_2
.end method
