.class Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->parseResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;->val$listener:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->access$000(Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->XML_PARSING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V

    .line 94
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Parse VAST failed: "

    invoke-static {v0, v1, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parse VAST response failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;->val$listener:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;

    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;->onParseError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;->val$listener:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->parseResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V

    return-void
.end method
