.class public abstract Lio/bidmachine/FullScreenAd;
.super Lio/bidmachine/BidMachineAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/FullScreenAd<",
        "TSelfType;TAdRequestType;TAdObjectType;T",
        "ListenerType;",
        ">;AdRequestType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TAdRequestType;>;AdObjectType:",
        "Lio/bidmachine/FullScreenAdObject<",
        "TAdRequestType;>;",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Lio/bidmachine/BidMachineAd<",
        "TSelfType;TAdRequestType;TAdObjectType;",
        "Lio/bidmachine/models/AdObjectParams;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        "T",
        "ListenerType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lio/bidmachine/BidMachineAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 37
    invoke-super {p0}, Lio/bidmachine/BidMachineAd;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/FullScreenAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAd;->getLoadedObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/FullScreenAdObject;

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAd;->prepareShow()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    iget-object v0, p0, Lio/bidmachine/FullScreenAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v1, Lio/bidmachine/utils/BMError;->Connection:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/FullScreenAdObject;->show(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
