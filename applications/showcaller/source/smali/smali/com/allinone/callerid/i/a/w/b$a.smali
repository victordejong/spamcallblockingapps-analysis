.class Lcom/allinone/callerid/i/a/w/b$a;
.super Landroid/os/AsyncTask;
.source "ReportContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/w/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:Lcom/allinone/callerid/i/a/w/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/w/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->e:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/allinone/callerid/i/a/w/b$a;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/allinone/callerid/i/a/w/b$a;->f:Lcom/allinone/callerid/i/a/w/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p1, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 6
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Spam"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->c:Ljava/lang/String;

    const-string v0, "Scam"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->d:Ljava/lang/String;

    const-string v0, "Telemarketing"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/w/b$a;->e:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/b$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/b$a;->f:Lcom/allinone/callerid/i/a/w/a;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/b$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/w/b$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/w/b$a;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/allinone/callerid/i/a/w/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/b$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/b$a;->b(Ljava/lang/String;)V

    return-void
.end method
