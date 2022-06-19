.class final Lio/bidmachine/f$3;
.super Lio/bidmachine/NetworkConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected final createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 53
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastAdapter;-><init>()V

    return-object v0
.end method
