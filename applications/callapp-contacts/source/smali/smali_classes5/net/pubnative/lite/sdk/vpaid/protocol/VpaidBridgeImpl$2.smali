.class Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->vpaidAdStopped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 279
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->access$000(Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;)Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->onAdStopped()V

    return-void
.end method
