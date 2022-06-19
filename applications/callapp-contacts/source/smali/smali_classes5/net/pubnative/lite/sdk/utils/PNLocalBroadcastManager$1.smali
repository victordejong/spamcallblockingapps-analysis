.class Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->access$000(Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;)V

    return-void

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
