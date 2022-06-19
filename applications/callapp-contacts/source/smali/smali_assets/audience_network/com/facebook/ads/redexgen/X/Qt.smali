.class public final Lcom/facebook/ads/redexgen/X/Qt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qs;
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49632
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Qt;->A00:I

    .line 49633
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/Qr;)V
    .locals 0

    .line 49634
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qt;-><init>(I)V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Qs;
    .locals 2

    .line 49635
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(Lcom/facebook/ads/redexgen/X/Qr;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 49636
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qt;->A00:I

    return v0
.end method
