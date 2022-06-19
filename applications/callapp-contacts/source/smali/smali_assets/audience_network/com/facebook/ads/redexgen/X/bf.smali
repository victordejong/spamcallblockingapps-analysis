.class public final Lcom/facebook/ads/redexgen/X/bf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bb;->A0Y(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bb;I)V
    .locals 0

    .line 70718
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9n()V
    .locals 2

    .line 70719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Lcom/facebook/ads/redexgen/X/bb;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0W(Lcom/facebook/ads/redexgen/X/bb;Z)Z

    .line 70720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0X()V

    .line 70721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 70722
    return-void
.end method

.method public final ABH(F)V
    .locals 3

    .line 70723
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 70724
    .local p1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setProgress(F)V

    .line 70725
    return-void
.end method
