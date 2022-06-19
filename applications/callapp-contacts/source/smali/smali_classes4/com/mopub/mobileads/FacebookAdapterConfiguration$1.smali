.class Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FacebookAdapterConfiguration;->refreshBidderToken(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/FacebookAdapterConfiguration;Landroid/content/Context;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    iput-object p2, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    const/4 v0, 0x0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-static {v1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->access$000(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-static {v1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->access$100(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 148
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
