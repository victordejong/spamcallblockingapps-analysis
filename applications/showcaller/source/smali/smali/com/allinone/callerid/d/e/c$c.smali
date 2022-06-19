.class Lcom/allinone/callerid/d/e/c$c;
.super Landroid/os/AsyncTask;
.source "HomeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/c$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/allinone/callerid/d/e/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;",
            "Lcom/allinone/callerid/d/e/c$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/d/e/c$c;->a:Lcom/allinone/callerid/d/e/c$a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/e/c$c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/d/e/c$c;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/d/e/c$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/d/e/c$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/d/b/e;->b()Z

    move-result v3

    .line 5
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/allinone/callerid/d/b/c;->b()Z

    move-result v4

    .line 6
    invoke-virtual {v1, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setDefautl_diy(Z)V

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/d/b/e;->g()Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v1, v4}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setContacts_diy(Z)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/allinone/callerid/d/b/e;->h(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v3

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/d/b/c;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdefault(Z)V

    .line 12
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsselect(Z)V

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdefault(Z)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsselect(Z)V

    .line 15
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/d/b/d;->b()Lcom/allinone/callerid/d/b/d;

    move-result-object v3

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/d/b/d;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    .line 17
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/d/b/b;->b()Lcom/allinone/callerid/d/b/b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/d/b/b;->d(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "callscreen"

    if-eqz v3, :cond_6

    .line 18
    :try_start_1
    sget-boolean v5, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v5, :cond_5

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6709\u4e0b\u8f7d\u5b8c\u6210\u7684\uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_5
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getAudio_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setAudio_path(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    .line 23
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/d/b/a;->a()Lcom/allinone/callerid/d/b/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/d/b/a;->b(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isLike()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIslike(Z)V

    .line 25
    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->getLike_counts()I

    move-result v3

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->getLike_counts()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setLike_count(I)V

    .line 27
    :cond_7
    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isReport()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsreport(Z)V

    .line 28
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_8

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionInfo\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_9
    iget-object p1, p0, Lcom/allinone/callerid/d/e/c$c;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/c$c;->a:Lcom/allinone/callerid/d/e/c$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/d/e/c$a;->a(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/c$c;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/c$c;->b(Ljava/util/ArrayList;)V

    return-void
.end method
