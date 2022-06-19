.class public final Lcom/facebook/ads/redexgen/X/Ss;
.super Lcom/facebook/ads/redexgen/X/KJ;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8w;)V
    .locals 2

    .line 52839
    sget-object v1, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/KI;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/KJ;-><init>(Lcom/facebook/ads/redexgen/X/KI;Lcom/facebook/ads/redexgen/X/8w;Ljava/lang/String;)V

    .line 52840
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:I

    .line 52841
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Ljava/lang/String;

    .line 52842
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Lcom/facebook/ads/redexgen/X/8w;
    .locals 1

    .line 52843
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/KJ;->A00()Lcom/facebook/ads/redexgen/X/8w;

    move-result-object v0

    return-object v0
.end method

.method public final A03()I
    .locals 1

    .line 52844
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:I

    return v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 52845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Ljava/lang/String;

    return-object v0
.end method
