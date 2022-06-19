.class public final Lcom/facebook/ads/redexgen/X/Ry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rz;->A0G(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Rz;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rz;ILcom/facebook/ads/redexgen/X/cD;)V
    .locals 0

    .line 51806
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Lcom/facebook/ads/redexgen/X/Rz;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAJ(Z)V
    .locals 2

    .line 51807
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:I

    if-nez v0, :cond_0

    .line 51808
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/redexgen/X/QD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1Y(Lcom/facebook/ads/redexgen/X/QD;)V

    .line 51809
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/cD;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1b(ZZ)V

    .line 51810
    return-void
.end method
