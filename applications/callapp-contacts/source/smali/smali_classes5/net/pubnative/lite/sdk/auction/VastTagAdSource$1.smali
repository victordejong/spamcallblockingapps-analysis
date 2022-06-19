.class Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/auction/VastTagAdSource;->fetchAd(Lnet/pubnative/lite/sdk/auction/AdSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/auction/VastTagAdSource;Lnet/pubnative/lite/sdk/auction/AdSource$Listener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->this$0:Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->val$listener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 53
    invoke-static {}, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->val$listener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lnet/pubnative/lite/sdk/auction/AuctionError;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->this$0:Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

    invoke-static {v2}, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;->access$100(Lnet/pubnative/lite/sdk/auction/VastTagAdSource;)Lnet/pubnative/lite/sdk/auction/AdSourceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lnet/pubnative/lite/sdk/auction/AuctionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/auction/AdSource$Listener;->onError(Lnet/pubnative/lite/sdk/auction/AuctionError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 34
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->this$0:Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;->access$000(Lnet/pubnative/lite/sdk/auction/VastTagAdSource;)Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v1

    sget-object v2, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_INTERSTITIAL:Lnet/pubnative/lite/sdk/models/AdSize;

    if-ne v1, v2, :cond_0

    const/16 v0, 0xf

    .line 38
    :cond_0
    sget-object v1, Lnet/pubnative/lite/sdk/models/Ad$AdType;->VIDEO:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    .line 39
    new-instance v2, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-direct {v2, v0, p1, v1}, Lnet/pubnative/lite/sdk/models/Ad;-><init>(ILjava/lang/String;Lnet/pubnative/lite/sdk/models/Ad$AdType;)V

    .line 40
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->val$listener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->this$0:Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;->access$100(Lnet/pubnative/lite/sdk/auction/VastTagAdSource;)Lnet/pubnative/lite/sdk/auction/AdSourceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/pubnative/lite/sdk/models/Ad;->setAdSourceName(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->val$listener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    invoke-interface {p1, v2}, Lnet/pubnative/lite/sdk/auction/AdSource$Listener;->onAdFetched(Lnet/pubnative/lite/sdk/models/Ad;)V

    :cond_1
    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->val$listener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    if-eqz p1, :cond_3

    .line 46
    new-instance v0, Lnet/pubnative/lite/sdk/auction/AuctionError;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/VastTagAdSource$1;->this$0:Lnet/pubnative/lite/sdk/auction/VastTagAdSource;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/auction/VastTagAdSource;->access$100(Lnet/pubnative/lite/sdk/auction/VastTagAdSource;)Lnet/pubnative/lite/sdk/auction/AdSourceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "The server responded with an empty ad"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/auction/AuctionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/auction/AdSource$Listener;->onError(Lnet/pubnative/lite/sdk/auction/AuctionError;)V

    :cond_3
    return-void
.end method
