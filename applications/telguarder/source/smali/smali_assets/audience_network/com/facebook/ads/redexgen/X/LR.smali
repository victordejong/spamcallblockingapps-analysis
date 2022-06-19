.class public final Lcom/facebook/ads/redexgen/X/LR;
.super Ljava/io/Writer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineProcessorWriter"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[C

.field public final A02:Lcom/facebook/ads/redexgen/X/LQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LR;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LQ;)V
    .locals 1

    .line 42599
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 42600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LR;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    .line 42601
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LR;->A01:[C

    .line 42602
    return-void
.end method

.method private A00()V
    .locals 5

    .line 42603
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LR;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LR;->A01:[C

    iget v2, p0, Lcom/facebook/ads/redexgen/X/LR;->A00:I

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 42604
    iput v1, p0, Lcom/facebook/ads/redexgen/X/LR;->A00:I

    .line 42605
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sr30eG8QqeA9PTnBv5Bt4hnZqAQxDLuJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ps2O52LB4Fk5tPEI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "b0E7ZBCk8ZgliqiBFiLr9fpcu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ecf9I9JqHAeutuSgOmpZliCU4Q5JYn9j"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xrLrW173V2mkM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oulCgqQ5su5pKYGJ0eYJOoBckMcEv73q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "45k95lrmWFpsS3hCtOsWilPKXmnWWUvV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gCGLfpIuPcjj9nzv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LR;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 42606
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LR;->flush()V

    .line 42607
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 42608
    iget v0, p0, Lcom/facebook/ads/redexgen/X/LR;->A00:I

    if-lez v0, :cond_0

    .line 42609
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LR;->A00()V

    .line 42610
    :cond_0
    return-void
.end method

.method public final write([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42611
    move v3, p2

    .local p0, "i":I
    :goto_0
    add-int v4, p2, p3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LR;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LR;->A03:[Ljava/lang/String;

    const-string v1, "vRRDkAC7ww5dnR4MiguJ90FB5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "BIleT5EfDSeSU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_2

    .line 42612
    aget-char v1, p1, v3

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/LR;->A00:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LR;->A01:[C

    array-length v0, v1

    if-ne v2, v0, :cond_1

    .line 42613
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LR;->A00()V

    .line 42614
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42615
    :cond_1
    aget-char v0, p1, v3

    aput-char v0, v1, v2

    .line 42616
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LR;->A00:I

    goto :goto_1

    .line 42617
    .end local p0    # "i":I
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
