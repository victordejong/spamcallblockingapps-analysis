.class public final Lcom/facebook/ads/redexgen/X/Qs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49627
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qs;->A00:I

    .line 49628
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Qr;)V
    .locals 0

    .line 49629
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qs;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Qt;
    .locals 3

    .line 49630
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Qs;->A00:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qt;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Qt;-><init>(ILcom/facebook/ads/redexgen/X/Qr;)V

    return-object v0
.end method
