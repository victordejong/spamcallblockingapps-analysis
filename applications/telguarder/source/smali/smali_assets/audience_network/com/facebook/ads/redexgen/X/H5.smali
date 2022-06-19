.class public final Lcom/facebook/ads/redexgen/X/H5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:[Lcom/facebook/ads/redexgen/X/H4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H5;->A00()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/H4;)V
    .locals 1

    .line 35771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35772
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Lcom/facebook/ads/redexgen/X/H4;

    .line 35773
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A01:I

    .line 35774
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jE9HuCwBihg2OSlqeDgNMrzNe9FYlfWh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CKti4ZeE9BvY0dwy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DHgB6Ve4khY0yYKfEJAONsd2u6ZY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vzY2dJ4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x5ZT4ub6gfHrUqCp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jaSRjHsLiCsFxwVDkmKwBPnJ1ZbFM2XV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9tf4RKznQ4GnpDl2ovPF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PCgbrhabMNtxJFuevvQaiIq2Dn4pn0Fg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H5;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/H4;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Lcom/facebook/ads/redexgen/X/H4;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A02()[Lcom/facebook/ads/redexgen/X/H4;
    .locals 1

    .line 35776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Lcom/facebook/ads/redexgen/X/H4;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/H4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/H4;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35777
    if-ne p0, p1, :cond_0

    .line 35778
    const/4 v0, 0x1

    return v0

    .line 35779
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 35780
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/H5;
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 35781
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/H5;

    .line 35782
    .local p0, "other":Lcom/facebook/ads/redexgen/X/H5;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Lcom/facebook/ads/redexgen/X/H4;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H5;->A02:[Lcom/facebook/ads/redexgen/X/H4;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 35783
    iget v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A00:I

    if-nez v0, :cond_0

    .line 35784
    const/16 v0, 0x11

    .line 35785
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Lcom/facebook/ads/redexgen/X/H4;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35786
    .end local p0    # "result":I
    .local v0, "result":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/H5;->A00:I

    .line 35787
    .end local v0    # "result":I
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/H5;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/H5;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/H5;->A03:[Ljava/lang/String;

    const-string v1, "84U5FPzma0Sti1gL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
