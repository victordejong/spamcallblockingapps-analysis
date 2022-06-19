.class public final Lcom/facebook/ads/redexgen/X/PN;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/MQ;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/MQ;)V
    .locals 0

    .line 48043
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48044
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/MQ;

    .line 48045
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .line 48046
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .line 48047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0a()V

    .line 48048
    return-void
.end method
