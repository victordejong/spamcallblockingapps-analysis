.class public Lcom/millennialmedia/internal/Handshake;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;,
        Lcom/millennialmedia/internal/Handshake$HandshakeInfo;,
        Lcom/millennialmedia/internal/Handshake$Defaults;
    }
.end annotation


# static fields
.field public static final HANDSHAKE_JSON:Ljava/lang/String; = "handshake.json"

.field public static final HANDSHAKE_PATH:Ljava/lang/String; = "/admax/sdk/handshake/1"

.field public static final HANDSHAKE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Handshake"

.field private static availableHandshakePlayListServerAdapters:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo; = null

.field private static defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo; = null

.field private static handshakeAttempts:I = 0x0

.field private static initialized:Z = false

.field private static requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivePlayListServerAdapterClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake active playlist server adapter class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getActivePlaylistServerBaseUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerBaseUrl:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake active playlist server base url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getActivePlaylistServerName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerName:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake playlist server name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getClientMediationTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->clientMediationTimeout:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake client mediation timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getConfig()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->config:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Returning current handshake info"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    return-object v0

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Returning default handshake info"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    return-object v0

    :cond_3
    new-instance v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;-><init>()V

    return-object v0
.end method

.method public static getExchangeTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->exchangeTimeout:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake exchange timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getExistingIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->existingPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getExistingPackages()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->existingPackages:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake existing packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getHandshakeTtl()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeTtl:I

    const v1, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake handshake ttl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getInlineTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->inlineTimeout:I

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake inline timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getInterstitialExpirationDuration()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialExpirationDuration:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake interstitial expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getInterstitialTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialTimeout:I

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake interstitial timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getMinImpressionDuration()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minImpressionDuration:I

    if-ltz v0, :cond_0

    const v1, 0xea60

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake minimum impression duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static getMinImpressionViewabilityPercent()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minImpressionViewabilityPercent:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake minimum impression viewability percentage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static getMinInlineRefreshRate()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minInlineRefreshRate:I

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake min inline refresh rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getNativeExpirationDuration()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeExpirationDuration:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native expiration duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getNativeTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTimeout:I

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getNativeTypeDefinition(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    .locals 3

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handshake native type definition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static getNativeTypeDefinitions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native type definitions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getReportingBaseUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBaseUrl:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake reporting base url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getReportingBatchFrequency()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchFrequency:I

    const v1, 0x1d4c0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake reporting batch frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getReportingBatchSize()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchSize:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake reportingBatchSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getServerToServerTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->serverToServerTimeout:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake server to server timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getSmartYieldTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->smartYieldTimeout:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake smart yield timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getSuperAuctionCacheTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->superAuctionCacheTimeout:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const v1, 0x5265c00

    if-le v0, v1, :cond_1

    :cond_0
    const v0, 0x927c0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake super auction cache timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static getVASTVideoSkipOffsetMax()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMax:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VAST video max skip offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static getVASTVideoSkipOffsetMin()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMin:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VAST video min skip offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static getVPAIDAdUnitTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidAdUnitTimeout:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VPAID ad unit timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getVPAIDHTMLEndCardTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidHtmlEndCardTimeout:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VPAID html end card timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getVPAIDMaxBackButtonDelay()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidMaxBackButtonDelay:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VPAID max back button delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getVPAIDSkipAdTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidSkipAdTimeout:I

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VPAID skip ad timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getVPAIDStartAdTimeout()I
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidStartAdTimeout:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VPAID start ad timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static initialize()V
    .locals 5

    const-string v0, "UTF-8"

    sget-boolean v1, Lcom/millennialmedia/internal/Handshake;->initialized:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Handshake already initialized"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/millennialmedia/internal/Handshake;->initialized:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    const-class v2, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    const-string v3, "green"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    const-class v2, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    const-string v3, "orange"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v3, "Loading packaged default handshake"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "mmadsdk/default_handshake.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/internal/Handshake;->parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/internal/Handshake;->defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v4, "Could not parse the default handshake."

    :goto_0
    invoke-static {v3, v4, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v4, "Could not read default handshake."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    :try_start_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v3, "Loading previously stored handshake"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "handshake.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v3, v0}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/Handshake;->parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-nez v0, :cond_4

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create handshake info object"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_4
    move-object v1, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_2
    :try_start_4
    sget-object v2, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse handshake.json"

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_4
    sget-object v2, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v3, "Could not read handshake.json"

    goto :goto_3

    :catch_7
    :goto_5
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v2, "No handshake.json exists."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    :goto_7
    return-void

    :goto_8
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw v0

    :goto_9
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw v0
.end method

.method public static isMoatEnabled()Z
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->moatEnabled:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake moat enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isRequestInProgress()Z
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isSdkEnabled()Z
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->sdkEnabled:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake sdk enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static loadNativeAdConfig(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;",
            ">;"
        }
    .end annotation

    const-string v0, "nativeConfig"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "typeDefs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;-><init>(Ljava/lang/String;)V

    const-string v5, "components"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    new-instance v9, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    const-string v10, "publisherRequired"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "advertiserRequired"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v9, v6, v10, v7}, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private static parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    .locals 6

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing handshake:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    invoke-direct {p0}, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;-><init>()V

    const-string v2, "ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    sget-object p0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handshake response did not contain a compatible version. Received version, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected max version of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "config"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->config:Ljava/lang/String;

    const-string v0, "playlistServer"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerName:Ljava/lang/String;

    const-string v2, "baseUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerBaseUrl:Ljava/lang/String;

    const-string v0, "handshakeBaseUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeBaseUrl:Ljava/lang/String;

    const-string v0, "rptBaseUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBaseUrl:Ljava/lang/String;

    const-string v0, "ttl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeTtl:I

    const-string v0, "sdkEnabled"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->sdkEnabled:Z

    const-string v0, "moatEnabled"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->moatEnabled:Z

    const-string v0, "rptBatchSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchSize:I

    const-string v0, "rptFreq"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchFrequency:I

    const-string v0, "inlineTmax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->inlineTimeout:I

    const-string v0, "instlTmax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialTimeout:I

    const-string v0, "nativeTmax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTimeout:I

    const-string v0, "clientAdTmax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->clientMediationTimeout:I

    const-string v0, "serverAdTmax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->serverToServerTimeout:I

    const-string v0, "exTmax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->exchangeTimeout:I

    const-string v0, "minInlineRefresh"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minInlineRefreshRate:I

    const-string v0, "instlExpDur"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialExpirationDuration:I

    const-string v0, "nativeExpDur"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeExpirationDuration:I

    const-string v0, "vastSkipOffsetMax"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMax:I

    const-string v0, "vastSkipOffsetMin"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMin:I

    invoke-static {v1}, Lcom/millennialmedia/internal/Handshake;->loadNativeAdConfig(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    const-string v0, "vpaid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "startAdTimeout"

    const/16 v3, 0x1388

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/JSONUtils;->optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidStartAdTimeout:I

    const/16 v2, 0x1f4

    const-string v4, "skipAdTimeout"

    invoke-static {v0, v4, v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidSkipAdTimeout:I

    const-string v2, "adUnitTimeout"

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/JSONUtils;->optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidAdUnitTimeout:I

    const-string v2, "htmlEndCardTimeout"

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/JSONUtils;->optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidHtmlEndCardTimeout:I

    const/16 v2, 0x7d0

    const-string v3, "maxBackButtonDelay"

    invoke-static {v0, v3, v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidMaxBackButtonDelay:I

    const-string v0, "minImpressionDuration"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minImpressionDuration:I

    const-string v0, "minImpressionViewabilityPercent"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minImpressionViewabilityPercent:I

    const/16 v0, 0x2710

    const-string v3, "syTmax"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->smartYieldTimeout:I

    const v0, 0x927c0

    const-string v3, "saCacheTimeout"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->superAuctionCacheTimeout:I

    const-string v0, "exists"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->existingPackages:Ljava/util/Map;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Handshake successfully parsed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, p0

    goto :goto_2

    :catch_1
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake version is not a valid integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static request(Z)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting handshake, async mode <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/task/TaskFactory;->createHandshakeRequestTask()Lcom/millennialmedia/internal/task/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/Task;->execute()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->requestInternal()V

    :goto_0
    return-void
.end method

.method private static requestInternal()V
    .locals 8

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Handshake request already in progress"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0xea60

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ver"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "sdkVer"

    const-string v5, "6.7.0-c5b3e1a"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "osv"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appId"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "https://ads.nexage.com"

    sget-object v5, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-eqz v5, :cond_2

    sget v6, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_2

    iget-object v4, v5, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeBaseUrl:Ljava/lang/String;

    :cond_2
    const-string v5, "/admax/sdk/handshake/1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    add-int/2addr v5, v2

    sput v5, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing handshake request.\n\tattempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n\turl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\tpost data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "application/json"

    const/16 v5, 0x3a98

    invoke-static {v4, v2, v3, v5}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v2

    iget v3, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v3, :cond_5

    :try_start_1
    invoke-static {v3}, Lcom/millennialmedia/internal/Handshake;->parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    sput-object v3, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "handshake.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v5, "Error storing handshake response"

    invoke-static {v3, v5, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_5
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getHandshakeTtl()I

    move-result v0

    sput v1, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    goto :goto_4

    :goto_2
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to create handshake info object"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    :try_start_6
    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred when trying to load handshake."

    :goto_3
    invoke-static {v3, v4, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v2

    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v4, "Unable to open a file to store the handshake response."

    goto :goto_3

    :catch_3
    move-exception v2

    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v4, "An error occurred parsing the handshake response.  Reverting to last known good copy."

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handshake request failed with HTTP response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    sget-object v3, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v4, "Cannot build the handshake request data"

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    sget-object v2, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/millennialmedia/internal/task/TaskFactory;->createHandshakeRequestTask()Lcom/millennialmedia/internal/task/Task;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/task/Task;->execute(J)V

    return-void
.end method
