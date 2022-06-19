.class public abstract Lcom/mopub/nativeads/BaseNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;
    }
.end annotation


# instance fields
.field public callappExtras:Landroid/os/Bundle;

.field private final mClickTrackers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressionData:Lcom/mopub/network/ImpressionData;

.field private final mImpressionTrackers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidated:Z

.field private mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->callappExtras:Landroid/os/Bundle;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionTrackers:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mClickTrackers:Ljava/util/Set;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mInvalidated:Z

    return-void
.end method


# virtual methods
.method public final addClickTracker(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clickTracker url is not allowed to be null"

    .line 162
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addClickTrackers(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 139
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 143
    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 146
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/BaseNativeAd;->addClickTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to parse click trackers."

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Expected click trackers of type JSONArray."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addImpressionTracker(Ljava/lang/String;)V
    .locals 1

    const-string v0, "impressionTracker url is not allowed to be null"

    .line 155
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addImpressionTrackers(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 123
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 127
    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/BaseNativeAd;->addImpressionTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to parse impression trackers."

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Expected impression trackers of type JSONArray."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract clear(Landroid/view/View;)V
.end method

.method public abstract destroy()V
.end method

.method public getCallAppExtras()Landroid/os/Bundle;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->callappExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getClickTrackers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getImpressionTrackers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPublisherRevenue()D
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionData:Lcom/mopub/network/ImpressionData;

    invoke-virtual {p0}, Lcom/mopub/nativeads/BaseNativeAd;->getImpressionTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/BaseNativeAd;->getClickTrackers()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/BaseNativeAd;->getCallAppExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/mopub/common/MoPub;->getPublisherRevenue(Lcom/mopub/network/ImpressionData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Landroid/os/Bundle;)D

    move-result-wide v0

    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mInvalidated:Z

    return-void
.end method

.method public isInvalidated()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mInvalidated:Z

    return v0
.end method

.method protected final notifyAdClicked()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method protected final notifyAdImpressed()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;->onAdImpressed()V

    :cond_0
    return-void
.end method

.method public abstract prepare(Landroid/view/View;)V
.end method

.method public setImpressionData(Lcom/mopub/network/ImpressionData;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionData:Lcom/mopub/network/ImpressionData;

    return-void
.end method

.method public setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    return-void
.end method
