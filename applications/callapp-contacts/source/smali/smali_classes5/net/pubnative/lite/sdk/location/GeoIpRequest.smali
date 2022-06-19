.class public Lnet/pubnative/lite/sdk/location/GeoIpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEndpointUrl()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pubnative.info"

    .line 59
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "country"

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchGeoIp(Landroid/content/Context;Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/GeoIpRequest;->getEndpointUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;

    invoke-direct {v1, p0, p2}, Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;-><init>(Lnet/pubnative/lite/sdk/location/GeoIpRequest;Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, p2, p2, v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    return-void
.end method
