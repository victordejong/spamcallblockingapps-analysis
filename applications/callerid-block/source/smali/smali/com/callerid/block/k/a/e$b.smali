.class Lcom/callerid/block/k/a/e$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/k/a/e;
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
        "Lcom/callerid/block/search/EZSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/k/a/f;


# direct methods
.method public constructor <init>(Lcom/callerid/block/k/a/f;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/k/a/e$b;->a:Lcom/callerid/block/k/a/f;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/callerid/block/search/EZSearchResult;
    .locals 14

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-nez v5, :cond_b

    :try_start_1
    invoke-static {v3, p1}, Lcom/callerid/block/k/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "number_search_oflline_db_success"

    const-string v7, "\u79bb\u7ebf\u6570\u636e\u5e93 isHaveOfflineDb"

    const-string v8, "number_search_oflline_db"

    const-string v9, "\u79bb\u7ebf\u6570\u636e\u5e93search_number: "

    const-string v10, "wbb"

    if-eqz v2, :cond_6

    :try_start_2
    new-instance v11, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {v11}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v12

    invoke-virtual {v2}, Lcom/phone/libphone/l/a;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/phone/libphone/l/a;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v2, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v3, p1}, Lcom/callerid/block/util/t0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/phone/libphone/i;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_3

    invoke-static {v10, v7}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Lcom/callerid/block/util/f0;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/callerid/block/util/f0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2, v3}, Lcom/callerid/block/util/f0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v11, v4}, Lcom/callerid/block/search/EZSearchResult;->setContact(Z)V

    invoke-virtual {v11, v0}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V

    :cond_5
    return-object v11

    :cond_6
    if-eqz p1, :cond_a

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v3, p1}, Lcom/callerid/block/util/t0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/phone/libphone/i;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_8

    invoke-static {v10, v7}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/util/f0;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callerid/block/util/f0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v3}, Lcom/callerid/block/util/f0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {v0}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/EZSearchResult;->setContact(Z)V

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V

    move-object v1, v0

    :cond_a
    return-object v1

    :cond_b
    new-instance p1, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {p1}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    const-string v8, "Mobile"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "Fixed line"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_c
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v6}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {p1, v7}, Lcom/callerid/block/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    if-nez v7, :cond_13

    goto :goto_2

    :cond_13
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    :cond_14
    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v0, :cond_16

    if-gtz v7, :cond_15

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    invoke-virtual {p1, v4}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    goto :goto_4

    :cond_16
    invoke-virtual {p1, v2}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    :goto_4
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    invoke-virtual {p1, v6}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v5}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p1, v4}, Lcom/callerid/block/search/EZSearchResult;->setContact(Z)V

    invoke-virtual {p1, v0}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_19
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method protected b(Lcom/callerid/block/search/EZSearchResult;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/k/a/e$b;->a:Lcom/callerid/block/k/a/f;

    invoke-interface {v0, p1}, Lcom/callerid/block/k/a/f;->a(Lcom/callerid/block/search/EZSearchResult;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/k/a/e$b;->a([Ljava/lang/String;)Lcom/callerid/block/search/EZSearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p0, p1}, Lcom/callerid/block/k/a/e$b;->b(Lcom/callerid/block/search/EZSearchResult;)V

    return-void
.end method
