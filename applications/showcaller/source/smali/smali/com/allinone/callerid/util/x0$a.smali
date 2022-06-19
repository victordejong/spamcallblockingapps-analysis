.class Lcom/allinone/callerid/util/x0$a;
.super Landroid/os/AsyncTask;
.source "SaveSearchData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/x0;
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

.field private c:Lcom/allinone/callerid/model/EZSearchContacts;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/util/x0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 2
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/util/x0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "type"

    const-string v2, "type_label"

    const-string v3, "operator"

    const-string v4, "avatar"

    const-string v5, "format_tel_number"

    const-string v6, "name"

    const-string v7, "faild_error_log"

    if-nez p1, :cond_1

    .line 3
    :try_start_1
    new-instance p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {p1}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    .line 4
    iget-object v8, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched_buyu(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V

    goto/16 :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched_buyu(Z)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 19
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 20
    iget-object v6, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v6, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 23
    iget-object v4, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v4, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    iget-object v2, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 29
    iget-object v1, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 32
    iget-object v1, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/util/x0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 36
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/x0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v1, "isSearched"

    const-string v2, "name"

    const-string v3, "belong_area"

    const-string v4, "avatar"

    const-string v5, "type_label"

    const-string v6, "type"

    const-string v7, "operator"

    const-string v8, "format_tel_number"

    const-string v9, "searched_buyu"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
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

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/x0$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "buyu"

    const-string v0, "save data OK"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.allinone.callerid.INIT_HISTORY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
