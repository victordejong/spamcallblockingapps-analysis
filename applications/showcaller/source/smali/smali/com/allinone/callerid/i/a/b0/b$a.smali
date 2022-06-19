.class Lcom/allinone/callerid/i/a/b0/b$a;
.super Landroid/os/AsyncTask;
.source "SearchNumberDbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/b0/b;
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
        "Lcom/allinone/callerid/model/EZSearchContacts;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/b0/a;

.field private b:Lcom/allinone/callerid/model/EZSearchContacts;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/b0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/i/a/b0/b$a;->a:Lcom/allinone/callerid/i/a/b0/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/b0/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$a;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    if-eqz p1, :cond_0

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "searchNumber"

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/b0/b$a;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$a;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/b0/b$a;->a:Lcom/allinone/callerid/i/a/b0/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/b0/a;->a(Lcom/allinone/callerid/model/EZSearchContacts;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/b0/b$a;->a([Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/b0/b$a;->b(Lcom/allinone/callerid/model/EZSearchContacts;)V

    return-void
.end method
