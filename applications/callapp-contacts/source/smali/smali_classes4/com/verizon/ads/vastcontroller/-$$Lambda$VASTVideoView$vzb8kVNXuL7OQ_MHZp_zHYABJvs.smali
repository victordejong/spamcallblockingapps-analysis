.class public final synthetic Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/vastcontroller/VASTVideoView;

.field public final synthetic f$1:Lcom/verizon/ads/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;->f$0:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;->f$1:Lcom/verizon/ads/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;->f$0:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;->f$1:Lcom/verizon/ads/VideoPlayer;

    invoke-static {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->lambda$vzb8kVNXuL7OQ_MHZp_zHYABJvs(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method
