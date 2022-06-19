.class public final Lcom/facebook/ads/redexgen/X/A8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/AK;

.field public A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A8;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/A5;)V
    .locals 0

    .line 20846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A8;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/A8;)I
    .locals 0

    .line 20847
    iget p0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/A8;)I
    .locals 0

    .line 20848
    iget p0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:I

    return p0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cmArATg0cUmqDWuPgAhPBx7a6O60WZ6h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uquSP7QbYW1aJKhqtIKQs2wYbWkdi50E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BfA3rXp3YwyLHUInnmf7TqhqcQp0nJRa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hUF6GxemxYdD6QU4eHj09jXfpB2wCX5n"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iMk08FZyDQRwCMFt4B4wQDbvhg40KNe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fQlTDEEOflftmVtOHxF1xv0fW5YM6KpV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uR2dbQAEdsud5hmpdQz89PVOCokovys5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PnOVWaRDnC3KJW44j9lTM7qgItdqDi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A8;->A04:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/A8;)Z
    .locals 0

    .line 20849
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    return p0
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 20850
    iget v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:I

    .line 20851
    return-void
.end method

.method public final A05(I)V
    .locals 3

    .line 20852
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    .line 20853
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 20854
    return-void

    .line 20855
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 20856
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    .line 20857
    iput p1, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:I

    .line 20858
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/AK;)V
    .locals 1

    .line 20859
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/AK;

    .line 20860
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:I

    .line 20861
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    .line 20862
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/AK;)Z
    .locals 4

    .line 20863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/AK;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:I

    if-gtz v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A04:[Ljava/lang/String;

    const-string v1, "1S2LdYq1bA2ziyDT4gSpXOxXLPl8eM9V"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
