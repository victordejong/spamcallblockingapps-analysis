.class public final Lcom/facebook/ads/redexgen/X/GK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DtvCcPacket"
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:[B


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 33719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33720
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GK;->A02:I

    .line 33721
    iput p2, p0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    .line 33722
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    .line 33723
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    .line 33724
    return-void
.end method
