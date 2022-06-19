.class public final Lcom/facebook/ads/redexgen/X/SV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SR;->A0Z(Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 52407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9j()V
    .locals 3

    .line 52408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/SR;->A0C:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A06:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 52409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:Lcom/facebook/ads/redexgen/X/SR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SR;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52410
    return-void

    .line 52411
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:Lcom/facebook/ads/redexgen/X/SR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SR;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0a(Lcom/facebook/ads/redexgen/X/50;)V

    .line 52413
    :goto_0
    return-void

    .line 52414
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    goto :goto_0
.end method
