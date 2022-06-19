.class Lcom/allinone/callerid/g/a$e$a;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a$e;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/a$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CommentContent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object v0, v0, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->i2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->j2(Lcom/allinone/callerid/g/a;)Landroid/view/ViewStub;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->k2(Lcom/allinone/callerid/g/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/a$e$a;->a:Lcom/allinone/callerid/g/a$e;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$e;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->o2(Lcom/allinone/callerid/g/a;)V

    return-void
.end method
