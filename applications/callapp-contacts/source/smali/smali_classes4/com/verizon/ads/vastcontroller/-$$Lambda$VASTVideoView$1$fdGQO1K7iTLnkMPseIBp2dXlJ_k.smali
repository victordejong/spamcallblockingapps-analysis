.class public final synthetic Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/vastcontroller/VASTVideoView$1;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/verizon/ads/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/vastcontroller/VASTVideoView$1;Ljava/io/File;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;->f$0:Lcom/verizon/ads/vastcontroller/VASTVideoView$1;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;->f$2:Lcom/verizon/ads/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;->f$0:Lcom/verizon/ads/vastcontroller/VASTVideoView$1;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;->f$2:Lcom/verizon/ads/VideoPlayer;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->lambda$fdGQO1K7iTLnkMPseIBp2dXlJ_k(Lcom/verizon/ads/vastcontroller/VASTVideoView$1;Ljava/io/File;Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method
