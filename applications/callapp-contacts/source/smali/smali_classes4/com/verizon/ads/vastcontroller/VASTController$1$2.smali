.class Lcom/verizon/ads/vastcontroller/VASTController$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;


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

    .line 219
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$2;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$2;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->a(Lcom/verizon/ads/vastcontroller/VASTController;)Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;->onVideoComplete()V

    return-void
.end method
