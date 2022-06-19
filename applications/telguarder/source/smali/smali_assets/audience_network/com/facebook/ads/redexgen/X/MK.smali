.class public final Lcom/facebook/ads/redexgen/X/MK;
.super Lcom/facebook/ads/redexgen/X/25;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lh;DDDZ)V
    .locals 8

    .line 43943
    move-object v0, p0

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/MK;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    move-object v0, p0

    move/from16 v7, p8

    move-wide v5, p6

    move-wide v3, p4

    move-wide v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/25;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method public final A00(ZZLcom/facebook/ads/redexgen/X/27;)V
    .locals 4

    .line 43944
    if-eqz p2, :cond_0

    .line 43945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MK;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0F(Lcom/facebook/ads/redexgen/X/Lh;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MK;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    .line 43946
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0H(Lcom/facebook/ads/redexgen/X/Lh;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MK;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A0B:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0L(Lcom/facebook/ads/redexgen/X/Lh;Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    .line 43947
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 43948
    :cond_0
    return-void
.end method
