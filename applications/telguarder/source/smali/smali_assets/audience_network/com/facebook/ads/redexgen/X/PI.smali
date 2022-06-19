.class public final Lcom/facebook/ads/redexgen/X/PI;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Lh;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Lh;)V
    .locals 0

    .line 48072
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48073
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PI;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    .line 48074
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .line 48075
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .line 48076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0a()V

    .line 48077
    return-void
.end method
