.class final Lcom/callapp/contacts/util/ads/AdUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;Z)Lcom/mopub/nativeads/MoPubNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$4;->a:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iput-boolean p2, p0, Lcom/callapp/contacts/util/ads/AdUtils$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$4;->a:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public final onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$4;->a:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$4;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method
