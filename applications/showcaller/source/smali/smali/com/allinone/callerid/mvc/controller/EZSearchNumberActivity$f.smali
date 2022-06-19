.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/search/EZSearchResult;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/b/b0/b;->b(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getStatus()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/b/b0/b;->b(Ljava/util/List;)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    goto/16 :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 33
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    goto :goto_0

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->E0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;Z)V

    .line 36
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;->b:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;)V

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/i/l/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/i/l/a;)V

    return-void
.end method
