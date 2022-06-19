.class public final synthetic Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;->f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;->f$0:Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    invoke-virtual {v0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->k()V

    return-void
.end method
