.class Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;->this$1:Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialisationFinished(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;->this$1:Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;

    iget-object p1, p1, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;->this$1:Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;

    iget-object p1, p1, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 113
    :goto_0
    invoke-static {}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;->this$1:Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;

    iget-object p1, p1, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
