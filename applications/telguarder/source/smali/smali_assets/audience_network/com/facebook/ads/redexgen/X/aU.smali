.class public final Lcom/facebook/ads/redexgen/X/aU;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aO;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aO;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/redexgen/X/T6;)V
    .locals 0

    .line 67316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aU;->A00:Lcom/facebook/ads/redexgen/X/aO;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 67317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aU;->A01:Lcom/facebook/ads/redexgen/X/T6;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1b(ZZ)V

    .line 67318
    return-void
.end method
