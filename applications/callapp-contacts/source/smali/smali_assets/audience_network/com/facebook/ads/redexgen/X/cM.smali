.class public final Lcom/facebook/ads/redexgen/X/cM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QL;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;->A04(J)Lcom/facebook/ads/redexgen/X/QL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cM;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;J)V
    .locals 0

    .line 72465
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cM;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x54

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

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cM;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x5et
        0xdt
        0x58t
        0xft
        0x5t
        0x5et
        0xet
        0x5at
        0x5ft
        0xdt
        0xbt
        0x57t
        0xct
        0x9t
        0xet
        0x10t
        0x9t
        0x15t
        0x14t
        0x1ft
        0x22t
        0x39t
        0x3ft
        0x2at
        0x2et
        0x33t
        0x35t
        0x34t
        0x60t
        0x7at
        0x53t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x65t
        0x72t
        0x72t
        0x6ft
        0x72t
        0x20t
        0x6ft
        0x63t
        0x63t
        0x75t
        0x72t
        0x72t
        0x65t
        0x64t
        0x75t
        0x43t
        0x54t
        0x50t
        0x43t
        0x54t
        0x6t
        0x54t
        0x43t
        0x56t
        0x4at
        0x4ft
        0x43t
        0x42t
        0x6t
        0x55t
        0x53t
        0x45t
        0x45t
        0x43t
        0x55t
        0x55t
        0x40t
        0x53t
        0x4at
        0x4at
        0x5ft
        0x13t
        0x12t
        0x3ft
        0x13t
        0x11t
        0xct
        0x10t
        0x19t
        0x8t
        0x19t
        0x3dt
        0x3ct
        0x17t
        0x20t
        0x20t
        0x3dt
        0x20t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/QX;)V
    .locals 13

    .line 72466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A02(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/KB;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KA;->A07(Lcom/facebook/ads/redexgen/X/KB;)V

    .line 72467
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QX;->A00()Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    .line 72468
    .local p0, "response":Lcom/facebook/ads/redexgen/X/QJ;
    if-eqz v0, :cond_1

    .line 72469
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A5i()Ljava/lang/String;

    move-result-object v4

    .line 72470
    .local v0, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    .line 72471
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A03(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A08(Lcom/facebook/ads/redexgen/X/KE;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/KF;->A06(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/KH;

    move-result-object v2

    .line 72472
    .local p1, "serverResponse":Lcom/facebook/ads/redexgen/X/KH;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KH;->A01()Lcom/facebook/ads/redexgen/X/KG;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KG;->A03:Lcom/facebook/ads/redexgen/X/KG;

    if-ne v1, v0, :cond_1

    .line 72473
    check-cast v2, Lcom/facebook/ads/redexgen/X/cQ;

    .line 72474
    .local v0, "serverResponseError":Lcom/facebook/ads/redexgen/X/cQ;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cQ;->A04()Ljava/lang/String;

    move-result-object v3

    .line 72475
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cQ;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 72476
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 72477
    .local v4, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    if-nez v3, :cond_0

    .line 72478
    .local v0, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 72479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    .line 72480
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A00(Lcom/facebook/ads/redexgen/X/KE;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v6

    .line 72481
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v8

    .line 72482
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v10

    .line 72483
    move-object v9, v4

    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 72484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v2, v4}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V

    goto :goto_1

    .line 72485
    :cond_0
    move-object v4, v3

    goto :goto_0

    .line 72486
    :goto_1
    return-void
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72487
    .end local p0    # "response":Lcom/facebook/ads/redexgen/X/QJ;
    .end local p1    # "serverResponse":Lcom/facebook/ads/redexgen/X/KH;
    .end local v0    # "finalErrMessage":Ljava/lang/String;
    .end local v0
    .end local v0
    .end local v4    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v0
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 72488
    .local p0, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QX;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 72489
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 72490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    .line 72491
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A00(Lcom/facebook/ads/redexgen/X/KE;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v4

    .line 72492
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 72493
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 72494
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 72495
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 72496
    return-void

    .line 72497
    .end local p0    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 72498
    .local p0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 72499
    .local p1, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QX;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 72500
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 72501
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    .line 72502
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A00(Lcom/facebook/ads/redexgen/X/KE;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v8

    .line 72503
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0xf

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72504
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 72505
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v12

    .line 72506
    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 72507
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 72508
    return-void
.end method


# virtual methods
.method public final A9m(Lcom/facebook/ads/redexgen/X/QJ;)V
    .locals 5

    const/16 v2, 0x4f

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x34

    const/16 v1, 0x1b

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72509
    if-eqz p1, :cond_0

    .line 72510
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/QJ;->A5i()Ljava/lang/String;

    move-result-object v3

    .line 72511
    .local p0, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A02(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/KB;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KA;->A07(Lcom/facebook/ads/redexgen/X/KB;)V

    .line 72512
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:J

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->A0L(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;J)V

    .line 72513
    .end local p0    # "response":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final AA8(Ljava/lang/Exception;)V
    .locals 9

    const/16 v2, 0x59

    const/4 v1, 0x7

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f

    const/16 v1, 0x15

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72514
    const-class v1, Lcom/facebook/ads/redexgen/X/QX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72515
    check-cast p1, Lcom/facebook/ads/redexgen/X/QX;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cM;->A02(Lcom/facebook/ads/redexgen/X/QX;)V

    .line 72516
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/cM;
    .end local v1
    :goto_0
    return-void

    .line 72517
    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 72518
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 72519
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A01(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 72520
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    .line 72521
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A00(Lcom/facebook/ads/redexgen/X/KE;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v4

    .line 72522
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 72523
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 72524
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 72525
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V

    goto :goto_0
.end method
