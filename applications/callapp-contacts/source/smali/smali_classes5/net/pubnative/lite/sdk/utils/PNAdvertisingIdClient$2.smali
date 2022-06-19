.class Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->invokeOnFinish(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

.field final synthetic val$advertisingId:Ljava/lang/String;

.field final synthetic val$limitTracking:Z


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Ljava/lang/String;Z)V
    .locals 0

    .line 99
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->val$advertisingId:Ljava/lang/String;

    iput-boolean p3, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->val$limitTracking:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->mListener:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->mListener:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->val$advertisingId:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;->val$limitTracking:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;->onPNAdvertisingIdFinish(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
