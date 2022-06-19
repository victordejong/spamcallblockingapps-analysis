.class public final Lcom/facebook/ads/redexgen/X/Yl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0f()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 65998
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 65999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A03(Lcom/facebook/ads/redexgen/X/YV;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/YW;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/YW;-><init>(Ljava/lang/Class;)V

    .line 66000
    .local p0, "buildConfigParams":Lcom/facebook/ads/redexgen/X/YW;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YV;->A02(Lcom/facebook/ads/redexgen/X/YV;Lcom/facebook/ads/redexgen/X/YW;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
