.class public final Lcom/facebook/ads/redexgen/X/WP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WN;->A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;
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

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WP;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WP;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 64340
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:Lcom/facebook/ads/redexgen/X/WN;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/WP;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A03:[Ljava/lang/String;

    const-string v1, "bK8qFx3V4aI3YuU6Byq8I961tUVll2T"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_2

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1a

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A03:[Ljava/lang/String;

    const-string v1, "W6K7LZfpMSw9guKXWHyQ1hzCrUt1zccD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "aP08IZGSfwS7vSxu15YvNU7looxChWNv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A03:[Ljava/lang/String;

    const-string v1, "M7QW2ZzVScetj7K6Eb5G7S1pDGTcu6Z7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "GAldvZt5wockrymfwaZhlEbsy0r0Gc83"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WP;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x7at
        0x71t
        -0x7et
        0x68t
        -0x6bt
        -0x3ct
        -0x43t
        -0x43t
        -0x4ct
        -0x45t
        -0x79t
        -0x4at
        -0x51t
        -0x51t
        -0x5at
        -0x53t
        0x7bt
        0x61t
        -0x2dt
        -0x1et
        -0x8t
        -0x3at
        -0x9t
        -0x1at
        -0x11t
        -0xbt
        -0x20t
        -0x3ft
        -0x30t
        -0x37t
        -0x37t
        -0x40t
        -0x39t
        -0x1bt
        -0xct
        -0x13t
        -0x13t
        -0x1ct
        -0x15t
        -0x22t
        -0x15t
        -0x12t
        -0x1at
        -0x1at
        -0x1ct
        -0x1dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T6ruQieksmQ659XtZdx1pNuf8BkEUOGB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "D5qACGtuswwYAX2j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tisA3Zox8tXO52HvB1xGKwO7S9JDFrtW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oXpW0D1UJMXIs5NE62vnqdJQjW4zsx7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GqipIek5vQZcBUehtdXCBmiJygk1D7Hq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HiRd06n3L0AhKHxDU3roiGC2fPuuIVv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9irJZZvg7XTReviCfzkp43Kl9QkPO7yp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Sh8wfh7CqKTt9qJmyW74B1cGMGzpUwxO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WP;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A03(ILjava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 6

    .line 64341
    const/4 v2, 0x4

    const/4 v1, 0x6

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 64342
    .local p0, "event":Lcom/facebook/ads/redexgen/X/8f;
    invoke-virtual {v5, p3}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 64343
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 64344
    invoke-virtual {v5, p4}, Lcom/facebook/ads/redexgen/X/8f;->A07(Z)V

    .line 64345
    :try_start_0
    const/16 v2, 0x21

    const/16 v1, 0xd

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0I(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64346
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 64347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    add-int/lit16 v3, p1, 0xfa0

    .line 64348
    const/16 v2, 0x1b

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 64349
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64351
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64352
    :cond_0
    return-void
.end method


# virtual methods
.method public final A8Z(Lcom/facebook/ads/redexgen/X/0T;Lorg/json/JSONObject;)V
    .locals 3

    .line 64353
    sget-object v0, Lcom/facebook/ads/redexgen/X/WN;->A09:[Lcom/facebook/ads/redexgen/X/0T;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    .line 64354
    .local p0, "isCoreEvent":Z
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0T;->A02()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0T;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/WP;->A03(ILjava/lang/String;Lorg/json/JSONObject;Z)V

    .line 64355
    return-void

    .line 64356
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final A8k(ILorg/json/JSONObject;)V
    .locals 4

    .line 64357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/WP;->A03(ILjava/lang/String;Lorg/json/JSONObject;Z)V

    .line 64358
    return-void
.end method
