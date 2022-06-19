.class Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/network/PNHttpClient$1;

.field final synthetic val$response:Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/network/PNHttpClient$1;Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;->this$0:Lnet/pubnative/lite/sdk/network/PNHttpClient$1;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;->val$response:Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;->this$0:Lnet/pubnative/lite/sdk/network/PNHttpClient$1;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$listener:Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;->this$0:Lnet/pubnative/lite/sdk/network/PNHttpClient$1;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$listener:Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;->val$response:Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->access$400(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
