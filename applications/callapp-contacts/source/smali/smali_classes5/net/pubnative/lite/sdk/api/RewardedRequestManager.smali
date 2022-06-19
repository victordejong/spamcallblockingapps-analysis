.class public Lnet/pubnative/lite/sdk/api/RewardedRequestManager;
.super Lnet/pubnative/lite/sdk/api/RequestManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/api/RequestManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;
    .locals 1

    .line 34
    sget-object v0, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_INTERSTITIAL:Lnet/pubnative/lite/sdk/models/AdSize;

    return-object v0
.end method

.method public isRewarded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
