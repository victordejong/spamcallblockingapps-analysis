.class public final synthetic Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;

.field public final synthetic f$1:Lcom/verizon/ads/utils/HttpUtils$Response;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;->f$0:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;->f$1:Lcom/verizon/ads/utils/HttpUtils$Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;->f$0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;->f$1:Lcom/verizon/ads/utils/HttpUtils$Response;

    invoke-static {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->lambda$-4fCt9KsgAz8onKWFKwB2QVwE_Q(Landroid/widget/ImageView;Lcom/verizon/ads/utils/HttpUtils$Response;)V

    return-void
.end method
