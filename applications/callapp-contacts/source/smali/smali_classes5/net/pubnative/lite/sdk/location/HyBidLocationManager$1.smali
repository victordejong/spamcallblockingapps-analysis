.class Lnet/pubnative/lite/sdk/location/HyBidLocationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/location/HyBidLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/location/HyBidLocationManager;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager$1;->this$0:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 196
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager$1;->this$0:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->stopLocationUpdates()V

    return-void
.end method
