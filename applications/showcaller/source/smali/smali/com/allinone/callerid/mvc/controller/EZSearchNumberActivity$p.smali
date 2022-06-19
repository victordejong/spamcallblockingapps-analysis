.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/l/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z1(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/search/EZSearchResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/b/b0/b;->b(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p1, :cond_6

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/b/b0/b;->b(Ljava/util/List;)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 26
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->a:Z

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->g1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 37
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->a:Z

    if-eqz p1, :cond_7

    .line 38
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 39
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->g1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method
