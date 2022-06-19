.class public Lcom/phone/libphone/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Lcom/phone/libphone/l/a;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/phone/libphone/PhoneNumberUtil;->q()Lcom/phone/libphone/PhoneNumberUtil;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/phone/libphone/PhoneNumberUtil;->S(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/phone/libphone/Phonenumber$PhoneNumber;

    move-result-object p1

    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p2, p1, v0}, Lcom/phone/libphone/PhoneNumberUtil;->j(Lcom/phone/libphone/Phonenumber$PhoneNumber;Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->b:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p2, p1, v1}, Lcom/phone/libphone/PhoneNumberUtil;->j(Lcom/phone/libphone/Phonenumber$PhoneNumber;Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/phone/libphone/g;->d()Lcom/phone/libphone/g;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/phone/libphone/g;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/phone/libphone/g;->g(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Z

    move-result v4

    invoke-virtual {v2}, Lcom/phone/libphone/g;->f()Z

    move-result v2

    invoke-static {}, Lcom/phone/libphone/h;->a()Lcom/phone/libphone/h;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, Lcom/phone/libphone/h;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1}, Lcom/phone/libphone/PhoneNumberUtil;->w(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object p1

    new-instance p2, Lcom/phone/libphone/l/a;

    invoke-direct {p2}, Lcom/phone/libphone/l/a;-><init>()V

    invoke-virtual {p2, v0}, Lcom/phone/libphone/l/a;->j(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/phone/libphone/l/a;->k(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/phone/libphone/l/a;->l(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/phone/libphone/l/a;->i(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/phone/libphone/l/a;->m(Z)V

    invoke-virtual {p2, v2}, Lcom/phone/libphone/l/a;->n(Z)V

    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->o(Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;)V

    sget-object p3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->c:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, p1, :cond_0

    const-string p1, "Mobile"

    :goto_0
    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->p(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->b:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, p1, :cond_1

    const-string p1, "Fixed line"

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, p1, :cond_2

    const-string p1, "Fixed line \uff0fMobile"

    goto :goto_0

    :cond_2
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " phonenumber:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "wbb"

    invoke-static {p1, p0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/phone/libphone/k;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/databases/offlinedatavest.sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
