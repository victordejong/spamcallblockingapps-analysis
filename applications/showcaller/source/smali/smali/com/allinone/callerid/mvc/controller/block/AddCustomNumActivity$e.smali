.class Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;
.super Ljava/lang/Object;
.source "AddCustomNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/customview/DeletableEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->g0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    const-string v1, "foreign"

    invoke-static {p1, v1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->g0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->X(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/util/m;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/allinone/callerid/util/m;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->X(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/util/m;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/allinone/callerid/util/m;->m(Ljava/lang/String;I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    const-class v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    const v0, 0x7f100240

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_2
    return-void
.end method
