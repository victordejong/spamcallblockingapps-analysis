.class Lcom/callerid/block/util/l0$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/util/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;

.field b:Ljava/lang/String;

.field private c:Lcom/callerid/block/bean/EZSearchContacts;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/callerid/block/util/l0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/util/l0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "faild_error_log"

    const-string v2, "type"

    const-string v3, "type_label"

    const-string v4, "operator"

    const-string v5, "avatar"

    const-string v6, "format_tel_number"

    const-string v7, "name"

    if-nez p1, :cond_1

    :try_start_1
    new-instance p1, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {p1}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    iget-object v8, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched_buyu(Z)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched_buyu(Z)V

    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, ""

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v8, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v8, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v8, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v8, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v8, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/callerid/block/util/l0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v1, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/util/l0$a;->c:Lcom/callerid/block/bean/EZSearchContacts;

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "isSearched"

    aput-object v10, v8, v9

    aput-object v7, v8, v0

    const/4 v0, 0x2

    const-string v7, "belong_area"

    aput-object v7, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v2, v8, v0

    const/4 v0, 0x6

    aput-object v4, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    const/16 v0, 0x8

    const-string v2, "searched_buyu"

    aput-object v2, v8, v0

    invoke-virtual {p1, v1, v8}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buyu"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/l0$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "buyu"

    const-string v0, "save data OK"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.callerid.block.INIT_HISTORY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
