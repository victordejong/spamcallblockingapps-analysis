.class public final Lcom/facebook/ads/redexgen/X/Xq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xs;->A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Xs;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xq;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xq;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xs;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 58139
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A01:Lcom/facebook/ads/redexgen/X/Xs;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xq;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xq;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xq;->A03:[Ljava/lang/String;

    const-string v1, "QX0n3XV94OfUIkrY3aQ1mnz4DOZRMjum"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ub6cBxCWynk8j8mrWTDov9XVsshwREvV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xq;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x68t
        -0x51t
        -0x40t
        -0x5at
        -0x69t
        -0x3at
        -0x41t
        -0x41t
        -0x4at
        -0x43t
        0x73t
        -0x5et
        -0x65t
        -0x65t
        -0x6et
        -0x67t
        0x67t
        0x4dt
        -0x69t
        -0x5at
        -0x44t
        -0x76t
        -0x45t
        -0x56t
        -0x4dt
        -0x47t
        -0x5ct
        -0x43t
        -0x34t
        -0x3bt
        -0x3bt
        -0x44t
        -0x3dt
        -0x62t
        -0x53t
        -0x5at
        -0x5at
        -0x63t
        -0x5ct
        -0x69t
        -0x5ct
        -0x59t
        -0x61t
        -0x61t
        -0x63t
        -0x64t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FR0EinKvOwZW2VlEpgnoVwKXeBc9ct8J"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K05aYFgFk0t0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VOug37Y7l3ssOOXSbUnGxFzsx4hRn8wv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "z2uzga85Ski18P7nLebJhENF02V63SxL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vQZIRiGCHJjFTe4gMXvJZpLaPtvEk1p8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "auy2W0sk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2337kXImyPAg9HB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xq;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A03(ILjava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 6

    .line 58140
    const/4 v2, 0x4

    const/4 v1, 0x6

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 58141
    .local p0, "event":Lcom/facebook/ads/redexgen/X/8f;
    invoke-virtual {v5, p3}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 58142
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 58143
    invoke-virtual {v5, p4}, Lcom/facebook/ads/redexgen/X/8f;->A07(Z)V

    .line 58144
    :try_start_0
    const/16 v2, 0x21

    const/16 v1, 0xd

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0I(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58145
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 58146
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    add-int/lit16 v3, p1, 0xfa0

    .line 58147
    const/16 v2, 0x1b

    const/4 v1, 0x6

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8W(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 58148
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x8

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58150
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58151
    :cond_0
    return-void
.end method


# virtual methods
.method public final A8X(Lcom/facebook/ads/redexgen/X/0T;Lorg/json/JSONObject;)V
    .locals 3

    .line 58152
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xs;->A08:[Lcom/facebook/ads/redexgen/X/0T;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    .line 58153
    .local p0, "isCoreEvent":Z
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0T;->A02()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0T;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/Xq;->A03(ILjava/lang/String;Lorg/json/JSONObject;Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xq;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58154
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 58155
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xq;->A03:[Ljava/lang/String;

    const-string v1, "V18ABcIrH30Drbb4OI30ypEDFjLWp4Lj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method

.method public final A8i(ILorg/json/JSONObject;)V
    .locals 4

    .line 58156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Xq;->A03(ILjava/lang/String;Lorg/json/JSONObject;Z)V

    .line 58157
    return-void
.end method
