.class final Lcom/mopub/nativeads/NativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/NativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeAd;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAd$1;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd$1;->a:Lcom/mopub/nativeads/NativeAd;

    .line 1240
    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->h:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->c:Ljava/util/Set;

    iget-object v2, v0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 1245
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->f:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v1, :cond_1

    .line 1246
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->f:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onClick(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x1

    .line 1249
    iput-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->h:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAdImpressed()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd$1;->a:Lcom/mopub/nativeads/NativeAd;

    .line 1224
    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->g:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1228
    iput-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->g:Z

    .line 1230
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->b:Ljava/util/Set;

    iget-object v2, v0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 1231
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->f:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v1, :cond_1

    .line 1232
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->f:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onImpression(Landroid/view/View;)V

    .line 1235
    :cond_1
    new-instance v1, Lcom/mopub/network/SingleImpression;

    iget-object v2, v0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/mopub/nativeads/NativeAd;->e:Lcom/mopub/network/ImpressionData;

    invoke-direct {v1, v2, v0}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v1}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_2
    :goto_0
    return-void
.end method
