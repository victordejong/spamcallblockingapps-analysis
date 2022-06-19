.class public final Lcom/facebook/ads/redexgen/X/Qs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qr;
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49567
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Qs;->A00:I

    .line 49568
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/Qq;)V
    .locals 0

    .line 49569
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(I)V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Qr;
    .locals 2

    .line 49570
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qr;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Qr;-><init>(Lcom/facebook/ads/redexgen/X/Qq;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 49571
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qs;->A00:I

    return v0
.end method
