.class public final synthetic Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

.field public final synthetic f$1:Lcom/verizon/ads/VideoPlayerView;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayerView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;->f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    iput-object p2, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;->f$1:Lcom/verizon/ads/VideoPlayerView;

    iput-boolean p3, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;->f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    iget-object v1, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;->f$1:Lcom/verizon/ads/VideoPlayerView;

    iget-boolean v2, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->lambda$cHvNk4kMBsHoZ4RrDA7luSMObSM(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayerView;Z)V

    return-void
.end method
