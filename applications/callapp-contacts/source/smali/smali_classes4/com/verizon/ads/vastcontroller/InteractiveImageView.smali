.class abstract Lcom/verizon/ads/vastcontroller/InteractiveImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field protected i:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 1

    .line 32
    new-instance v0, Lcom/verizon/ads/vastcontroller/InteractiveImageView$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/InteractiveImageView$1;-><init>(Lcom/verizon/ads/vastcontroller/InteractiveImageView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final e()V
    .locals 1

    .line 46
    new-instance v0, Lcom/verizon/ads/vastcontroller/InteractiveImageView$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/InteractiveImageView$2;-><init>(Lcom/verizon/ads/vastcontroller/InteractiveImageView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/InteractiveImageView;->i:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    return-void
.end method
