.class public final Lorg/mistergroup/shouldianswer/utils/f;
.super Ljava/lang/Object;
.source "CountryHelper.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/f;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/f;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/f;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 19
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 20
    :cond_0
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 26
    :try_start_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/y;->d()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    const-string v6, "(this as java.lang.String).toUpperCase()"

    if-eqz v4, :cond_3

    if-eqz v4, :cond_2

    .line 29
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_2
    new-instance v3, Lkotlin/TypeCastException;

    invoke-direct {v3, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    move-object v4, v0

    .line 30
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-lez v7, :cond_4

    move-object v7, v4

    goto :goto_1

    :cond_4
    move-object v7, v0

    .line 33
    :goto_1
    :try_start_3
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v8, v7}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 34
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v3, :cond_5

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_5
    new-instance v3, Lkotlin/TypeCastException;

    invoke-direct {v3, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    move-object v3, v0

    :goto_2
    move-object v7, v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v7, v0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v7, v4

    .line 39
    :goto_3
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    move-object v3, v0

    .line 43
    :goto_4
    move-object v5, v7

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_b

    .line 44
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ai;->z()Ljava/lang/String;

    move-result-object v7

    .line 45
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v5, v7}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 46
    sget-object v5, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/MyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "MyApp.instance.resources"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_9

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v5, "MyApp.instance.resources.configuration.locale"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MyApp.instance.resources\u2026figuration.locale.country"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :cond_9
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "MyAppGlobals.getOperatorCountry result is blank, use phone settings"

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v7, v0

    goto :goto_6

    .line 50
    :cond_a
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "MyAppGlobals.getOperatorCountry use cache"

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 53
    :cond_b
    :goto_6
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v5, v7}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 54
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v5, v7}, Lorg/mistergroup/shouldianswer/model/ai;->c(Ljava/lang/String;)V

    .line 55
    sput-object v7, Lorg/mistergroup/shouldianswer/utils/f;->c:Ljava/lang/String;

    .line 58
    :cond_c
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "countryOperator"

    invoke-virtual {v5, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MyAppGlobals.getOperatorCountry final="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " network="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sim="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " phone="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v7
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
