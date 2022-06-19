.class Lnet/pubnative/lite/sdk/config/ConfigManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/config/ConfigRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/config/ConfigManager;->fetchConfig(Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/config/ConfigManager;

.field final synthetic val$configListener:Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/config/ConfigManager;Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->this$0:Lnet/pubnative/lite/sdk/config/ConfigManager;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->val$configListener:Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->val$configListener:Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;->onConfigFetchFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onConfigFetched(Lnet/pubnative/lite/sdk/models/RemoteConfigModel;)V
    .locals 2

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->val$configListener:Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;

    if-eqz p1, :cond_1

    .line 59
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The server returned an empty config file."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;->onConfigFetchFailed(Ljava/lang/Throwable;)V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->val$configListener:Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->this$0:Lnet/pubnative/lite/sdk/config/ConfigManager;

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/config/ConfigManager;->access$102(Lnet/pubnative/lite/sdk/config/ConfigManager;Lnet/pubnative/lite/sdk/models/RemoteConfigModel;)Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    .line 64
    iget-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->val$configListener:Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;

    invoke-interface {p1}, Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;->onConfigFetched()V

    .line 65
    iget-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$2;->this$0:Lnet/pubnative/lite/sdk/config/ConfigManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/config/ConfigManager;->access$200(Lnet/pubnative/lite/sdk/config/ConfigManager;)V

    :cond_1
    return-void
.end method
