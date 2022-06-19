.class public final Lcom/facebook/ads/redexgen/X/XQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XM;->A0S(ILcom/facebook/ads/redexgen/X/Kb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Kb;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/XM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XM;ILcom/facebook/ads/redexgen/X/Kb;)V
    .locals 0

    .line 57865
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XQ;->A02:Lcom/facebook/ads/redexgen/X/XM;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XQ;->A01:Lcom/facebook/ads/redexgen/X/Kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9n()V
    .locals 1

    .line 57866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A01:Lcom/facebook/ads/redexgen/X/Kb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kb;->run()V

    .line 57867
    return-void
.end method

.method public final ABH(F)V
    .locals 3

    .line 57868
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 57869
    .local p1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A02:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setProgress(F)V

    .line 57870
    return-void
.end method
