.class Lcom/allinone/callerid/d/d/a$a$a;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homeInfos.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callscreen"

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object v2, v2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/allinone/callerid/d/a/e/a;->A(Ljava/util/ArrayList;Z)V

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object v2, v2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->e2(Lcom/allinone/callerid/d/d/a;)I

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->H1(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setNoMore(Z)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreEnabled(Z)V

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->l2(Lcom/allinone/callerid/d/d/a;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/allinone/callerid/d/d/a;->m2(Lcom/allinone/callerid/d/d/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->l2(Lcom/allinone/callerid/d/d/a;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setNoMore(Z)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$a$a;->a:Lcom/allinone/callerid/d/d/a$a;

    iget-object p1, p1, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreEnabled(Z)V

    :goto_1
    return-void
.end method
