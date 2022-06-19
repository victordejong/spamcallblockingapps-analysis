.class public Lcom/a/a/a/a/a/a;
.super Ljava/lang/Object;
.source "AdapterPath.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/a/a/a;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)Lcom/a/a/a/a/a/a;
    .locals 1

    .line 55
    new-instance v0, Lcom/a/a/a/a/a/b;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/a/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a/a;->a(Lcom/a/a/a/a/a/b;)Lcom/a/a/a/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/a/a/a/a/a/b;)Lcom/a/a/a/a/a/a;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/a/a/a/a/a/f;)Lcom/a/a/a/a/a/a;
    .locals 1

    .line 44
    iget-object v0, p1, Lcom/a/a/a/a/a/f;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object p1, p1, Lcom/a/a/a/a/a/f;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/a/a/a/a/a/a;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)Lcom/a/a/a/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/a/a/a/a/a/b;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/a/a/a/a/a/b;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
