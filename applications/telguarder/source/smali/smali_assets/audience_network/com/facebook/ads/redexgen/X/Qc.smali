.class public abstract enum Lcom/facebook/ads/redexgen/X/Qc;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JsonObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Qc;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/Qc;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/Qc;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/Qc;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/Qc;

.field public static final enum A06:Lcom/facebook/ads/redexgen/X/Qc;

.field public static final enum A07:Lcom/facebook/ads/redexgen/X/Qc;

.field public static final enum A08:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 49465
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A04()V

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GA;

    invoke-direct {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/GA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    .line 49466
    const/4 v7, 0x1

    const/4 v2, 0x5

    const/4 v1, 0x7

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/G9;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/G9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A04:Lcom/facebook/ads/redexgen/X/Qc;

    .line 49467
    const/4 v6, 0x2

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/G8;

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/redexgen/X/G8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A05:Lcom/facebook/ads/redexgen/X/Qc;

    .line 49468
    const/4 v5, 0x3

    const/16 v2, 0x12

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/G7;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/G7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A06:Lcom/facebook/ads/redexgen/X/Qc;

    .line 49469
    const/4 v4, 0x4

    const/16 v2, 0x15

    const/4 v1, 0x6

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/G6;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/G6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A07:Lcom/facebook/ads/redexgen/X/Qc;

    .line 49470
    const/4 v3, 0x5

    const/16 v2, 0x1b

    const/4 v1, 0x6

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/G5;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/G5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A08:Lcom/facebook/ads/redexgen/X/Qc;

    .line 49471
    const/4 v0, 0x6

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/Qc;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    aput-object v0, v1, v8

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A04:Lcom/facebook/ads/redexgen/X/Qc;

    aput-object v0, v1, v7

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A05:Lcom/facebook/ads/redexgen/X/Qc;

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A06:Lcom/facebook/ads/redexgen/X/Qc;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A07:Lcom/facebook/ads/redexgen/X/Qc;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A08:Lcom/facebook/ads/redexgen/X/Qc;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Lcom/facebook/ads/redexgen/X/Qc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Qb;)V
    .locals 0

    .line 49473
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Qc;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A01(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/Qc;
    .locals 7

    .line 49474
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->values()[Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v6, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49475
    .local v5, "type":Lcom/facebook/ads/redexgen/X/Qc;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A01:[Ljava/lang/String;

    const-string v1, "tSTzibjLEZmnKLeJSBWWFmo8ABKhWaoK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/Qc;->A06(Lorg/json/JSONArray;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49476
    return-object v3

    .line 49477
    .end local v5    # "type":Lcom/facebook/ads/redexgen/X/Qc;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49478
    :cond_2
    const/16 v2, 0x21

    const/16 v1, 0x1f

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static A02(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Qc;
    .locals 7

    .line 49479
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->values()[Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v6, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 49480
    .local v5, "type":Lcom/facebook/ads/redexgen/X/Qc;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A01:[Ljava/lang/String;

    const-string v1, "zRruk8gFetbjQnDa2F20MljfYBQnm1P6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/Qc;->A08(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49481
    return-object v3

    .line 49482
    .end local v5    # "type":Lcom/facebook/ads/redexgen/X/Qc;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49483
    :cond_2
    const/16 v2, 0x21

    const/16 v1, 0x1f

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x27t
        0x27t
        0x34t
        0x2ct
        0x47t
        0x6at
        0x6at
        0x69t
        0x60t
        0x64t
        0x6bt
        0x66t
        0x4dt
        0x57t
        0x40t
        0x4et
        0x47t
        0x69t
        0x4et
        0x54t
        0x5ft
        0x72t
        0x7at
        0x75t
        0x73t
        0x64t
        0x2et
        0x9t
        0xft
        0x14t
        0x13t
        0x1at
        0x5et
        0x65t
        0x60t
        0x65t
        0x64t
        0x7ct
        0x65t
        0x2bt
        0x7ft
        0x72t
        0x7bt
        0x6et
        0x2bt
        0x64t
        0x6dt
        0x2bt
        0x61t
        0x78t
        0x64t
        0x65t
        0x2bt
        0x64t
        0x69t
        0x61t
        0x6et
        0x68t
        0x7ft
        0x2bt
        0x60t
        0x6et
        0x72t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tECI8EX1cuXhUwYvYft6TDcXrBYDxzmb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "U9lWMC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VeFVBuimOKBZ6IhnkHNGVdQ2rus8nhqD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5Ss9iINs1N203h8UwVdzTm0B7XXAo0aC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SEbmC0K2IQ7flaHMYhUIDNtJoPD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aE6Std6il1HEkTA4be5XQZw6wdO2x4l2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oc9eC60MpRTSk1JwhF2h3JFaDWGSLdec"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vmvIsg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Qc;
    .locals 1

    .line 49484
    const-class v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Qc;
    .locals 1

    .line 49485
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/Qc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Qc;

    return-object v0
.end method


# virtual methods
.method public abstract A06(Lorg/json/JSONArray;I)Z
.end method

.method public abstract A07(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z
.end method

.method public abstract A08(Lorg/json/JSONObject;Ljava/lang/String;)Z
.end method

.method public abstract A09(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
.end method
