.class Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/Waterfall;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$000(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$000(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$002(Lcom/callapp/contacts/util/ads/bidder/Waterfall;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$100(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$100(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$102(Lcom/callapp/contacts/util/ads/bidder/Waterfall;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$200(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$200(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->access$202(Lcom/callapp/contacts/util/ads/bidder/Waterfall;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_2
    return-void
.end method
