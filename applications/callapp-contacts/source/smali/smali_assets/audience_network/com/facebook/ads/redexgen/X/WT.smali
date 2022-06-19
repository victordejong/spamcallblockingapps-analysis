.class public final Lcom/facebook/ads/redexgen/X/WT;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WS;
    }
.end annotation


# instance fields
.field public A00:Landroid/hardware/SensorManager;

.field public final A01:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 0

    .line 57134
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 57135
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WT;->A01:Landroid/content/Context;

    .line 57136
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/WT;)Landroid/content/Context;
    .locals 0

    .line 57137
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WT;->A01:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57138
    new-instance v0, Lcom/facebook/ads/redexgen/X/WR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WR;-><init>(Lcom/facebook/ads/redexgen/X/WT;)V

    return-object v0
.end method
