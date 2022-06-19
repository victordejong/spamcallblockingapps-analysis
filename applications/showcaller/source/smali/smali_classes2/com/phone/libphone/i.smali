.class public Lcom/phone/libphone/i;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Lcom/phone/libphone/l/a;
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/phone/libphone/PhoneNumberUtil;->q()Lcom/phone/libphone/PhoneNumberUtil;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p0, p1}, Lcom/phone/libphone/PhoneNumberUtil;->S(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/phone/libphone/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p2, p1, v0}, Lcom/phone/libphone/PhoneNumberUtil;->j(Lcom/phone/libphone/Phonenumber$PhoneNumber;Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p2, p1, v1}, Lcom/phone/libphone/PhoneNumberUtil;->j(Lcom/phone/libphone/Phonenumber$PhoneNumber;Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/phone/libphone/g;->d()Lcom/phone/libphone/g;

    move-result-object v2

    .line 6
    invoke-virtual {v2, p1, p3}, Lcom/phone/libphone/g;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2, p1}, Lcom/phone/libphone/g;->i(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Z

    move-result v4

    .line 8
    invoke-virtual {v2}, Lcom/phone/libphone/g;->h()Z

    move-result v5

    .line 9
    invoke-virtual {v2, p1, p3}, Lcom/phone/libphone/g;->e(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/phone/libphone/h;->a()Lcom/phone/libphone/h;

    move-result-object v6

    .line 11
    invoke-virtual {v6, p1, p3}, Lcom/phone/libphone/h;->b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-virtual {p2, p1}, Lcom/phone/libphone/PhoneNumberUtil;->w(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/phone/libphone/l/a;

    invoke-direct {p2}, Lcom/phone/libphone/l/a;-><init>()V

    .line 14
    invoke-virtual {p2, v0}, Lcom/phone/libphone/l/a;->k(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, v1}, Lcom/phone/libphone/l/a;->l(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v3}, Lcom/phone/libphone/l/a;->m(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p3}, Lcom/phone/libphone/l/a;->j(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2, v5}, Lcom/phone/libphone/l/a;->n(Z)V

    .line 19
    invoke-virtual {p2, v4}, Lcom/phone/libphone/l/a;->p(Z)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->q(Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;)V

    .line 21
    invoke-virtual {p2, v2}, Lcom/phone/libphone/l/a;->o(Ljava/lang/String;)V

    .line 22
    sget-object p3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->e:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, p1, :cond_0

    const-string p1, "Mobile"

    .line 23
    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    sget-object p3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, p1, :cond_1

    const-string p1, "Fixed line"

    .line 25
    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    sget-object p3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;->f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, p1, :cond_2

    const-string p1, "Fixed line \uff0fMobile"

    .line 27
    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 28
    invoke-virtual {p2, p1}, Lcom/phone/libphone/l/a;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p2

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_3

    .line 31
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

    invoke-static {p1, p0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/phone/libphone/k;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
