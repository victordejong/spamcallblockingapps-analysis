.class public abstract Lio/bidmachine/NetworkAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adapterVersion:Ljava/lang/String;

.field private isInitialized:Z

.field private final key:Ljava/lang/String;

.field private final supportedTypes:[Lio/bidmachine/AdsType;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lio/bidmachine/AdsType;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->key:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lio/bidmachine/NetworkAdapter;->version:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lio/bidmachine/NetworkAdapter;->adapterVersion:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    return-void
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support static interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createNativeAd()Lio/bidmachine/unified/UnifiedNativeAd;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support native ads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adapter does not support rewarded interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->adapterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getSupportedTypes()[Lio/bidmachine/AdsType;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfigParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/NetworkAdapter;->onInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfigParams;)V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Z

    :cond_0
    return-void
.end method

.method protected onInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfigParams;)V
    .locals 0

    return-void
.end method

.method public setLogging(Z)V
    .locals 0

    return-void
.end method
