.class final Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource$PositioningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed()V
    .locals 4

    .line 258
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unable to show ads because ad positions could not be loaded from the MoPub ad server."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 7

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 3080
    iget-object v1, p1, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->a:Ljava/util/ArrayList;

    .line 3110
    iget p1, p1, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->b:I

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    .line 2161
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xc8

    .line 2162
    :goto_0
    new-array v3, v2, [I

    .line 2168
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2169
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v6, v4, 0x1

    .line 2170
    aput v5, v3, v4

    move v4, v6

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v1, 0x1

    if-ge v4, v2, :cond_2

    add-int/2addr v5, p1

    sub-int/2addr v5, v1

    add-int/lit8 v1, v4, 0x1

    .line 2176
    aput v5, v3, v4

    move v4, v1

    goto :goto_2

    .line 2178
    :cond_2
    new-instance p1, Lcom/mopub/nativeads/f;

    invoke-direct {p1, v3}, Lcom/mopub/nativeads/f;-><init>([I)V

    .line 1276
    iget-boolean v2, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c:Z

    if-eqz v2, :cond_3

    .line 1277
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/f;)V

    goto :goto_3

    .line 1279
    :cond_3
    iput-object p1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Lcom/mopub/nativeads/f;

    .line 1281
    :goto_3
    iput-boolean v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Z

    return-void
.end method
