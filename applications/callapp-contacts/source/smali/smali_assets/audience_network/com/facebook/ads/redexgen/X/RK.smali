.class public final Lcom/facebook/ads/redexgen/X/RK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 50099
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    .line 50100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 50101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/RH;->A00:F

    .line 50102
    return-void
.end method
