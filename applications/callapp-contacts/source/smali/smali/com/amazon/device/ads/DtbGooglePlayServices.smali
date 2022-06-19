.class Lcom/amazon/device/ads/DtbGooglePlayServices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "DtbGooglePlayServices"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Z)V
    .locals 0

    .line 65
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->d(Z)V

    return-void
.end method

.method static a()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static b()Z
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 69
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
