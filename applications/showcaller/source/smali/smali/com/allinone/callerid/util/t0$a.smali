.class Lcom/allinone/callerid/util/t0$a;
.super Landroid/os/AsyncTask;
.source "ReportNumberAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/t0$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/util/t0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/e;->d()Lcom/allinone/callerid/f/e;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/t0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/e;->g(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/t0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "1"

    if-eqz p1, :cond_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/allinone/callerid/util/t0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    const-string v1, "type_label"

    const-string v2, "report_count"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {p1}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/util/t0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/util/t0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.allinone.callerid.RELOAD_DATA"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/t0$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/t0$a;->b(Ljava/lang/Void;)V

    return-void
.end method
