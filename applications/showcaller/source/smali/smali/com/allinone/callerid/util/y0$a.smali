.class Lcom/allinone/callerid/util/y0$a;
.super Landroid/os/AsyncTask;
.source "SaveSubtypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/y0;
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
    iput-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/util/y0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/y0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, "comments_count"

    const-string v2, "cc"

    const-string v3, "tel_number"

    const-string v4, "keyword"

    const-string v5, "subtype"

    const-string v6, "t_p"

    if-nez p1, :cond_0

    .line 2
    :try_start_1
    new-instance p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {p1}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    .line 3
    iget-object v7, p0, Lcom/allinone/callerid/util/y0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 4
    iget-object v7, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/model/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    .line 5
    iget-object v6, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype(Ljava/lang/String;)V

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype_cc(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setKeyword(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_count(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype_isserach(Z)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, ""

    if-eqz p1, :cond_1

    .line 13
    :try_start_2
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 14
    iget-object v7, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v7, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 17
    iget-object v5, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v5, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype(Ljava/lang/String;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 20
    iget-object v4, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v4, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setKeyword(Ljava/lang/String;)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    iget-object v3, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    iget-object v2, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype_cc(Ljava/lang/String;)V

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 29
    iget-object v1, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_count(Ljava/lang/String;)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype_isserach(Z)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/y0$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v1, "t_p"

    const-string v2, "subtype"

    const-string v3, "keyword"

    const-string v4, "tel_number"

    const-string v5, "subtype_cc"

    const-string v6, "subtype_isserach"

    const-string v7, "comment_count"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/y0$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "subtype"

    const-string v0, "OK"

    .line 3
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
