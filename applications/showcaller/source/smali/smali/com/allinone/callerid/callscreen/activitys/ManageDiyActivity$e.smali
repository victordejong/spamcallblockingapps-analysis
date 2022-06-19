.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;
.super Ljava/lang/Object;
.source "ManageDiyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->l0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    iput-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 4
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isIs_default()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/d/b/e;->d()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/d/b/c;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
