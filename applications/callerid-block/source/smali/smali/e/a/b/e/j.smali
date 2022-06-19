.class public Le/a/b/e/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/telephony/TelephonyManager;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Le/a/b/e/j;->d(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->b()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object p1

    invoke-static {p1, p2, p0}, Le/a/b/e/j;->b(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/a;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    sget-object p2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->d:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p1, p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->a(Lcom/android/i18n/phonenumbers/a;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method private static b(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/a;
    .locals 2

    const-string v0, "PhoneUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->c(Lcom/android/i18n/phonenumbers/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getParsedNumber: not a valid phone number for country "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p0, "getParsedNumber: Not able to parse phone number"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static c(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSimCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Le/a/b/e/j;->c(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
