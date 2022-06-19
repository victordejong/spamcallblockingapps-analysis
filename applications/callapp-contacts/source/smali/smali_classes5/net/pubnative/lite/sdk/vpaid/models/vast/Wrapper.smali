.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;


# instance fields
.field private adSystem:Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private allowMultipleAds:Z
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private creatives:Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private error:Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private extensionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "Extensions"
    .end annotation
.end field

.field private fallbackOnNoAd:Z
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private followAdditonalWrappers:Z
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private impressionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "Impression"
    .end annotation
.end field

.field private vastAdTagURI:Lnet/pubnative/lite/sdk/vpaid/models/vast/VASTAdTagURI;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdSystem()Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->adSystem:Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;

    return-object v0
.end method

.method public getCreatives()Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->creatives:Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;

    return-object v0
.end method

.method public getError()Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->error:Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->extensionList:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->impressionList:Ljava/util/List;

    return-object v0
.end method

.method public getVastAdTagURI()Lnet/pubnative/lite/sdk/vpaid/models/vast/VASTAdTagURI;
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->vastAdTagURI:Lnet/pubnative/lite/sdk/vpaid/models/vast/VASTAdTagURI;

    return-object v0
.end method

.method public isAllowMultipleAds()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->allowMultipleAds:Z

    return v0
.end method

.method public isFallbackOnNoAd()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->fallbackOnNoAd:Z

    return v0
.end method

.method public isFollowAdditonalWrappers()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->followAdditonalWrappers:Z

    return v0
.end method
