.class Lcom/verizon/ads/vastcontroller/InteractiveImageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/InteractiveImageView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/InteractiveImageView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/InteractiveImageView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/InteractiveImageView$2;->a:Lcom/verizon/ads/vastcontroller/InteractiveImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/InteractiveImageView$2;->a:Lcom/verizon/ads/vastcontroller/InteractiveImageView;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/InteractiveImageView;->i:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/InteractiveImageView$2;->a:Lcom/verizon/ads/vastcontroller/InteractiveImageView;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/InteractiveImageView;->i:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method
