.class Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VerizonAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VerizonAdapterConfiguration;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalSiteId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VerizonAdapterConfiguration;Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    iput-object p2, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$finalSiteId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    invoke-static {}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 123
    invoke-static {v0}, Lcom/verizon/ads/VASAds;->setShareAdvertiserIdEnabled(Z)V

    .line 124
    invoke-static {v0}, Lcom/verizon/ads/VASAds;->setShareApplicationIdEnabled(Z)V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$finalSiteId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/verizon/ads/edition/StandardEdition;->initialize(Landroid/app/Application;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 136
    const-class v1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;->val$listener:Lcom/mopub/common/OnNetworkInitializationFinishedListener;

    const-class v1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
