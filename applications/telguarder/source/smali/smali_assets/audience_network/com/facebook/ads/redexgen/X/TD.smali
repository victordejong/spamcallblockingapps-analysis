.class public final Lcom/facebook/ads/redexgen/X/TD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T6;->A0f(Lcom/facebook/ads/redexgen/X/c9;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/c9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/T6;

.field public final synthetic A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TD;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TD;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/c9;Z)V
    .locals 0

    .line 53767
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/redexgen/X/c9;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TD;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2d

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TD;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x65t
        -0x4at
        -0x42t
        -0x3ft
        -0x46t
        -0x47t
        0x75t
        -0x37t
        -0x3ct
        0x75t
        -0x47t
        -0x3ct
        -0x34t
        -0x3dt
        -0x3ft
        -0x3ct
        -0x4at
        -0x47t
        0x75t
        -0x4at
        0x75t
        -0x3et
        -0x46t
        -0x47t
        -0x42t
        -0x4at
        -0x7dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C6g2qDBb0kk5vTdmeqgdlhcGeW13C2Qn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tvsxYcDq6v5uv4oj6IIhtFsW3M2K09T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gFFZcgpGxLzkWezkViXQSPnrqg0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "otYCJvOR0XRFTpEop6wWUMXaTNeoA0ME"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZSCaANSyvynmgu12"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NNLZ4n3wIaB3EmfteXKmivLLQsvRdgK4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2X8YgJ1oPKbV47JGDv5Pa4eNGWgFY7ZF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fXI1eQgXPLYPGFWjqG37IM5wZs84bEee"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TD;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9g()V
    .locals 6

    .line 53768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T6;->A0Y:Lcom/facebook/ads/redexgen/X/c9;

    if-eqz v0, :cond_0

    .line 53769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T6;->A0Y:Lcom/facebook/ads/redexgen/X/c9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c9;->A0Y()V

    .line 53770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/T6;->A0Y:Lcom/facebook/ads/redexgen/X/c9;

    .line 53771
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 53772
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TD;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 53773
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0G(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 53774
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    .line 53775
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A04(Lcom/facebook/ads/redexgen/X/T6;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 53776
    invoke-interface {v3, v1, v2, v0, v4}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 53777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 53779
    :cond_1
    return-void
.end method

.method public final A9n()V
    .locals 4

    .line 53780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/redexgen/X/c9;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/T6;->A0Y:Lcom/facebook/ads/redexgen/X/c9;

    .line 53781
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/T6;->A0F(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Ez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0F(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Ez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0H()V

    .line 53783
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0H(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/JU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JU;->A04:Lcom/facebook/ads/redexgen/X/JU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0w(Lcom/facebook/ads/redexgen/X/T6;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A04:[Ljava/lang/String;

    const-string v1, "of7NrxLpeGOq8e5i9NIKyvSylRkiVokx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nKs76ixdICJWI98E7WrM625FaaMCKiyR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/T5;->AAm()V

    .line 53786
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Z

    if-eqz v0, :cond_2

    .line 53787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A9N()V

    .line 53788
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
