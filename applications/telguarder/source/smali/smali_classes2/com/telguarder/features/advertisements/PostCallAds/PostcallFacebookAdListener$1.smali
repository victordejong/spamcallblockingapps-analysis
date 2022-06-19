.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;
.super Ljava/lang/Object;
.source "PostcallFacebookAdListener.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/NativeAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/NativeAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/NativeAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/NativeAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/NativeAdListener;->onMediaDownloaded(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method
