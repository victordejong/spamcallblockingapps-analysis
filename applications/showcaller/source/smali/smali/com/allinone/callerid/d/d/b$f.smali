.class Lcom/allinone/callerid/d/d/b$f;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Lcom/allinone/callerid/d/a/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b;->s2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f010001

    const/high16 v3, 0x7f010000

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isContacts_diy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDefautl_diy()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "is_from_main"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->o2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->o2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {v4}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "homeinfo"

    .line 12
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "is_diy"

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$f;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->o2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
