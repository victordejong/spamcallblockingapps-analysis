.class public final Lcom/facebook/ads/redexgen/X/cI;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/BH;->A9I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/BH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BH;)V
    .locals 0

    .line 72415
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Lcom/facebook/ads/redexgen/X/BH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 72416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Lcom/facebook/ads/redexgen/X/BH;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/BH;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Lcom/facebook/ads/redexgen/X/BH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/BH;->A00:Lcom/facebook/ads/NativeAdBase;

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 72417
    return-void
.end method
