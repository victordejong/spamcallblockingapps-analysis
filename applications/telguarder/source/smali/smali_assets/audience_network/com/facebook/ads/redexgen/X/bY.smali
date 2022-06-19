.class public final Lcom/facebook/ads/redexgen/X/bY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1s;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1r;

.field public A01:Lcom/facebook/ads/redexgen/X/1r;

.field public final A02:Lcom/facebook/ads/redexgen/X/bV;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bY;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bY;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/bV;)V
    .locals 1

    .line 69718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69719
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 69720
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    .line 69721
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69722
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bY;->A02:Lcom/facebook/ads/redexgen/X/bV;

    .line 69723
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bY;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

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
    .locals 4

    const/16 v0, 0xed

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    const-string v1, "uHXyGv91YS5AZybwuzmh7pK9ZkTxCxly"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aSclBZwoH94XlBt4xX3FAXD0bzJVnGEs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/bY;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x29t
        0x32t
        0x7dt
        0xct
        0x2t
        0x7bt
        0x4dt
        0x57t
        0x2t
        0x41t
        0x43t
        0x4ct
        0x2t
        0x41t
        0x4at
        0x43t
        0x4ct
        0x45t
        0x47t
        0x2t
        0x6bt
        0x4ct
        0x56t
        0x47t
        0x45t
        0x50t
        0x43t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x67t
        0x50t
        0x50t
        0x4dt
        0x50t
        0x2t
        0x4ft
        0x4dt
        0x46t
        0x47t
        0x2t
        0x40t
        0x5bt
        0x2t
        0x51t
        0x47t
        0x56t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x2t
        0x63t
        0x46t
        0x71t
        0x47t
        0x56t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x51t
        0xct
        0x51t
        0x47t
        0x56t
        0x6bt
        0x4ct
        0x56t
        0x47t
        0x45t
        0x50t
        0x43t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x67t
        0x50t
        0x50t
        0x4dt
        0x50t
        0x6ft
        0x4dt
        0x46t
        0x47t
        0xat
        0xbt
        0x25t
        0x21t
        0x22t
        0x16t
        0x7t
        0xat
        0x6t
        0xdt
        0x0t
        0x6t
        0x2dt
        0x6t
        0x17t
        0x14t
        0xct
        0x11t
        0x8t
        0x41t
        0x75t
        0x68t
        0x6at
        0x27t
        0x5at
        0x7ft
        0x62t
        0x63t
        0x6at
        0x2dt
        0x64t
        0x63t
        0x79t
        0x68t
        0x7ft
        0x63t
        0x6ct
        0x61t
        0x2dt
        0x79t
        0x7ft
        0x6ct
        0x63t
        0x7et
        0x64t
        0x79t
        0x64t
        0x62t
        0x63t
        0x23t
        0x7dt
        0x6ct
        0x75t
        0x6at
        0x69t
        0x67t
        0x62t
        0x2et
        0x2ft
        0x79t
        0x62t
        0x65t
        0x7dt
        0x22t
        0x23t
        0x78t
        0x64t
        0x6dt
        0x78t
        0x2ct
        0x65t
        0x7ft
        0x2ct
        0x6dt
        0x60t
        0x7et
        0x69t
        0x6dt
        0x68t
        0x75t
        0x2ct
        0x40t
        0x43t
        0x4dt
        0x48t
        0x45t
        0x42t
        0x4bt
        0x20t
        0x2ct
        0x40t
        0x43t
        0x4dt
        0x48t
        0x49t
        0x48t
        0x2ct
        0x63t
        0x7et
        0x2ct
        0x5ft
        0x44t
        0x43t
        0x5bt
        0x45t
        0x42t
        0x4bt
        0x7bt
        0x67t
        0x6et
        0x7bt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x6et
        0x63t
        0x7dt
        0x6at
        0x6et
        0x6bt
        0x76t
        0x2ft
        0x5ct
        0x47t
        0x40t
        0x58t
        0x46t
        0x41t
        0x48t
        0x79t
        0x65t
        0x6ct
        0x79t
        0x2dt
        0x64t
        0x7et
        0x2dt
        0x63t
        0x62t
        0x79t
        0x2dt
        0x41t
        0x42t
        0x4ct
        0x49t
        0x48t
        0x49t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LqS4Vpkhy9E"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ge1EwIuJY0TovlYE8lSK4ibgoBpAWn9a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g9aMV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tM0yo6k6wg7fwB8A5Xyw1gAw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QSFbFVun0ml7C8TY77Vqi1TYUccnWCEL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t0vPMbYvCUeZJjWwsMbVoEbKc6G6LcPD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iAyfyMUWIOpY9gjOpihEXzDIF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NOfvqhzewpei8jQqPEPmMqHVwiKNDwof"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/1r;Lcom/facebook/ads/redexgen/X/1r;)V
    .locals 8

    .line 69724
    const/16 v2, 0x71

    const/16 v1, 0x1a

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v7

    .line 69725
    .local p0, "errorTitle":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6c

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69726
    .local p1, "errorBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69727
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0T:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v7, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69728
    const/16 v2, 0x8b

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEs(Ljava/lang/String;)V

    .line 69730
    return-void
