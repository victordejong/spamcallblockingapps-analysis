.class Lcom/callerid/block/k/a/e$d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/k/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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
.field private a:Lcom/callerid/block/k/a/a;

.field private b:Lcom/callerid/block/bean/EZSearchContacts;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callerid/block/k/a/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/k/a/e$d;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/callerid/block/k/a/e$d;->a:Lcom/callerid/block/k/a/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    const-string v2, "wbb"

    if-nez v1, :cond_16

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "searchContact: \u79bb\u7ebf\u67e5\u8be2"

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/phone/libphone/i;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v3, "search_offline_parser_new"

    invoke-virtual {v1, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v1

    const-string v3, "US/USA"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v4

    const-string v5, "us_search_parser_new"

    invoke-virtual {v4, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    const-string v4, "IN/IND"

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v5

    const-string v6, "in_search_parser_new"

    invoke-virtual {v5, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_2
    const-string v5, "CA/CAN"

    if-eqz v1, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v6

    const-string v7, "can_search_parser_new"

    invoke-virtual {v6, v7}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1, v0}, Lcom/callerid/block/k/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object p1

    if-eqz p1, :cond_15

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mode:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/z;->f(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/z;->g(Landroid/content/Context;)V

    :cond_5
    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->e()Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/callerid/block/k/a/e$a;->a:[I

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->e()Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "number_type_voip"

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "number_type_toll_free"

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "number_type_fixed_line_or_mobile"

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "number_type_fixed_line"

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "number_type_mobile"

    :goto_1
    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_b
    :goto_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_offline_parser_success"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    if-eqz v1, :cond_c

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "us_search_parser_ok"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "in_search_parser_ok"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "can_search_parser_ok"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v6, "search_offline_parser_loc_city_success"

    invoke-virtual {v0, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    if-eqz v1, :cond_f

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v6, "us_search_parser_loc_city_ok"

    invoke-virtual {v0, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v6, "in_search_parser_loc_city_ok"

    invoke-virtual {v0, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v6, "can_search_parser_loc_city_ok"

    invoke-virtual {v0, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v6, "search_offline_parser_loc_success"

    invoke-virtual {v0, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    if-eqz v1, :cond_12

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v3, "us_search_parser_loc_ok"

    invoke-virtual {v0, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v3, "in_search_parser_loc_ok"

    invoke-virtual {v0, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "can_search_parser_loc_ok"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_14
    new-instance v0, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v0}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/phone/libphone/l/a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/k/a/e$d;->c:Ljava/lang/String;

    if-eqz p1, :cond_15

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/callerid/block/k/a/e$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/k/a/e$d;->c:Ljava/lang/String;

    :cond_15
    const-string p1, "search"

    return-object p1

    :cond_16
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_17

    const-string p1, "searchContact: \u672c\u5730\u5e93\u67e5\u8be2"

    invoke-static {v2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string p1, "db"

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/k/a/e$d;->a:Lcom/callerid/block/k/a/a;

    iget-object v0, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    iget-object v1, p0, Lcom/callerid/block/k/a/e$d;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/callerid/block/k/a/a;->b(Lcom/callerid/block/bean/EZSearchContacts;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "db"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/k/a/e$d;->a:Lcom/callerid/block/k/a/a;

    iget-object v0, p0, Lcom/callerid/block/k/a/e$d;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-interface {p1, v0}, Lcom/callerid/block/k/a/a;->a(Lcom/callerid/block/bean/EZSearchContacts;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/k/a/e$d;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/k/a/e$d;->b(Ljava/lang/String;)V

    return-void
.end method
