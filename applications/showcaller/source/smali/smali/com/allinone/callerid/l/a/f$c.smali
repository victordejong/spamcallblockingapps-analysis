.class Lcom/allinone/callerid/l/a/f$c;
.super Landroid/os/AsyncTask;
.source "OfflinePhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/l/a/f;
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
.field private a:Lcom/allinone/callerid/l/a/c;

.field private b:Lcom/allinone/callerid/model/EZSearchContacts;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/l/a/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/l/a/f$c;->a:Lcom/allinone/callerid/l/a/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1
    aget-object v2, p1, v0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v3

    .line 3
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    iget-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v4, "formatE164: "

    const-string v5, "Fixed line"

    const-string v6, "Mobile"

    const-string v7, "number_type_fixed_line_or_mobile"

    const-string v8, "number_type_fixed_line"

    const-string v9, "number_type_mobile"

    const-string v10, "search_offline_parser_guishudi"

    const-string v14, "mode:"

    const-string v15, "search"

    const-string v11, "searchContact: \u79bb\u7ebf\u67e5\u8be2"

    const-string v12, "+"

    const-string v13, ""

    move-object/from16 v16, v15

    const-string v15, "wbb"

    if-eqz v0, :cond_f

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v0, v17, v19

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v0

    if-nez v0, :cond_d

    .line 7
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v15, v11}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/phone/libphone/i;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->c(Landroid/content/Context;)V

    .line 11
    invoke-static {v2, v3}, Lcom/allinone/callerid/l/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 12
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->p(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->q(Landroid/content/Context;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->f()Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 22
    sget-object v2, Lcom/allinone/callerid/l/a/f$a;->a:[I

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->f()Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 26
    :cond_7
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->e(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->d(Landroid/content/Context;)V

    .line 29
    :cond_8
    new-instance v2, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {v2}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    iput-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    .line 30
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 32
    :cond_9
    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 33
    :cond_a
    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 34
    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    iget-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    .line 38
    :cond_b
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_c

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v16

    .line 40
    :cond_d
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_e

    const-string v0, "searchContact: \u672c\u5730\u5e93\u67e5\u8be2"

    .line 41
    invoke-static {v15, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v0, "db"

    return-object v0

    .line 42
    :cond_f
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_10

    .line 43
    invoke-static {v15, v11}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_10
    invoke-static {}, Lcom/phone/libphone/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 45
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->c(Landroid/content/Context;)V

    .line 46
    invoke-static {v2, v3}, Lcom/allinone/callerid/l/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 47
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_11

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_11
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->i()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 50
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->p(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->h()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 52
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->q(Landroid/content/Context;)V

    .line 53
    :cond_12
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 54
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 55
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 56
    :cond_13
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->f()Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 57
    sget-object v2, Lcom/allinone/callerid/l/a/f$a;->a:[I

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->f()Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    goto :goto_2

    .line 58
    :cond_14
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 60
    :cond_16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 61
    :cond_17
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->e(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->h()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 63
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->d(Landroid/content/Context;)V

    .line 64
    :cond_18
    new-instance v2, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {v2}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    iput-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    .line 65
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 67
    :cond_19
    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 68
    :cond_1a
    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 69
    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/phone/libphone/l/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 71
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 72
    iget-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    .line 73
    :cond_1b
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1c

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-object v16
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "search"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/l/a/f$c;->a:Lcom/allinone/callerid/l/a/c;

    iget-object v0, p0, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v1, p0, Lcom/allinone/callerid/l/a/f$c;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/allinone/callerid/l/a/c;->a(Lcom/allinone/callerid/model/EZSearchContacts;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "db"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/l/a/f$c;->a:Lcom/allinone/callerid/l/a/c;

    iget-object v0, p0, Lcom/allinone/callerid/l/a/f$c;->b:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/l/a/c;->b(Lcom/allinone/callerid/model/EZSearchContacts;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/f$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/f$c;->b(Ljava/lang/String;)V

    return-void
.end method
