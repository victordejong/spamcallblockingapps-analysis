.class Lcom/callerid/block/mvc/model/sms/d$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/model/sms/d;
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
        "Ljava/util/List<",
        "Lcom/callerid/block/bean/SMSBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/mvc/model/sms/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/mvc/model/sms/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;",
            "Lcom/callerid/block/mvc/model/sms/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/callerid/block/mvc/model/sms/d$b;->a:Lcom/callerid/block/mvc/model/sms/c;

    iput-object p1, p0, Lcom/callerid/block/mvc/model/sms/d$b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/mvc/model/sms/d$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;"
        }
    .end annotation

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/mvc/model/sms/d$b;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "readsms"

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSmsDataStart:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/callerid/block/util/e;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/callerid/block/mvc/model/sms/d$b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/callerid/block/mvc/model/sms/d$b;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->isSearchedData()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/callerid/block/bean/SMSBean;->setSearchedData(Z)V

    iget-object v4, p0, Lcom/callerid/block/mvc/model/sms/d$b;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/SMSBean;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/callerid/block/bean/SMSBean;->setIs_contacts(Z)V

    iget-object v4, p0, Lcom/callerid/block/mvc/model/sms/d$b;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/callerid/block/util/t0;->I(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/SMSBean;->setRaw_contact_id(I)V

    iget-object v4, p0, Lcom/callerid/block/mvc/model/sms/d$b;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/callerid/block/util/t0;->J(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/callerid/block/bean/SMSBean;->setExistPhoto(Z)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->isIs_contacts()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v4

    iget-object v6, p0, Lcom/callerid/block/mvc/model/sms/d$b;->b:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/callerid/block/util/t0;->a0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/callerid/block/d/d;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Lcom/callerid/block/bean/SMSBean;->setSearched(Z)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/SMSBean;->setType_label(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callerid/block/mvc/model/sms/d$b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/SMSBean;->setType_label_show(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/SMSBean;->setReport_count(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/SMSBean;->setSearch_name(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callerid/block/bean/SMSBean;->setAvatar(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readSmsDataEnd:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/callerid/block/util/e;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    iget-object p1, p0, Lcom/callerid/block/mvc/model/sms/d$b;->c:Ljava/util/List;

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/model/sms/d$b;->a:Lcom/callerid/block/mvc/model/sms/c;

    invoke-interface {v0, p1}, Lcom/callerid/block/mvc/model/sms/c;->a(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/model/sms/d$b;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/model/sms/d$b;->b(Ljava/util/List;)V

    return-void
.end method
