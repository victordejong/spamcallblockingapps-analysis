.class public final Lcom/facebook/ads/redexgen/X/Qr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qs;
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

    .line 49561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49562
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qr;->A00:I

    .line 49563
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Qq;)V
    .locals 0

    .line 49564
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qr;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Qs;
    .locals 3

    .line 49565
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Qr;->A00:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(ILcom/facebook/ads/redexgen/X/Qq;)V

    return-object v0
.end method
