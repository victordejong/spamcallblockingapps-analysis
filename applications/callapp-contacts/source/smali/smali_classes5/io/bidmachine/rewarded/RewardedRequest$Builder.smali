.class public final Lio/bidmachine/rewarded/RewardedRequest$Builder;
.super Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rewarded/RewardedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "Lio/bidmachine/rewarded/RewardedRequest$Builder;",
        "Lio/bidmachine/rewarded/RewardedRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createRequest()Lio/bidmachine/AdRequest;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/rewarded/RewardedRequest$Builder;->createRequest()Lio/bidmachine/rewarded/RewardedRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final createRequest()Lio/bidmachine/rewarded/RewardedRequest;
    .locals 2

    .line 24
    new-instance v0, Lio/bidmachine/rewarded/RewardedRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rewarded/RewardedRequest;-><init>(Lio/bidmachine/rewarded/RewardedRequest$1;)V

    return-object v0
.end method
