.class Lcom/allinone/callerid/d/d/b$b;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b;->u2(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->g2(Lcom/allinone/callerid/d/d/b;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/allinone/callerid/d/a/e/a;->A(Ljava/util/ArrayList;Z)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->d2(Lcom/allinone/callerid/d/d/b;)I

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->j2(Lcom/allinone/callerid/d/d/b;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->H1(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->j2(Lcom/allinone/callerid/d/d/b;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setNoMore(Z)V

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->j2(Lcom/allinone/callerid/d/d/b;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreEnabled(Z)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->k2(Lcom/allinone/callerid/d/d/b;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/allinone/callerid/d/d/b;->l2(Lcom/allinone/callerid/d/d/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->k2(Lcom/allinone/callerid/d/d/b;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->h2(Lcom/allinone/callerid/d/d/b;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$b;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->j2(Lcom/allinone/callerid/d/d/b;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->H1(I)V

    :goto_1
    return-void
.end method
