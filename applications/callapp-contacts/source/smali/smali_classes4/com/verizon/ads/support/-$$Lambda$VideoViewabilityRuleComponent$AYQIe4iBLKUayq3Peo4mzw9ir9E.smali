.class public final synthetic Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

.field public final synthetic f$1:Lcom/verizon/ads/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;->f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    iput-object p2, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;->f$1:Lcom/verizon/ads/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;->f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    iget-object v1, p0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;->f$1:Lcom/verizon/ads/VideoPlayer;

    invoke-static {v0, v1}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->lambda$AYQIe4iBLKUayq3Peo4mzw9ir9E(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method
