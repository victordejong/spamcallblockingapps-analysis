.class public final Lcom/facebook/ads/redexgen/X/Xc;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xd;
    }
.end annotation


# instance fields
.field public A00:Landroid/hardware/SensorManager;

.field public final A01:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 0

    .line 65224
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 65225
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xc;->A01:Landroid/content/Context;

    .line 65226
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Xc;)Landroid/content/Context;
    .locals 0

    .line 65227
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xc;->A01:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65228
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xe;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xe;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    return-object v0
.end method