.end method

.method private A04(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 69731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69732
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1o;->A00(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    move-result-object v8

    .line 69733
    .local p0, "integrationErrorMode":Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_API_CALL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69734
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v7, 0x1

    aput-object p2, v1, v7

    .line 69735
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 69736
    .local p1, "errorMessage":Ljava/lang/String;
    const/16 v2, 0x8b

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x5b

    const/16 v1, 0x11

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_0

    .line 69737
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69738
    new-instance v2, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69739
    .local p3, "deException":Lcom/facebook/ads/redexgen/X/8f;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69740
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A0R:I

    .line 69741
    invoke-interface {v1, v5, v0, v2}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/0R;->AEr(Ljava/lang/String;)V

    .line 69743
    return-void

    .line 69744
    .end local p3    # "deException":Lcom/facebook/ads/redexgen/X/8f;
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/1q;->A00:[I

    invoke-virtual {v8}, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    .line 69745
    .end local p3
    :goto_0
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69746
    return-void

    .line 69747
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A02:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bV;->A06()V

    .line 69748
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A02:Lcom/facebook/ads/redexgen/X/bV;

    const/16 v1, 0xa

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_STATE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/bV;->A07(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 69749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/0R;->AEr(Ljava/lang/String;)V

    .line 69750
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69751
    new-instance v2, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69752
    .restart local p3    # "deException":Lcom/facebook/ads/redexgen/X/8f;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69753
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A0R:I

    .line 69754
    invoke-interface {v1, v5, v0, v2}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0

    .line 69755
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/16 v1, 0x57

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1t;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1t;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A5E()Z
    .locals 7

    .line 69756
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/redexgen/X/1r;

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/1r;

    if-eq v1, v0, :cond_3

    const/4 v4, 0x1

    .line 69757
    .local p0, "canMoveToState":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 69758
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A06:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 69759
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 69760
    :cond_2
    const/16 v2, 0x8e

    const/4 v1, 0x6

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9a

    const/16 v1, 0x2a

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/bY;->A04(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 69761
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final A5F()Z
    .locals 9

    .line 69762
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A05:Lcom/facebook/ads/redexgen/X/1r;

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/1r;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69763
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v7, 0x1

    .line 69764
    .local p0, "canMoveToState":Z
    :goto_0
    if-eqz v7, :cond_2

    .line 69765
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 69766
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    .line 69767
    :goto_1
    if-nez v7, :cond_1

    :goto_2
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 69768
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v5, Lcom/facebook/ads/redexgen/X/1r;->A05:Lcom/facebook/ads/redexgen/X/1r;

    const/16 v2, 0x94

    const/4 v1, 0x6

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-eq v6, v5, :cond_4

    .line 69769
    const/16 v5, 0xdb

    sget-object v1, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    const-string v1, "6z8KVyezxhCmjE96dV72kpnudJHGcNRx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "cSq72OLujKZnAVyvPQwA3qgqlkhAZjBt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x12

    const/16 v0, 0x2c

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/bY;->A04(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 69770
    :cond_4
    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v8}, Lcom/facebook/ads/redexgen/X/bY;->A04(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 69771
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public final A5W()Lcom/facebook/ads/redexgen/X/1r;
    .locals 1

    .line 69772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    return-object v0
.end method

.method public final ADh(Lcom/facebook/ads/redexgen/X/1r;)V
    .locals 0

    .line 69773
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 69774
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    .line 69775
    return-void
.end method

.method public final ADk(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 69776
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 69777
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    .line 69778
    return-void
.end method

.method public final ADo()V
    .locals 4

    .line 69779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A06:Lcom/facebook/ads/redexgen/X/1r;

    if-eq v1, v0, :cond_0

    .line 69780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A05:Lcom/facebook/ads/redexgen/X/1r;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A03(Lcom/facebook/ads/redexgen/X/1r;Lcom/facebook/ads/redexgen/X/1r;)V

    .line 69781
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/1r;->A05:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A05:[Ljava/lang/String;

    const-string v1, "0CQ8O9HdNp0eBnIGd0pIqA2Cb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "A9QPt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 69782
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADu()V
    .locals 2

    .line 69783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/1r;

    if-eq v1, v0, :cond_0

    .line 69784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A08:Lcom/facebook/ads/redexgen/X/1r;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A03(Lcom/facebook/ads/redexgen/X/1r;Lcom/facebook/ads/redexgen/X/1r;)V

    .line 69785
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A08:Lcom/facebook/ads/redexgen/X/1r;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:Lcom/facebook/ads/redexgen/X/1r;

    .line 69786
    return-void
.end method
