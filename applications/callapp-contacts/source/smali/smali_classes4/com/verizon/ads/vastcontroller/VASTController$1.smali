.class Lcom/verizon/ads/vastcontroller/VASTController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/VASTController;->load(Landroid/content/Context;ILcom/verizon/ads/vastcontroller/VASTController$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;

.field final synthetic c:I

.field final synthetic d:Lcom/verizon/ads/vastcontroller/VASTController;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTController;Landroid/content/Context;Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;I)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;

    iput p4, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->a:Landroid/content/Context;

    .line 1304
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTVideoView;

    new-instance v3, Landroid/content/MutableContextWrapper;

    invoke-direct {v3, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/verizon/ads/vastcontroller/VASTController;->a:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController;->b:Ljava/util/List;

    invoke-direct {v2, v3, v1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;-><init>(Landroid/content/Context;Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0, v2}, Lcom/verizon/ads/vastcontroller/VASTController;->a(Lcom/verizon/ads/vastcontroller/VASTController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 195
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTController$1$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/VASTController$1$1;-><init>(Lcom/verizon/ads/vastcontroller/VASTController$1;)V

    invoke-virtual {v2, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V

    .line 219
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTController$1$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/VASTController$1$2;-><init>(Lcom/verizon/ads/vastcontroller/VASTController$1;)V

    invoke-virtual {v2, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->setPlaybackListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;)V

    .line 228
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/VASTController$1$3;-><init>(Lcom/verizon/ads/vastcontroller/VASTController$1;)V

    iget v1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->load(Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;I)V

    .line 252
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->e(Lcom/verizon/ads/vastcontroller/VASTController;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "VastVideoView"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method
