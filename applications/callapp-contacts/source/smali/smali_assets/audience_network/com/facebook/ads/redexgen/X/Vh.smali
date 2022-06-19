.class public final Lcom/facebook/ads/redexgen/X/Vh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vj;->A0L()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vj;)V
    .locals 0

    .line 56543
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:Lcom/facebook/ads/redexgen/X/Vj;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vj;->A01:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A04(F)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
