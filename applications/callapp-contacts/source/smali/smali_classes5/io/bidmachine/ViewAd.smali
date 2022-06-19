.class public abstract Lio/bidmachine/ViewAd;
.super Lio/bidmachine/BidMachineAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdType:",
        "Lio/bidmachine/ViewAd<",
        "TAdType;TAdRequestType;TAdObjectType;TUnifiedAdRequestParamsType;TAd",
        "ListenerType;",
        ">;AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;TUnifiedAdRequestParamsType;>;AdObjectType:",
        "Lio/bidmachine/ViewAdObject<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        "Ad",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TAdType;>;>",
        "Lio/bidmachine/BidMachineAd<",
        "TAdType;TAdRequestType;TAdObjectType;",
        "Lio/bidmachine/models/AdObjectParams;",
        "TUnifiedAdRequestParamsType;TAd",
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
.method show(Landroid/view/ViewGroup;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/ViewAd;->getLoadedObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/ViewAd;->prepareShow()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lio/bidmachine/ViewAdObject;->show(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
