.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->r1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "searchNumber"

    const-string v0, "afterTextChanged"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->H0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->H0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x8

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v0, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/b/b0/b;->b(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "searchNumber"

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onTextChanged---CharSequence:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, p3}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z

    return-void

    :cond_1
    const/16 p2, 0x8

    if-eqz p1, :cond_7

    const-string p4, ""

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "00"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "+"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-gt p4, p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 v0, 0x2

    if-lt p4, v0, :cond_3

    .line 7
    iget-object p4, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;)V

    invoke-static {p4, v0, v1, v2}, Lcom/allinone/callerid/i/a/y/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/y/a;)V

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_5

    .line 9
    iget-object p4, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p4}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->o0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_4

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p4, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p4, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, p3

    invoke-virtual {p4, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z

    goto/16 :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 35
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_0
    return-void
.end method
