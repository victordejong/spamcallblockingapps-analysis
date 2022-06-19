.class public final Lcom/facebook/ads/redexgen/X/Rd;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rb;->A8G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rb;)V
    .locals 0

    .line 50312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 50313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A06(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    .line 50314
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A00(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A00(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    .line 50315
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A8H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    .line 50316
    return-void
.end method
