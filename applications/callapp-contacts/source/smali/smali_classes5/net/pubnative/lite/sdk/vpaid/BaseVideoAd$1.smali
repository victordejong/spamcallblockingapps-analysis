.class Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start loading ad"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getAdState()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getAdState()I

    move-result v0

    const/16 v2, 0xca

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->clear()V

    .line 121
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setAdState(I)V

    .line 123
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->initAdLoadingStartTime()V

    .line 124
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->startFetcherTimer()V

    .line 126
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/utils/FileUtils;->deleteExpiredFiles(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad already loaded"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->onAdLoadSuccessInternal()V

    return-void

    .line 134
    :cond_1
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->proceedLoad()V

    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;

    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v2, "No connection"

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->onAdLoadFailInternal(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void

    .line 115
    :cond_3
    :goto_0
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad already loading or showing"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
