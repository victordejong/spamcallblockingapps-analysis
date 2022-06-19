.class public Lcom/callapp/common/util/PhoneNumberUtilWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private b:Ljava/lang/reflect/Field;

.field private c:Ljava/lang/reflect/Method;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->d:I

    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "countryCallingCodeToRegionCodeMap"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->b:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    iget-object v1, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getMetadataForRegion"

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->c:Ljava/lang/reflect/Method;

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 38
    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->b:Ljava/lang/reflect/Field;

    .line 39
    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->c:Ljava/lang/reflect/Method;

    return-void

    :catch_1
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 34
    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->b:Ljava/lang/reflect/Field;

    .line 35
    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->c:Ljava/lang/reflect/Method;

    return-void

    :catch_2
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 30
    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->b:Ljava/lang/reflect/Field;

    .line 31
    iput-object v0, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/callapp/common/util/PhoneNumberUtilWrapper;
    .locals 2

    const-class v0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;

    monitor-enter v0

    .line 51
    :try_start_0
    new-instance v1, Lcom/callapp/common/util/PhoneNumberUtilWrapper;

    invoke-direct {v1}, Lcom/callapp/common/util/PhoneNumberUtilWrapper;-><init>()V
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
.method public getCountryCallingCodeToRegionCodeMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->b:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
