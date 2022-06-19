.class Lcom/allinone/callerid/i/a/b0/b$b;
.super Landroid/os/AsyncTask;
.source "SearchNumberDbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/model/EZSearchContacts;

.field private b:Lcom/allinone/callerid/i/a/a0/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/a0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/b0/b$b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/i/a/b0/b$b;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/allinone/callerid/i/a/b0/b$b;->b:Lcom/allinone/callerid/i/a/a0/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/b0/b$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "1"

    if-eqz p1, :cond_6

    .line 2
    :try_start_1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "comment"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contacts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, ""

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->d:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_count()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_count(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_count(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 16
    :cond_5
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v1, "type_label"

    const-string v2, "comment_count"

    const-string v3, "report_count"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_6
    new-instance p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {p1}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_count(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/b0/b$b;->a:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/b0/b$b;->b:Lcom/allinone/callerid/i/a/a0/c;

    const-string v0, "ok"

    invoke-interface {p1, v0}, Lcom/allinone/callerid/i/a/a0/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/b0/b$b;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/b0/b$b;->b(Ljava/lang/Void;)V

    return-void
.end method
