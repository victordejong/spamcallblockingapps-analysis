.class Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;->prepare(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;

.field final synthetic val$adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;->val$listener:Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;->val$adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetsLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;->val$listener:Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;->val$adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-interface {v0, v1, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;->onCacheSuccess(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$2;->val$listener:Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener;->onCacheError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
