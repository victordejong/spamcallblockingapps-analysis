.class Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/location/GeoIpRequest;->fetchGeoIp(Landroid/content/Context;Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/location/GeoIpRequest;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/location/GeoIpRequest;Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;->this$0:Lnet/pubnative/lite/sdk/location/GeoIpRequest;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;->val$listener:Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;->val$listener:Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/GeoIpRequest$1;->val$listener:Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
