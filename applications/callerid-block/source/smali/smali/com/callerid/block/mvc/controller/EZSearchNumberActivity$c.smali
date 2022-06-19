.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string p1, "searchNumber"

    const-string v0, "afterTextChanged"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->T(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->Z(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->T(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, v1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->a0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->k0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->k0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->k0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    :try_start_0
    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p2}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->c0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, p3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->d0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z

    return-void

    :cond_0
    const-string p2, "searchNumber"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTextChanged---CharSequence:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "00"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "+"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p4, 0x8

    if-gt p2, p4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p4, 0x2

    if-lt p2, p4, :cond_2

    new-instance p2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$s;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    iget-object p4, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object p4, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    iget-object p4, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$s;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
