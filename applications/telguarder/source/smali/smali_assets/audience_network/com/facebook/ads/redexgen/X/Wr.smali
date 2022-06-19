.class public final Lcom/facebook/ads/redexgen/X/Wr;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Wq;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wq;

.field public final synthetic A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wr;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wq;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 64692
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wr;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x2ct
        0x2et
        0x33t
        0x30t
        -0x15t
        0x31t
        0x2ct
        0x34t
        0x37t
        -0x7t
        -0x6et
        -0x50t
        -0x4et
        -0x49t
        -0x4ct
        0x6ft
        -0x3et
        -0x3ct
        -0x4et
        -0x4et
        -0x4ct
        -0x3et
        -0x3et
        0x7dt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 9

    .line 64693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/75;

    if-eqz v0, :cond_0

    .line 64694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0G:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0G(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 64696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 64697
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/76;

    sget v5, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 64698
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7D;)J

    move-result-wide v7

    .line 64699
    const/16 v2, 0xb

    const/16 v1, 0xe

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7G;->A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/76;ILjava/lang/String;J)V

    .line 64700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0S()V

    .line 64701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/75;->A9n()V

    .line 64702
    :cond_0
    :goto_0
    return-void

    .line 64703
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0F:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0G(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 64704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 64705
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/76;

    sget v5, Lcom/facebook/ads/redexgen/X/7G;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 64706
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7D;)J

    move-result-wide v7

    .line 64707
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7G;->A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/76;ILjava/lang/String;J)V

    .line 64708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0T()V

    .line 64709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/75;->A9g()V

    goto :goto_0
.end method
