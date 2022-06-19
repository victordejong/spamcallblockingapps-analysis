.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeFromExpanded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1028
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;->mraidViewClose(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    :cond_0
    return-void
.end method
