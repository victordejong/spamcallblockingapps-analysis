.class Lcom/allinone/callerid/i/a/p/c$a;
.super Landroid/os/AsyncTask;
.source "BlookFramnentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/p/c;
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
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/allinone/callerid/i/a/p/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/p/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/p/c$a;->b:Lcom/allinone/callerid/i/a/p/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/b;->a()Lcom/allinone/callerid/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/f/b;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/p/c$a;->a:Ljava/util/ArrayList;

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "blockcall"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedlist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/allinone/callerid/i/a/p/c$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/p/c$a$a;-><init>(Lcom/allinone/callerid/i/a/p/c$a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/BlockCall;

    .line 9
    new-instance v2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v2}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/BlockCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 11
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/BlockCall;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->P0(Z)V

    .line 14
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Mobile"

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Fixed line"

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->w0(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->g1(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->D0(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->N0(J)V

    .line 34
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/search/CallLogBean;->v0(I)V

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/i/a/p/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const-string p1, "6888"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "6888"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/p/c$a;->b:Lcom/allinone/callerid/i/a/p/a;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/p/c$a;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/i/a/p/a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/p/c$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/p/c$a;->b(Ljava/lang/String;)V

    return-void
.end method
