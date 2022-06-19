.class public final Lcom/facebook/ads/redexgen/X/Sw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KG;->A04(J)Lcom/facebook/ads/redexgen/X/QG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KG;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sw;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sw;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KG;J)V
    .locals 0

    .line 52855
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sw;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x5ft
        0x57t
        0x55t
        0x5t
        0x2t
        0x3t
        0x5ft
        0x40t
        0x59t
        0x45t
        0x44t
        0x4ft
        0x72t
        0x69t
        0x6ft
        0x7at
        0x7et
        0x63t
        0x65t
        0x64t
        0x30t
        0x2at
        0x35t
        0x3t
        0x14t
        0x10t
        0x3t
        0x14t
        0x46t
        0x3t
        0x14t
        0x14t
        0x9t
        0x14t
        0x46t
        0x9t
        0x5t
        0x5t
        0x13t
        0x14t
        0x14t
        0x3t
        0x2t
        0x4et
        0x78t
        0x6ft
        0x6bt
        0x78t
        0x6ft
        0x3dt
        0x6ft
        0x78t
        0x6dt
        0x71t
        0x74t
        0x78t
        0x79t
        0x3dt
        0x6et
        0x68t
        0x7et
        0x7et
        0x78t
        0x6et
        0x6et
        0x7bt
        0x68t
        0x71t
        0x71t
        0x64t
        0x4et
        0x4et
        0x18t
        0x4et
        0x18t
        0x1ct
        0x1ct
        0x3ft
        0x3et
        0x13t
        0x3ft
        0x3dt
        0x20t
        0x3ct
        0x35t
        0x24t
        0x35t
        0x10t
        0x11t
        0x3at
        0xdt
        0xdt
        0x10t
        0xdt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vUQacvUb1jgaOB1nXCILUaEr4ItZ5QEs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ozPzI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iemFS7qx3ItQSdDQeBrvuJ9y9CMkfIqY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EwROMxnfRd6F7268i4EpvPtVg3hQf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qVu8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3RxrE6NsEsLt8TXu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A03:[Ljava/lang/String;

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/QS;)V
    .locals 13

    .line 52856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A02(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/KD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(Lcom/facebook/ads/redexgen/X/KD;)V

    .line 52857
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QS;->A00()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    .line 52858
    .local p0, "response":Lcom/facebook/ads/redexgen/X/QE;
    if-eqz v0, :cond_1

    .line 52859
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QE;->A5i()Ljava/lang/String;

    move-result-object v4

    .line 52860
    .local v0, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52861
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A03(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/KH;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A08(Lcom/facebook/ads/redexgen/X/KG;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/KH;->A06(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/KJ;

    move-result-object v2

    .line 52862
    .local p1, "serverResponse":Lcom/facebook/ads/redexgen/X/KJ;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KJ;->A01()Lcom/facebook/ads/redexgen/X/KI;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/KI;

    if-ne v1, v0, :cond_1

    .line 52863
    check-cast v2, Lcom/facebook/ads/redexgen/X/Ss;

    .line 52864
    .local v0, "serverResponseError":Lcom/facebook/ads/redexgen/X/Ss;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ss;->A04()Ljava/lang/String;

    move-result-object v3

    .line 52865
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ss;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52866
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 52867
    .local v4, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    if-nez v3, :cond_0

    .line 52868
    .local v0, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52870
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(Lcom/facebook/ads/redexgen/X/KG;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v6

    .line 52871
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v8

    .line 52872
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v10

    .line 52873
    move-object v9, v4

    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 52874
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v2, v4}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0H(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V

    goto :goto_1

    .line 52875
    :cond_0
    move-object v4, v3

    goto :goto_0

    .line 52876
    :goto_1
    return-void
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52877
    .end local p0    # "response":Lcom/facebook/ads/redexgen/X/QE;
    .end local p1    # "serverResponse":Lcom/facebook/ads/redexgen/X/KJ;
    .end local v0    # "finalErrMessage":Ljava/lang/String;
    .end local v0
    .end local v0
    .end local v4    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v0
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52878
    .local p0, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QS;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 52879
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52880
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52881
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(Lcom/facebook/ads/redexgen/X/KG;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v4

    .line 52882
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 52883
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 52884
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 52885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0H(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 52886
    return-void

    .line 52887
    .end local p0    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 52888
    .local p0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52889
    .local p1, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QS;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 52890
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52891
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52892
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(Lcom/facebook/ads/redexgen/X/KG;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v8

    .line 52893
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    const/16 v1, 0xf

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52894
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 52895
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v12

    .line 52896
    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 52897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0H(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 52898
    return-void
.end method


# virtual methods
.method public final A9l(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 5

    const/16 v2, 0x4e

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2c

    const/16 v1, 0x1b

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52899
    if-eqz p1, :cond_1

    .line 52900
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/QE;->A5i()Ljava/lang/String;

    move-result-object v3

    .line 52901
    .local p0, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A02(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/KD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(Lcom/facebook/ads/redexgen/X/KD;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52902
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A03:[Ljava/lang/String;

    const-string v1, "kblvpkFa8oUK1ItVGqcsW93nH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:J

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/KG;->A0K(Lcom/facebook/ads/redexgen/X/KG;Ljava/lang/String;J)V

    .line 52903
    .end local p0    # "response":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final AA7(Ljava/lang/Exception;)V
    .locals 9

    const/16 v2, 0x58

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x17

    const/16 v1, 0x15

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x47

    const/4 v1, 0x7

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52904
    const-class v1, Lcom/facebook/ads/redexgen/X/QS;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52905
    check-cast p1, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sw;->A03(Lcom/facebook/ads/redexgen/X/QS;)V

    .line 52906
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sw;
    .end local v1
    :goto_0
    return-void

    .line 52907
    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52908
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 52909
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52910
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52911
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(Lcom/facebook/ads/redexgen/X/KG;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v4

    .line 52912
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 52913
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 52914
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 52915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0H(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V

    goto :goto_0
.end method
