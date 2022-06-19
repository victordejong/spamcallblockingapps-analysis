.class Lnet/pubnative/lite/sdk/api/RequestManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/api/RequestManager;->processAd(Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/models/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

.field final synthetic val$ad:Lnet/pubnative/lite/sdk/models/Ad;

.field final synthetic val$adRequest:Lnet/pubnative/lite/sdk/models/AdRequest;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/api/RequestManager;Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->val$adRequest:Lnet/pubnative/lite/sdk/models/AdRequest;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->val$ad:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheError(Ljava/lang/Throwable;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$000(Lnet/pubnative/lite/sdk/api/RequestManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$300(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$300(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;->onRequestFail(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onCacheSuccess(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$000(Lnet/pubnative/lite/sdk/api/RequestManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    invoke-direct {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;-><init>(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$400(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->val$adRequest:Lnet/pubnative/lite/sdk/models/AdRequest;

    iget-object p2, p2, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;->put(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V

    .line 187
    iget-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$300(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->access$300(Lnet/pubnative/lite/sdk/api/RequestManager;)Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/api/RequestManager$3;->val$ad:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-interface {p1, p2}, Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;->onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V

    :cond_1
    return-void
.end method
