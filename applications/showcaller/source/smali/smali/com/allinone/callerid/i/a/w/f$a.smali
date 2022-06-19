.class Lcom/allinone/callerid/i/a/w/f$a;
.super Landroid/os/AsyncTask;
.source "ReportSubtypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/w/f;
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
.field private a:Lcom/allinone/callerid/bean/SubType;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/allinone/callerid/search/CallLogBean;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/bean/SubType;ZZLjava/lang/String;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/f$a;->e:Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/w/f$a;->a:Lcom/allinone/callerid/bean/SubType;

    .line 4
    iput-boolean p2, p0, Lcom/allinone/callerid/i/a/w/f$a;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/allinone/callerid/i/a/w/f$a;->c:Z

    .line 6
    iput-object p4, p0, Lcom/allinone/callerid/i/a/w/f$a;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/allinone/callerid/i/a/w/f$a;->e:Lcom/allinone/callerid/search/CallLogBean;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean p1, p0, Lcom/allinone/callerid/i/a/w/f$a;->b:Z

    const-string v0, "report_count"

    const-string v1, "type_label"

    const-string v2, "subtype_pdt"

    const-string v3, ""

    if-eqz p1, :cond_5

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v4, p0, Lcom/allinone/callerid/i/a/w/f$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    iget-object v4, p0, Lcom/allinone/callerid/i/a/w/f$a;->a:Lcom/allinone/callerid/bean/SubType;

    invoke-virtual {v4}, Lcom/allinone/callerid/bean/SubType;->getSubtype()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5
    iget-boolean v5, p0, Lcom/allinone/callerid/i/a/w/f$a;->c:Z

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget-object v5, p0, Lcom/allinone/callerid/i/a/w/f$a;->e:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v6, "subtype_editchild"

    invoke-virtual {v5, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p1, v4}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype_pdt(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/allinone/callerid/i/a/w/f$a;->a:Lcom/allinone/callerid/bean/SubType;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/SubType;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 19
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/f/e;->d()Lcom/allinone/callerid/f/e;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/f$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/e;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v4, p0, Lcom/allinone/callerid/i/a/w/f$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 22
    iget-boolean v4, p0, Lcom/allinone/callerid/i/a/w/f$a;->c:Z

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    :cond_6
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setSubtype_pdt(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/f$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/f$a;->b(Ljava/lang/String;)V

    return-void
.end method
