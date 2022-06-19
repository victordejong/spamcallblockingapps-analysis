.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;
.super Ljava/lang/Object;
.source "PostcallFacebookBannerAdListener.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method
