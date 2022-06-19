.class Lcom/github/jdsjlzx/recyclerview/a$c;
.super Landroidx/recyclerview/widget/GridLayoutManager$b;
.source "LRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/recyclerview/a;->o(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic f:Lcom/github/jdsjlzx/recyclerview/a;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/recyclerview/a;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    iput-object p2, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/a;->C(Lcom/github/jdsjlzx/recyclerview/a;)Lcom/github/jdsjlzx/recyclerview/a$d;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->K(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->J(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->M(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->V2()I

    move-result v1

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->K(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->J(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->M(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/a;->C(Lcom/github/jdsjlzx/recyclerview/a;)Lcom/github/jdsjlzx/recyclerview/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->f:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v3}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr p1, v3

    invoke-interface {v0, v2, p1}, Lcom/github/jdsjlzx/recyclerview/a$d;->a(Landroidx/recyclerview/widget/GridLayoutManager;I)I

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a$c;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->V2()I

    move-result p1

    :goto_1
    return p1
.end method
