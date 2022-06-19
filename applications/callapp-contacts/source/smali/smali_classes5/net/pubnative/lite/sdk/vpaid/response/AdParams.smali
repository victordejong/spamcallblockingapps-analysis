.class public Lnet/pubnative/lite/sdk/vpaid/response/AdParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adParams:Ljava/lang/String;

.field private final companionCreativeViewEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I

.field private endCardClicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endCardRedirectUrl:Ljava/lang/String;

.field private endCardUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final impressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publisherSkipSeconds:I

.field private skipTime:Ljava/lang/String;

.field verificationScriptResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/pubnativenet/adsession/j;",
            ">;"
        }
    .end annotation
.end field

.field private videoClicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoFileUrlsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoRedirectUrl:Ljava/lang/String;

.field private vpaid:Z

.field private vpaidJsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->publisherSkipSeconds:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoFileUrlsList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardUrlList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->impressions:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->companionCreativeViewEvents:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoClicks:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardClicks:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->events:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->verificationScriptResources:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->events:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getAdParams()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->adParams:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanionCreativeViewEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->companionCreativeViewEvents:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 35
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->duration:I

    return v0
.end method

.method public getEndCardClicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardClicks:Ljava/util/List;

    return-object v0
.end method

.method public getEndCardRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEndCardUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->events:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->impressions:Ljava/util/List;

    return-object v0
.end method

.method public getPublisherSkipSeconds()I
    .locals 1

    .line 158
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->publisherSkipSeconds:I

    return v0
.end method

.method public getSkipTime()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->skipTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationScriptResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/pubnativenet/adsession/j;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->verificationScriptResources:Ljava/util/List;

    return-object v0
.end method

.method public getVideoClicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoClicks:Ljava/util/List;

    return-object v0
.end method

.method public getVideoFileUrlsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoFileUrlsList:Ljava/util/List;

    return-object v0
.end method

.method public getVideoRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVpaidJsUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->vpaidJsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isVpaid()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->vpaid:Z

    return v0
.end method

.method public setAdParams(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->adParams:Ljava/lang/String;

    return-void
.end method

.method public setCompanionCreativeViewEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->companionCreativeViewEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 39
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->duration:I

    return-void
.end method

.method public setEndCardClicks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardClicks:Ljava/util/List;

    return-void
.end method

.method public setEndCardRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setEndCardUrlList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->endCardUrlList:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->id:Ljava/lang/String;

    return-void
.end method

.method public setImpressions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->impressions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPublisherSkipSeconds(I)V
    .locals 0

    .line 162
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->publisherSkipSeconds:I

    return-void
.end method

.method public setSkipTime(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->skipTime:Ljava/lang/String;

    return-void
.end method

.method public setVerificationScriptResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/pubnativenet/adsession/j;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->verificationScriptResources:Ljava/util/List;

    return-void
.end method

.method public setVideoClicks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoClicks:Ljava/util/List;

    return-void
.end method

.method public setVideoFileUrlsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoFileUrlsList:Ljava/util/List;

    return-void
.end method

.method public setVideoRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->videoRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setVpaid()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->vpaid:Z

    return-void
.end method

.method public setVpaidJsUrl(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->vpaidJsUrl:Ljava/lang/String;

    return-void
.end method
