.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;
.super Ljava/lang/Object;
.source "ManageDiyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/b/e;->g()Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "callscreen"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default_diy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-direct {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setThemtname(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setPath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIs_default(Z)V

    .line 9
    invoke-virtual {v3, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsdiy(Z)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/b/c;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 13
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contacts_diy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 17
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_1
    if-le v5, v1, :cond_4

    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 20
    invoke-virtual {v6}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_counts()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setContacts_counts(I)V

    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_5
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
