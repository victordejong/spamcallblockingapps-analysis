.class public final Lcom/futuremind/recyclerviewfastscroll/a;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field private final c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:I

    .line 20
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-void
.end method

.method private a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    :goto_0
    int-to-float v0, v0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 58
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(F)V

    .line 59
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/a;->a()V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 29
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 30
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:I

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 1287
    iget-object p1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Lcom/futuremind/recyclerviewfastscroll/a/c;

    .line 2090
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    .line 2091
    :cond_0
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 32
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:I

    if-nez p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 2287
    iget-object p1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Lcom/futuremind/recyclerviewfastscroll/a/c;

    .line 3085
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    .line 3086
    :cond_2
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    .line 35
    :cond_3
    :goto_0
    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/a;->b:I

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 40
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/a;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 3283
    iget-object p3, p2, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    if-eqz p3, :cond_0

    iget-boolean p3, p2, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c:Z

    if-nez p3, :cond_0

    iget-object p2, p2, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method
