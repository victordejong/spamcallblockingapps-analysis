.class Lcom/verizon/ads/vastcontroller/VASTController$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/VASTController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/VASTController$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTController$1;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    .line 233
    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTController;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;-><init>(Lcom/verizon/ads/vastcontroller/VASTController$1$3;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
