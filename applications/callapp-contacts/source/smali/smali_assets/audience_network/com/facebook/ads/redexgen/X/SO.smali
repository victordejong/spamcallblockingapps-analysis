.class public final Lcom/facebook/ads/redexgen/X/SO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/11;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SP;->A04()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rp;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SP;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SP;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Rp;)V
    .locals 0

    .line 52423
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SO;->A01:Lcom/facebook/ads/redexgen/X/SP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SO;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAt(Lcom/facebook/ads/redexgen/X/Rp;)V
    .locals 0

    .line 52424
    return-void
.end method

.method public final AAu(Lcom/facebook/ads/redexgen/X/Rp;)V
    .locals 2

    .line 52425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SO;->A02:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52426
    return-void
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/Rp;)V
    .locals 0

    .line 52427
    return-void
.end method

.method public final AAx(Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0

    .line 52428
    return-void
.end method
