.class Lcom/callerid/block/f/c$j;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/callerid/block/bean/EZSearchContacts;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/callerid/block/f/c$j;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Lcom/callerid/block/bean/EZSearchContacts;
    .locals 7

    const-string p1, ""

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/callerid/block/f/c$j;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/callerid/block/f/c$j;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/f/c$j;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/callerid/block/util/t0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/phone/libphone/i;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v2, "search_offline_db"

    invoke-virtual {p1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/util/n0;->u(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v2, "search_offline_db_base"

    :goto_1
    invoke-virtual {p1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v2, "search_offline_db_full"

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/util/k;->k()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "US/USA"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v3

    const-string v4, "us_search_db_count"

    invoke-virtual {v3, v4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    const-string v3, "IN/IND"

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v4

    const-string v5, "in_search_db_count"

    invoke-virtual {v4, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    const-string v4, "CA/CAN"

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v5

    const-string v6, "can_search_db_count"

    invoke-virtual {v5, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/callerid/block/util/z;->m(Landroid/content/Context;)V

    new-instance v5, Lcom/callerid/block/util/f0;

    invoke-direct {v5, v0}, Lcom/callerid/block/util/f0;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/callerid/block/f/c$j;->a:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/callerid/block/util/f0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v5, "search_offline_db_success"

    invoke-virtual {v1, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/util/n0;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v5, "search_offline_db_success_base"

    :goto_3
    invoke-virtual {v1, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v5, "search_offline_db_success_full"

    goto :goto_3

    :goto_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/util/k;->l()V

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "us_search_db_ok_count"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "in_search_db_ok_count"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "can_search_db_ok_count"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_8
    invoke-static {v0}, Lcom/callerid/block/util/z;->n(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/f/c$j;->g:Ljava/lang/String;

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/callerid/block/f/c$j;->i:Lcom/callerid/block/bean/EZSearchContacts;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/f/c$j;->a([Ljava/lang/Object;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const v0, 0x7f100148

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/callerid/block/f/c;->Q()Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/callerid/block/f/c$j;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/f/c$j;->d:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/f/c$j;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/callerid/block/f/c;->C(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/callerid/block/f/c$j;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callerid/block/f/c$j;->e:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/f/c$j;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/callerid/block/f/c$j;->f:Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/f/c$j;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/callerid/block/f/c$j;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/f/c$j;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/callerid/block/f/c$j;->c:Ljava/lang/String;

    const v3, 0x7f080065

    if-eqz v0, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/callerid/block/f/c$j;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Lcom/callerid/block/f/c$j;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    if-lez p1, :cond_b

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/f/c$j;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object p1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
