.class Lcom/callerid/block/k/a/e$e;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/k/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/callerid/block/search/CallLogBean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/k/a/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/k/a/e$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/callerid/block/search/CallLogBean;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Lcom/callerid/block/k/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v2}, Lcom/callerid/block/search/CallLogBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v1}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move-object v1, v2

    goto/16 :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto/16 :goto_1

    :cond_1
    :try_start_4
    new-instance v0, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v0}, Lcom/callerid/block/search/CallLogBean;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->w0(Z)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->H0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->s0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->t0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Mobile"

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Fixed line"

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->o0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->T(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->U(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->f0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->C0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFaild_error_log()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->e0(I)V

    invoke-virtual {v0, p1}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v1
.end method

.method protected b(Lcom/callerid/block/search/CallLogBean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callerid/block/f/a;->r(Landroid/content/Context;Lcom/callerid/block/search/CallLogBean;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/callerid/block/k/a/e$e$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/k/a/e$e$a;-><init>(Lcom/callerid/block/k/a/e$e;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/k/a/e$e;->a([Ljava/lang/String;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p0, p1}, Lcom/callerid/block/k/a/e$e;->b(Lcom/callerid/block/search/CallLogBean;)V

    return-void
.end method
