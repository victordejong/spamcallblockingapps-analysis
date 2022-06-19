.class public Lcom/allinone/callerid/util/p;
.super Ljava/lang/Object;
.source "EZSingletonHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1}, Lcom/allinone/callerid/util/p;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 5
    new-instance v2, Lcom/allinone/callerid/model/EZCountryCode;

    invoke-direct {v2}, Lcom/allinone/callerid/model/EZCountryCode;-><init>()V

    .line 6
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "COUNTRY"

    .line 7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_name(Ljava/lang/String;)V

    const-string v4, "COUNTRY CODE"

    .line 8
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    const-string v4, "ISO CODES"

    .line 9
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/p;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;
    .locals 3

    const/4 p0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/allinone/callerid/util/e0;->a:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/util/p$a;

    invoke-direct {v1}, Lcom/allinone/callerid/util/p$a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->p(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CountryCode"

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, ""

    if-eqz p0, :cond_2

    .line 6
    new-instance v1, Lcom/allinone/callerid/model/EZCountryCode;

    invoke-direct {v1}, Lcom/allinone/callerid/model/EZCountryCode;-><init>()V

    :try_start_1
    const-string v2, "country_code"

    .line 7
    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    const-string v2, "country_iso"

    .line 8
    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/model/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    const-string v2, "country_name"

    .line 9
    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_name(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 10
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/model/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_name(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v1

    .line 14
    :cond_2
    new-instance p0, Lcom/allinone/callerid/model/EZCountryCode;

    invoke-direct {p0}, Lcom/allinone/callerid/model/EZCountryCode;-><init>()V

    .line 15
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/model/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/model/EZCountryCode;->setCountry_name(Ljava/lang/String;)V

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {v1, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "phone"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "author unknown"

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p1, ""

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v2, 0x7f0f0000

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0f0001

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;Lcom/allinone/callerid/model/EZCountryCode;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->o()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/allinone/callerid/util/e0;->a:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/util/p$b;

    invoke-direct {v0}, Lcom/allinone/callerid/util/p$b;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->p(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->o()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "CountryCode"

    const/4 v0, 0x2

    .line 4
    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "country_code"

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "country_iso"

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "country_name"

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
