.class Lcom/allinone/callerid/g/a$c$a;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/a$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CommentContent;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment"

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {v1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {v1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->i2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->j2(Lcom/allinone/callerid/g/a;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->k2(Lcom/allinone/callerid/g/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->l2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->l2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->l2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->m2(Lcom/allinone/callerid/g/a;)V

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/g/a$c$a;->a:Lcom/allinone/callerid/g/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/g/a$c;->d:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->o2(Lcom/allinone/callerid/g/a;)V

    return-void
.end method
