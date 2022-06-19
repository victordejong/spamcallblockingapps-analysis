.class Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PubNativeAdapterConfiguration;Lcom/mopub/common/OnNetworkInitializationFinishedListener;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    iput-object p2, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    iput-object p3, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {v0}, Lnet/pubnative/lite/sdk/HyBid;->setLocationUpdatesEnabled(Z)V

    .line 100
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "pubnative_app_id"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1$1;-><init>(Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;)V

    invoke-static {v1, v2, v3}, Lnet/pubnative/lite/sdk/HyBid;->initialize(Ljava/lang/String;Landroid/app/Application;Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 118
    iget-object v2, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 119
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Initializing PubNative has encountered an exception."

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v1, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
