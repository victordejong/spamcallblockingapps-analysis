.class public final Lcom/facebook/ads/redexgen/X/RT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RQ;->A0S(ILcom/facebook/ads/redexgen/X/Kd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Kd;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/RQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RQ;ILcom/facebook/ads/redexgen/X/Kd;)V
    .locals 0

    .line 50095
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/RQ;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/RT;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RT;->A01:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9m()V
    .locals 1

    .line 50096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A01:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kd;->run()V

    .line 50097
    return-void
.end method

.method public final ABH(F)V
    .locals 3

    .line 50098
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 50099
    .local p1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setProgress(F)V

    .line 50100
    return-void
.end method
