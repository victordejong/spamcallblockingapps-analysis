.class Lnet/pubnative/lite/sdk/views/HyBidAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderVideoTag(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/views/HyBidAdView;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/views/HyBidAdView;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;->this$0:Lnet/pubnative/lite/sdk/views/HyBidAdView;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;->val$listener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 336
    invoke-static {}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;->this$0:Lnet/pubnative/lite/sdk/views/HyBidAdView;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The server has returned an invalid ad asset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->invokeOnLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;->this$0:Lnet/pubnative/lite/sdk/views/HyBidAdView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/HyBidAdView$1;->val$listener:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->renderCustomMarkup(Ljava/lang/String;Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;)V

    :cond_0
    return-void
.end method
