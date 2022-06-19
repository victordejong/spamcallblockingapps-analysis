.class public Lio/bidmachine/ads/networks/nast/NastAdapter;
.super Lio/bidmachine/NetworkAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lio/bidmachine/AdsType;

    .line 11
    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nast"

    const-string v2, "1.0"

    const-string v3, "1.7.1.1"

    invoke-direct {p0, v1, v2, v3, v0}, Lio/bidmachine/NetworkAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public createNativeAd()Lio/bidmachine/unified/UnifiedNativeAd;
    .locals 1

    .line 19
    new-instance v0, Lio/bidmachine/ads/networks/nast/a;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/a;-><init>()V

    return-object v0
.end method
