.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

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
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->u0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/b/b0/a;->b(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    new-instance v0, Lcom/allinone/callerid/b/b0/a;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {v0, v1}, Lcom/allinone/callerid/b/b0/a;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Lcom/allinone/callerid/b/b0/a;)Lcom/allinone/callerid/b/b0/a;

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
