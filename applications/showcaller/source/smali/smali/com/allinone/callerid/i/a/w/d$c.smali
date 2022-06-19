.class Lcom/allinone/callerid/i/a/w/d$c;
.super Landroid/os/AsyncTask;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/w/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:Lcom/allinone/callerid/i/a/w/e;


# direct methods
.method constructor <init>(IIILcom/allinone/callerid/i/a/w/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput p1, p0, Lcom/allinone/callerid/i/a/w/d$c;->b:I

    .line 3
    iput p2, p0, Lcom/allinone/callerid/i/a/w/d$c;->c:I

    .line 4
    iput p3, p0, Lcom/allinone/callerid/i/a/w/d$c;->d:I

    .line 5
    iput-object p4, p0, Lcom/allinone/callerid/i/a/w/d$c;->e:Lcom/allinone/callerid/i/a/w/e;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/g;->a()Lcom/allinone/callerid/f/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/f/g;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/w/d$c;->a:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/allinone/callerid/i/a/w/d$c$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/w/d$c$a;-><init>(Lcom/allinone/callerid/i/a/w/d$c;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/ReportedContent;

    .line 7
    new-instance v3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v3}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/ReportedContent;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 9
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/ReportedContent;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 10
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/ReportedContent;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x360b6c99

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_2

    const v7, 0x7c1c1c71

    if-eq v6, v7, :cond_1

    const v7, 0x7c1c4d3e

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "is_spam"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "is_scam"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "is_telemarketing"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget v4, p0, Lcom/allinone/callerid/i/a/w/d$c;->d:I

    add-int/2addr v4, v9

    iput v4, p0, Lcom/allinone/callerid/i/a/w/d$c;->d:I

    goto :goto_2

    .line 12
    :cond_5
    iget v4, p0, Lcom/allinone/callerid/i/a/w/d$c;->c:I

    add-int/2addr v4, v9

    iput v4, p0, Lcom/allinone/callerid/i/a/w/d$c;->c:I

    goto :goto_2

    .line 13
    :cond_6
    iget v4, p0, Lcom/allinone/callerid/i/a/w/d$c;->b:I

    add-int/2addr v4, v9

    iput v4, p0, Lcom/allinone/callerid/i/a/w/d$c;->b:I

    .line 14
    :goto_2
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/ReportedContent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/allinone/callerid/search/CallLogBean;->b1(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v2

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 16
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->P0(Z)V

    .line 17
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_7

    :try_start_1
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 20
    :cond_8
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 21
    :cond_9
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 22
    :cond_a
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 23
    :cond_b
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 24
    :cond_c
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 25
    :cond_d
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 26
    :cond_e
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 27
    :cond_f
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 28
    :cond_10
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 29
    :cond_11
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 30
    :cond_12
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->w0(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->g1(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->D0(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/allinone/callerid/search/CallLogBean;->N0(J)V

    .line 42
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/allinone/callerid/search/CallLogBean;->v0(I)V

    .line 43
    :cond_13
    iget-object v2, p0, Lcom/allinone/callerid/i/a/w/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_14
    const-string p1, "5887"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "5887"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/w/d$c;->e:Lcom/allinone/callerid/i/a/w/e;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/w/d$c;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/allinone/callerid/i/a/w/d$c;->b:I

    iget v2, p0, Lcom/allinone/callerid/i/a/w/d$c;->c:I

    iget v3, p0, Lcom/allinone/callerid/i/a/w/d$c;->d:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/allinone/callerid/i/a/w/e;->a(Ljava/util/ArrayList;III)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/d$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/w/d$c;->b(Ljava/lang/String;)V

    return-void
.end method
