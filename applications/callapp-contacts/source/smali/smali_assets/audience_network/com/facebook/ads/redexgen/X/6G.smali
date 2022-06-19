.class public final Lcom/facebook/ads/redexgen/X/6G;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6H;->A03(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6H;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6H;Landroid/content/Context;IJLcom/facebook/ads/redexgen/X/6r;)V
    .locals 0

    .line 14444
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6G;->A01:Lcom/facebook/ads/redexgen/X/6H;

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:J

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/6G;->A02:Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 5

    .line 14445
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A02:Lcom/facebook/ads/redexgen/X/6r;

    new-instance v2, Lcom/facebook/ads/redexgen/X/X7;

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/facebook/ads/redexgen/X/X7;-><init>(JLcom/facebook/ads/redexgen/X/6r;I)V

    .line 14446
    .local p0, "intSignalValueType":Lcom/facebook/ads/redexgen/X/X7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A01:Lcom/facebook/ads/redexgen/X/6H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Lcom/facebook/ads/redexgen/X/6H;)Lcom/facebook/ads/redexgen/X/6F;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A0A:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A02(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    .line 14447
    return-void
.end method
