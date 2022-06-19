.class public final Lcom/facebook/ads/redexgen/X/Ul;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Uq;->A0J()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Uq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Uq;)V
    .locals 0

    .line 56127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ul;->A00:Lcom/facebook/ads/redexgen/X/Uq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56128
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ul;->A00:Lcom/facebook/ads/redexgen/X/Uq;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Uq;->A01(Lcom/facebook/ads/redexgen/X/Uq;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
