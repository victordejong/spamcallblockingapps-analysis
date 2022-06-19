.class public final Lio/bidmachine/rewarded/RewardedRequest;
.super Lio/bidmachine/FullScreenAdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rewarded/RewardedRequest$AdRequestListener;,
        Lio/bidmachine/rewarded/RewardedRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest<",
        "Lio/bidmachine/rewarded/RewardedRequest;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0}, Lio/bidmachine/FullScreenAdRequest;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rewarded/RewardedRequest$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lio/bidmachine/rewarded/RewardedRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest;->onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setReward(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-void
.end method
