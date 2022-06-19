.class Lcom/allinone/callerid/d/a/c$a;
.super Ljava/lang/Object;
.source "ManageDiyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/a/c;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

.field final synthetic e:Lcom/allinone/callerid/d/a/c$c;

.field final synthetic f:I

.field final synthetic g:Lcom/allinone/callerid/d/a/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/a/c;Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;Lcom/allinone/callerid/d/a/c$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    iput-object p2, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    iput-object p3, p0, Lcom/allinone/callerid/d/a/c$a;->e:Lcom/allinone/callerid/d/a/c$c;

    iput p4, p0, Lcom/allinone/callerid/d/a/c$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->C(Lcom/allinone/callerid/d/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    iget-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->D(Lcom/allinone/callerid/d/a/c;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->e:Lcom/allinone/callerid/d/a/c$c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c$c;->M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->D(Lcom/allinone/callerid/d/a/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->e:Lcom/allinone/callerid/d/a/c$c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c$c;->M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->E(Lcom/allinone/callerid/d/a/c;)Lcom/allinone/callerid/d/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->E(Lcom/allinone/callerid/d/a/c;)Lcom/allinone/callerid/d/a/c$b;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/d/a/c$a;->f:I

    iget-object v2, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v2}, Lcom/allinone/callerid/d/a/c;->D(Lcom/allinone/callerid/d/a/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/allinone/callerid/d/a/c$b;->a(Landroid/view/View;ILjava/util/List;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->F(Lcom/allinone/callerid/d/a/c;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    new-instance v0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setName(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isIs_default()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdefault(Z)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_counts()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setContacts_diy_counts(I)V

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isIsdiy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdiy(Z)V

    const-string v1, "homeinfo"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/c;->F(Lcom/allinone/callerid/d/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/d/a/c$a;->g:Lcom/allinone/callerid/d/a/c;

    invoke-static {p1}, Lcom/allinone/callerid/d/a/c;->G(Lcom/allinone/callerid/d/a/c;)Landroid/app/Activity;

    move-result-object p1

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
