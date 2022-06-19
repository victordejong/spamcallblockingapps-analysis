.class public final Lcom/facebook/ads/redexgen/X/MR;
.super Lcom/facebook/ads/redexgen/X/25;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PI;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MQ;DDDZ)V
    .locals 8

    .line 44016
    move-object v0, p0

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/MR;->A00:Lcom/facebook/ads/redexgen/X/MQ;

    move-object v0, p0

    move-wide v3, p4

    move-wide v1, p2

    move/from16 v7, p8

    move-wide v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/25;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method public final A00(ZZLcom/facebook/ads/redexgen/X/27;)V
    .locals 4

    .line 44017
    if-eqz p2, :cond_0

    .line 44018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0F(Lcom/facebook/ads/redexgen/X/MQ;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:Lcom/facebook/ads/redexgen/X/MQ;

    .line 44019
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0H(Lcom/facebook/ads/redexgen/X/MQ;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:Lcom/facebook/ads/redexgen/X/MQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0L(Lcom/facebook/ads/redexgen/X/MQ;Lcom/facebook/ads/redexgen/X/PJ;)Ljava/util/Map;

    move-result-object v0

    .line 44020
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8u(Ljava/lang/String;Ljava/util/Map;)V

    .line 44021
    :cond_0
    return-void
.end method
