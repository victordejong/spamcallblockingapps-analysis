.class public final Lcom/facebook/ads/redexgen/X/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NW;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bz;->A0G(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bz;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bz;ILcom/facebook/ads/redexgen/X/T6;)V
    .locals 0

    .line 70502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c0;->A01:Lcom/facebook/ads/redexgen/X/bz;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/c0;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/c0;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI(Z)V
    .locals 2

    .line 70503
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A00:I

    if-nez v0, :cond_0

    .line 70504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c0;->A02:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A01:Lcom/facebook/ads/redexgen/X/bz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bz;->A06(Lcom/facebook/ads/redexgen/X/bz;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1Y(Lcom/facebook/ads/redexgen/X/Q8;)V

    .line 70505
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c0;->A02:Lcom/facebook/ads/redexgen/X/T6;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1b(ZZ)V

    .line 70506
    return-void
.end method
