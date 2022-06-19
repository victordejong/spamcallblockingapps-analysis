.class public final synthetic Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/vastcontroller/VASTParser$Background;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;->f$0:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;->f$0:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->lambda$vs4kyFOfi2D2PVj2cqz9UaYWgzE(Lcom/verizon/ads/vastcontroller/VASTParser$Background;Landroid/widget/ImageView;)V

    return-void
.end method
