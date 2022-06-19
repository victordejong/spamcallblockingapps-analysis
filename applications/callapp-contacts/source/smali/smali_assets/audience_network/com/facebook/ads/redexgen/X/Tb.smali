.class public final Lcom/facebook/ads/redexgen/X/Tb;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Th;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
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

    .line 55039
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/Th;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 55040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/cD;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1b(ZZ)V

    .line 55041
    return-void
.end method
