.class public Lcom/pubmatic/sdk/openwrap/core/POBRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBAdRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;,
        Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;
    }
.end annotation


# instance fields
.field private final a:[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:Z

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/pubmatic/sdk/openwrap/core/POBImpression;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->d:I

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->c:Ljava/lang/String;

    iput p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->b:I

    iput-object p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->a:[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    return-void
.end method

.method public static varargs createInstance(Ljava/lang/String;I[Lcom/pubmatic/sdk/openwrap/core/POBImpression;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 1

    invoke-static {p0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;-><init>(Ljava/lang/String;I[Lcom/pubmatic/sdk/openwrap/core/POBImpression;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->e:Z

    return v0
.end method

.method public enableBidSummary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->e:Z

    return-void
.end method

.method public enableDebugState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->g:Z

    return-void
.end method

.method public enableTestMode(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public getAdServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getImpressions()[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getImpressions()[Lcom/pubmatic/sdk/openwrap/core/POBImpression;
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->a:[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->d:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->b:I

    return v0
.end method

.method public getPubId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTestMode()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public isDebugStateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->g:Z

    return v0
.end method

.method public setAdServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public setNetworkTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->d:I

    :cond_0
    return-void
.end method

.method public setVersionId(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->f:Ljava/lang/Integer;

    return-void
.end method
