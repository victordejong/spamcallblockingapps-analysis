.class public Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;


# instance fields
.field private final b:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->b:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getCountryNameForNumber"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/google/i18n/phonenumbers/k$a;

    aput-object v5, v3, v4

    const-class v4, Ljava/util/Locale;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->c:Ljava/lang/reflect/Method;

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 31
    iput-object v1, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->c:Ljava/lang/reflect/Method;

    return-void

    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 28
    iput-object v1, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;
    .locals 2

    const-class v0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->a:Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;

    invoke-direct {v1}, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;-><init>()V

    sput-object v1, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->a:Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;

    .line 40
    :cond_0
    sget-object v1, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->a:Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->c:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->b:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final b(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->a(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/callapp/common/util/PhoneNumberOfflineGeocoderWrapper;->b:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    invoke-virtual {v2, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v1, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
