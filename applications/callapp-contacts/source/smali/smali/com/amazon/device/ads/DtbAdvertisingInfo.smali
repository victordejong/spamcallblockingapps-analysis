.class final Lcom/amazon/device/ads/DtbAdvertisingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DtbAdvertisingInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1033
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 1034
    new-instance v0, Lcom/amazon/device/ads/DtbGooglePlayServices;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices;-><init>()V

    .line 2021
    invoke-static {}, Lcom/amazon/device/ads/DtbGooglePlayServices;->a()Z

    move-result v0

    const-string v1, "The Google Play Services Advertising Identifier feature is not available."

    if-nez v0, :cond_0

    .line 2022
    sget-object v0, Lcom/amazon/device/ads/DtbGooglePlayServices;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2027
    invoke-static {}, Lcom/amazon/device/ads/DtbGooglePlayServices;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2029
    invoke-static {}, Lcom/amazon/device/ads/DtbGooglePlayServicesAdapter;->a()Lcom/amazon/device/ads/DtbGooglePlayServicesAdapter;

    .line 2030
    invoke-static {}, Lcom/amazon/device/ads/DtbGooglePlayServicesAdapter;->b()Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;

    move-result-object v0

    .line 2102
    iget-object v3, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3102
    iget-object v3, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b:Ljava/lang/String;

    .line 2031
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2037
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/DtbFireOSServiceAdapter;->a()Lcom/amazon/device/ads/DtbFireOSServiceAdapter;

    .line 2038
    invoke-static {}, Lcom/amazon/device/ads/DtbFireOSServiceAdapter;->b()Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;

    move-result-object v3

    .line 4102
    iget-object v4, v3, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 5102
    iget-object v4, v3, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b:Ljava/lang/String;

    .line 2039
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6093
    iget-boolean v0, v3, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->a:Z

    .line 2040
    invoke-static {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices;->a(Z)V

    move-object v0, v3

    goto :goto_1

    .line 2045
    :cond_2
    sget-object v3, Lcom/amazon/device/ads/DtbGooglePlayServices;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    .line 7093
    iget-boolean v0, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->a:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 2047
    invoke-static {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices;->a(Z)V

    .line 2049
    :cond_4
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->a()Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;

    move-result-object v0

    .line 7102
    :goto_1
    iget-object v1, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b:Ljava/lang/String;

    .line 1041
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->g()Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1044
    invoke-static {v2}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1045
    invoke-static {}, Lcom/amazon/device/ads/DtbAdvertisingInfo;->a()V

    .line 1046
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Advertising identifier is new. Idfa="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_2

    .line 1047
    :cond_5
    invoke-static {v2}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 8020
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->c(Z)V

    .line 1049
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Advertising identifier has changed. CurrentIdfa="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " storedIdfa="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 1058
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1059
    invoke-static {}, Lcom/amazon/device/ads/DtbAdvertisingInfo;->a()V

    .line 1061
    :cond_7
    invoke-static {v1}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1062
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {v1}, Lcom/amazon/device/ads/DtbSharedPreferences;->c(Ljava/lang/String;)V

    .line 8115
    :cond_8
    iget-object v2, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    .line 1065
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v2

    .line 9115
    iget-object v3, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->c:Ljava/lang/Boolean;

    .line 1065
    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Ljava/lang/Boolean;)V

    .line 1067
    :cond_9
    sget-object v2, Lcom/amazon/device/ads/DtbAdvertisingInfo;->a:Ljava/lang/String;

    const-string v3, "Advertising identifier intialization process complete"

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Google AdId intialized using Google Play Service. AdvertisingIdentifier="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isLimitAdTrackingEnabled="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10115
    iget-object v0, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->c:Ljava/lang/Boolean;

    .line 1069
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    return-void

    :cond_a
    const-string v0, "unable to initialize advertising info without setting app context"

    .line 13
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->b(Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->b(Z)V

    return-void
.end method
