.class Lcom/allinone/callerid/d/d/a$b;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a;->u2(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

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
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/a;->i2(Lcom/allinone/callerid/d/d/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "homeInfos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callscreen"

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/allinone/callerid/d/a/e/a;->A(Ljava/util/ArrayList;Z)V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->e2(Lcom/allinone/callerid/d/d/a;)I

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->H1(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setNoMore(Z)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreEnabled(Z)V

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->l2(Lcom/allinone/callerid/d/d/a;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/allinone/callerid/d/d/a;->m2(Lcom/allinone/callerid/d/d/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/a;->l2(Lcom/allinone/callerid/d/d/a;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$b;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->H1(I)V

    :goto_1
    return-void
.end method
