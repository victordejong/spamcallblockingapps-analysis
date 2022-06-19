.class public final Lcom/facebook/ads/redexgen/X/Tf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Th;->A0I(Lcom/facebook/ads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Th;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/cD;)V
    .locals 0

    .line 55051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tf;->A00:Lcom/facebook/ads/redexgen/X/Th;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tf;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAJ(Z)V
    .locals 2

    .line 55052
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tf;->A01:Lcom/facebook/ads/redexgen/X/cD;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1b(ZZ)V

    .line 55053
    return-void
.end method
