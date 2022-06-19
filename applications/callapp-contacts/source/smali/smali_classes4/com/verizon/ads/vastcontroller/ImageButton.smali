.class public Lcom/verizon/ads/vastcontroller/ImageButton;
.super Lcom/verizon/ads/vastcontroller/InteractiveImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/Integer;

.field b:Lcom/verizon/ads/vastcontroller/VASTParser$Button;

.field c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/verizon/ads/vastcontroller/VASTParser$Button;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/InteractiveImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->a:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->b:Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    .line 31
    iput p3, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->c:I

    .line 33
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/ImageButton;->a()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Lcom/verizon/ads/vastcontroller/ImageButton;->setVisibility(I)V

    .line 1068
    :cond_0
    new-instance p1, Lcom/verizon/ads/vastcontroller/ImageButton$2;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/ImageButton$2;-><init>(Lcom/verizon/ads/vastcontroller/ImageButton;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 39
    invoke-virtual {p0, p0}, Lcom/verizon/ads/vastcontroller/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->b:Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->offset:Ljava/lang/String;

    iget v1, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->c:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->a:Ljava/lang/Integer;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/ImageButton;->d()V

    .line 91
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/ImageButton;->b:Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->buttonClicks:Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;

    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/ImageButton;->e()V

    .line 98
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z

    .line 101
    :cond_0
    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v0, "click tracking"

    invoke-static {p1, v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/verizon/ads/vastcontroller/InteractiveImageView;->setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V

    return-void
.end method
