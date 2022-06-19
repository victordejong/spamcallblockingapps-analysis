.class Lcom/allinone/callerid/d/d/a$c;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Lc/b/a/g/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a;->s2(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$c;->a:Lcom/allinone/callerid/d/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$c;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setNoMore(Z)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$c;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/a;->k2(Lcom/allinone/callerid/d/d/a;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$c;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/d/a;->d2(Lcom/allinone/callerid/d/d/a;I)I

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$c;->a:Lcom/allinone/callerid/d/d/a;

    const-string v2, "publish_time"

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/d/d/a;->n2(Lcom/allinone/callerid/d/d/a;ILjava/lang/String;)V

    return-void
.end method
