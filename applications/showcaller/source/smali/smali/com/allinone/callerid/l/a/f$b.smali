.class Lcom/allinone/callerid/l/a/f$b;
.super Landroid/os/AsyncTask;
.source "OfflinePhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/l/a/f;
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
        "Lcom/allinone/callerid/search/EZSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/l/a/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/l/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/l/a/f$b;->a:Lcom/allinone/callerid/l/a/g;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/search/EZSearchResult;
    .locals 12

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    aget-object v1, p1, v1

    const/4 v3, 0x1

    .line 2
    aget-object p1, p1, v3

    .line 3
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-nez v4, :cond_b

    .line 4
    :try_start_1
    invoke-static {v1, p1}, Lcom/allinone/callerid/l/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "\u79bb\u7ebf\u6570\u636e\u5e93 isHaveOfflineDb"

    const-string v7, "\u79bb\u7ebf\u6570\u636e\u5e93search_number: "

    const-string v8, "wbb"

    if-eqz v4, :cond_6

    .line 5
    :try_start_2
    new-instance v9, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {v9}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v10

    invoke-virtual {v4}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/phone/libphone/l/a;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v9, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Lcom/phone/libphone/l/a;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 13
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/allinone/callerid/util/h1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/h1;->k0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    .line 22
    invoke-static {v8, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_3
    new-instance p1, Lcom/allinone/callerid/util/n0;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/allinone/callerid/util/n0;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1, v4, v1}, Lcom/allinone/callerid/util/n0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 25
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label_id(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 36
    invoke-virtual {v9, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setContact(Z)V

    .line 37
    invoke-virtual {v9, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 38
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V

    :cond_5
    return-object v9

    :cond_6
    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 40
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/allinone/callerid/util/h1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 42
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_7

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/util/h1;->k0()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_8

    .line 46
    invoke-static {v8, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_8
    new-instance v0, Lcom/allinone/callerid/util/n0;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/allinone/callerid/util/n0;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/allinone/callerid/util/n0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 49
    new-instance v0, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {v0}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    .line 50
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label_id(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 61
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 62
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setContact(Z)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 64
    :cond_9
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V

    move-object v2, v0

    :cond_a
    return-object v2

    .line 65
    :cond_b
    new-instance p1, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {p1}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    .line 66
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label_id(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v6, "Mobile"

    .line 70
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "Fixed line"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 71
    :cond_c
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 72
    :cond_d
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 74
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_e
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 76
    :goto_1
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 79
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    .line 80
    :cond_f
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 82
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    .line 83
    :cond_10
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 85
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    .line 86
    :cond_11
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 90
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    .line 91
    :cond_12
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 92
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 93
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    :cond_13
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 95
    :goto_2
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 97
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setAddress(Ljava/lang/String;)V

    .line 98
    :cond_14
    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 100
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 101
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setContact(Z)V

    .line 102
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_15
    return-object p1

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method protected b(Lcom/allinone/callerid/search/EZSearchResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/l/a/f$b;->a:Lcom/allinone/callerid/l/a/g;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/l/a/g;->a(Lcom/allinone/callerid/search/EZSearchResult;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.allinone.callerid.INIT_HISTORY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
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
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/f$b;->a([Ljava/lang/String;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/f$b;->b(Lcom/allinone/callerid/search/EZSearchResult;)V

    return-void
.end method
