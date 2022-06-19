.class Lcom/allinone/callerid/util/z0$c;
.super Landroid/os/AsyncTask;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/z0;->c(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field a:Lcom/allinone/callerid/search/EZSearchResult;

.field b:Lcom/allinone/callerid/model/EZSearchContacts;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/z0$c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/allinone/callerid/util/z0$c;->d:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->g1(Z)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/z0$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    .line 3
    new-instance v0, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {v0}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/util/z0$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setContact(Z)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    .line 10
    invoke-virtual {v4}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setRaw_contact_id(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    if-eqz v3, :cond_8

    .line 15
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setSubtype(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_cc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setSubtype_cc(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setKeyword(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 23
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 26
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setReport_count(I)V

    goto :goto_1

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/search/EZSearchResult;->setReport_count(I)V

    const/4 v0, 0x0

    .line 32
    :goto_1
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-lez v0, :cond_5

    .line 33
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setIsSpam(Z)V

    goto :goto_2

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/search/EZSearchResult;->setIsSpam(Z)V

    .line 35
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p1, "Mobile"

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Fixed line"

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 38
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setAddress(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setWebsite(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getTag_main()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setTag_main(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getTag_sub()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setTag_sub(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getSoft_comments()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setSoft_comments(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setComment_tags(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setCountry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$c;->a:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$c;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/z0;->b(Landroid/content/Context;Lcom/allinone/callerid/search/EZSearchResult;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/z0$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/z0$c;->b(Ljava/lang/Void;)V

    return-void
.end method
