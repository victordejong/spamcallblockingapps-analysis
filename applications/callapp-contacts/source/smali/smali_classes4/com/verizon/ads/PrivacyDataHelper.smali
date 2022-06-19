.class public Lcom/verizon/ads/PrivacyDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/verizon/ads/PrivacyDataHelper;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCollectionMode()Ljava/lang/String;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/verizon/ads/PrivacyDataHelper;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "collectionMode"

    .line 71
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 73
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 74
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getConsentStringsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/verizon/ads/PrivacyDataHelper;->getGDPRConsentMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/PrivacyDataHelper;->a:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "ccpa"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 56
    :goto_0
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 57
    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    return-object v2
.end method

.method public getGDPRConsentMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/verizon/ads/PrivacyDataHelper;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "gdpr"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 33
    check-cast v0, Ljava/util/Map;

    const-string v2, "consentMap"

    .line 35
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 38
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_1
    return-object v1
.end method
