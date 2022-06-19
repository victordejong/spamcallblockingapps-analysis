.class Lnet/pubnative/lite/sdk/api/PNApiClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/api/PNApiClient;->getAd(Lnet/pubnative/lite/sdk/models/AdRequest;Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

.field final synthetic val$initTime:J

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/lang/String;JLnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$initTime:J

    iput-object p5, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .line 100
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$initTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/api/PNApiClient;->access$000(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/lang/String;Ljava/lang/String;J)V

    .line 102
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$url:Ljava/lang/String;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$initTime:J

    invoke-static {v0, v1, p1, v2, v3}, Lnet/pubnative/lite/sdk/api/PNApiClient;->access$000(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$1;->val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/lite/sdk/api/PNApiClient;->processStream(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$AdRequestListener;)V

    return-void
.end method
