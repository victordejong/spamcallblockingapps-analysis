.class public final Lcom/facebook/ads/redexgen/X/Wc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DeprecatedMethod"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 64427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 64429
    return-void
.end method


# virtual methods
.method public final A3P(Ljava/lang/Throwable;)V
    .locals 0

    .line 64430
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8Y;->A0F(Ljava/lang/Throwable;)V

    .line 64431
    return-void
.end method

.method public final A7p(Ljava/lang/String;)V
    .locals 1

    .line 64432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/JN;->A06(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V

    .line 64433
    return-void
.end method

.method public final A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 1

    .line 64434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 64435
    return-void
.end method

.method public final A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 1

    .line 64436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 64437
    return-void
.end method

.method public final A8f(JJJJILjava/lang/Exception;)V
    .locals 11
    .param p10    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64438
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    move-object/from16 v10, p10

    move/from16 v9, p9

    move-wide/from16 v7, p7

    move-wide/from16 v5, p5

    move-wide v3, p3

    move-wide v1, p1

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/8j;->A03(Lcom/facebook/ads/redexgen/X/8D;JJJJILjava/lang/Exception;)V

    .line 64439
    return-void
.end method

.method public final A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 1

    .line 64440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A08(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 64441
    return-void
.end method

.method public final A8v(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 1

    .line 64442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A09(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 64443
    return-void
.end method
