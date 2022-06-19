.class public Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

.field private final mEndCardFilePath:Ljava/lang/String;

.field private final mVideoFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    .line 12
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->mVideoFilePath:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->mEndCardFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    return-object v0
.end method

.method public getEndCardFilePath()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->mEndCardFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->mVideoFilePath:Ljava/lang/String;

    return-object v0
.end method
