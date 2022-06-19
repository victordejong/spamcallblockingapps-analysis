.class public final Lcom/facebook/ads/redexgen/X/Si;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F0;->A00(Lcom/facebook/ads/redexgen/X/1z;)Lcom/facebook/ads/redexgen/X/1y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1z;)V
    .locals 0

    .line 53022
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/1z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4M(Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/SV;)Lcom/facebook/ads/redexgen/X/1x;
    .locals 3

    .line 53023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/1z;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sh;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Sh;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/SV;)V

    return-object v0
.end method
