.class public final Lcom/facebook/ads/redexgen/X/Sk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupingLineProcessor"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:I

.field public A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/LQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sk;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LQ;)V
    .locals 0

    .line 52764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52765
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sk;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    .line 52766
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sk;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 5

    .line 52767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52768
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sk;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 52769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:Ljava/lang/String;

    .line 52770
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    .line 52771
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sk;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5dt
        -0x5dt
        -0x6bt
        -0x68t
    .end array-data
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 3

    .line 52772
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LS;->A0C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52773
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sk;->A01()V

    .line 52774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 52775
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sk;
    :goto_0
    return-void

    .line 52776
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LS;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52777
    .local p0, "filtered":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 52778
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    goto :goto_0

    .line 52779
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sk;->A01()V

    .line 52780
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Sk;->A01:Ljava/lang/String;

    .line 52781
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 52782
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sk;->A01()V

    .line 52783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->flush()V

    .line 52784
    return-void
.end method
