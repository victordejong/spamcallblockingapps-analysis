.class public final Lcom/facebook/ads/redexgen/X/G3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/Qj;)Lcom/facebook/ads/redexgen/X/Qk;
    .locals 2

    .line 33356
    new-instance v1, Lcom/facebook/ads/redexgen/X/GG;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/GG;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/G2;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/G2;-><init>(Lcom/facebook/ads/redexgen/X/Qj;Lcom/facebook/ads/redexgen/X/Qp;)V

    return-object v0
.end method
