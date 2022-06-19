.class public final synthetic Lcom/verizon/ads/support/-$$Lambda$WzxyVz7HRgOSKd5-lSmlGrLu-l8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/support/StaticViewabilityRuleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/support/StaticViewabilityRuleComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/support/-$$Lambda$WzxyVz7HRgOSKd5-lSmlGrLu-l8;->f$0:Lcom/verizon/ads/support/StaticViewabilityRuleComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/support/-$$Lambda$WzxyVz7HRgOSKd5-lSmlGrLu-l8;->f$0:Lcom/verizon/ads/support/StaticViewabilityRuleComponent;

    invoke-virtual {v0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;->fire()V

    return-void
.end method
