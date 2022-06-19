.class Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DtbGooglePlayServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdvertisingInfo"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->a:Z

    return-void
.end method

.method static a()Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
    .locals 2

    .line 89
    new-instance v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;-><init>()V

    const/4 v1, 0x0

    .line 1097
    iput-boolean v1, v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->a:Z

    return-object v0
.end method


# virtual methods
.method final b()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
