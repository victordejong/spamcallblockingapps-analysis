.class public final Lio/bidmachine/rewarded/RewardedAd;
.super Lio/bidmachine/FullScreenAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAd<",
        "Lio/bidmachine/rewarded/RewardedAd;",
        "Lio/bidmachine/rewarded/RewardedRequest;",
        "Lio/bidmachine/FullScreenAdObject<",
        "Lio/bidmachine/rewarded/RewardedRequest;",
        ">;",
        "Lio/bidmachine/rewarded/RewardedListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {p0, p1, v0}, Lio/bidmachine/FullScreenAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method protected final createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/rewarded/RewardedRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/FullScreenAdObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/rewarded/RewardedRequest;",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/AdProcessCallback;",
            ")",
            "Lio/bidmachine/FullScreenAdObject<",
            "Lio/bidmachine/rewarded/RewardedRequest;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance p3, Lio/bidmachine/FullScreenAdObject;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/FullScreenAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/FullScreenAdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedFullscreenAd;)V

    return-object p3
.end method

.method public final bridge synthetic createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .locals 0

    .line 16
    check-cast p2, Lio/bidmachine/rewarded/RewardedRequest;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/rewarded/RewardedAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/rewarded/RewardedRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/FullScreenAdObject;

    move-result-object p1

    return-object p1
.end method
