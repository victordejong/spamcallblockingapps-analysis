.class public Lcom/callerid/block/util/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/util/j;


# instance fields
.field public a:Lcom/callerid/block/bean/EZCountryCode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/callerid/block/util/j;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    new-instance v2, Lcom/callerid/block/bean/EZCountryCode;

    invoke-direct {v2}, Lcom/callerid/block/bean/EZCountryCode;-><init>()V

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "COUNTRY"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_name(Ljava/lang/String;)V

    const-string v4, "COUNTRY CODE"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    const-string v4, "ISO CODES"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callerid/block/bean/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/j$a;

    invoke-direct {v1}, Lcom/callerid/block/util/j$a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, ""

    if-eqz p0, :cond_2

    new-instance v1, Lcom/callerid/block/bean/EZCountryCode;

    invoke-direct {v1}, Lcom/callerid/block/bean/EZCountryCode;-><init>()V

    :try_start_1
    const-string v2, "country_code"

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    const-string v2, "country_iso"

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    const-string v2, "country_name"

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_name(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_name(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_2
    new-instance p0, Lcom/callerid/block/bean/EZCountryCode;

    invoke-direct {p0}, Lcom/callerid/block/bean/EZCountryCode;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_code(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/callerid/block/bean/EZCountryCode;->setIso_code(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/callerid/block/bean/EZCountryCode;->setCountry_name(Ljava/lang/String;)V

    return-object p0
.end method

.method public static e()Lcom/callerid/block/util/j;
    .locals 1

    sget-object v0, Lcom/callerid/block/util/j;->b:Lcom/callerid/block/util/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/util/j;

    invoke-direct {v0}, Lcom/callerid/block/util/j;-><init>()V

    sput-object v0, Lcom/callerid/block/util/j;->b:Lcom/callerid/block/util/j;

    :cond_0
    sget-object v0, Lcom/callerid/block/util/j;->b:Lcom/callerid/block/util/j;

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p1, ""

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v2, 0x7f0f0000

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

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

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0f0001

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

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

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;Lcom/callerid/block/bean/EZCountryCode;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v0, Lcom/callerid/block/util/j$b;

    invoke-direct {v0}, Lcom/callerid/block/util/j$b;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "CallerIdMain"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "country_code"

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "country_iso"

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "country_name"

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
