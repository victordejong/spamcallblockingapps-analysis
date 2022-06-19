.class final Lcom/callerid/block/util/m0$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/m0;->b(Landroid/content/Context;IILjava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.field private a:Lcom/callerid/block/search/EZSearchResult;

.field private b:Lcom/callerid/block/bean/EZSearchContacts;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:J

.field final synthetic h:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;IIJI)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/m0$b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/callerid/block/util/m0$b;->d:Landroid/content/Context;

    iput p3, p0, Lcom/callerid/block/util/m0$b;->e:I

    iput p4, p0, Lcom/callerid/block/util/m0$b;->f:I

    iput-wide p5, p0, Lcom/callerid/block/util/m0$b;->g:J

    iput p7, p0, Lcom/callerid/block/util/m0$b;->h:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    new-instance p1, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {p1}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, ""

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, p1}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/callerid/block/search/EZSearchResult;->setContact(Z)V

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3, v2}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callerid/block/util/t0;->I(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3, v2}, Lcom/callerid/block/search/EZSearchResult;->setRaw_contact_id(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, v1}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/callerid/block/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFaild_error_log()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/callerid/block/search/EZSearchResult;->setFaild_error_log(I)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, p1}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, p1}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1, v2}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1, v3}, Lcom/callerid/block/search/EZSearchResult;->setReport_count(I)V

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, p1}, Lcom/callerid/block/search/EZSearchResult;->setReport_count(I)V

    :goto_2
    iget-object v2, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    if-gtz p1, :cond_7

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1, v3}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    :goto_3
    iget p1, p0, Lcom/callerid/block/util/m0$b;->e:I

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/callerid/block/search/EZSearchResult;->setDate(J)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/callerid/block/search/EZSearchResult;->setDate(J)V

    :goto_4
    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0, p1}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setAddress(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setWebsite(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getTag_main()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setTag_main(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getTag_sub()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setTag_sub(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getSoft_comments()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setSoft_comments(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/callerid/block/util/m0$b;->a:Lcom/callerid/block/search/EZSearchResult;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/callerid/block/util/m0$b;->d:Landroid/content/Context;

    iget v2, p0, Lcom/callerid/block/util/m0$b;->f:I

    iget-wide v3, p0, Lcom/callerid/block/util/m0$b;->g:J

    iget v5, p0, Lcom/callerid/block/util/m0$b;->h:I

    invoke-static/range {v0 .. v5}, Lcom/callerid/block/util/m0;->a(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;IJI)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/m0$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/m0$b;->b(Ljava/lang/Void;)V

    return-void
.end method
