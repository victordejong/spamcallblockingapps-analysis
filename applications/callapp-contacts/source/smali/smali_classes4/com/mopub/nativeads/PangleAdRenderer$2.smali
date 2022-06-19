.class final Lcom/mopub/nativeads/PangleAdRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/PangleAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

.field final synthetic b:Lcom/mopub/nativeads/PangleAdRenderer;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/PangleAdRenderer;Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdRenderer$2;->b:Lcom/mopub/nativeads/PangleAdRenderer;

    iput-object p2, p0, Lcom/mopub/nativeads/PangleAdRenderer$2;->a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdRenderer$2;->a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    return-void
.end method

.method public final onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdRenderer$2;->a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    return-void
.end method

.method public final onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdRenderer$2;->a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    return-void
.end method
